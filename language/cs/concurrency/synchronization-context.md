# Synchronization Context

- If `SynchronizationContext.Current` is not null, then after `await`, the rest
  of the function would be run using `context.Post(...)`
  - `SynchronizationContext.Current` is **thread local**
  - Set the current thread's context using
    `SynchronizationContext.SetSynchronizationContext(context)`
- If the current context is null, the rest of the function would continue on
  whereever the `await` is run

## Environments

- GUI frameworks or Game Engines for C# typically set `Synchronization.Current`
  to a custom implementation that run `context.Post(...)` on a UI thread

## References

- [Await, SynchronizationContext, and Console Apps](https://devblogs.microsoft.com/pfxteam/await-synchronizationcontext-and-console-apps/)
- [Parallel Computing - It's All About the SynchronizationContext](https://docs.microsoft.com/en-us/archive/msdn-magazine/2011/february/msdn-magazine-parallel-computing-it-s-all-about-the-synchronizationcontext)

# Example

```cs
using System;
using System.Collections.Concurrent;
using System.Threading;
using System.Threading.Tasks;

namespace CS
{
  public class EventLoopContext : SynchronizationContext
  {
    private struct Item
    {
      public SendOrPostCallback Callback;
      public object? State;
    }

    public bool Ends
    {
      get => _ends == 1;
      set
      {
        Interlocked.Exchange(ref _ends, value == true ? 1 : 0);
      }
    }

    private int _ends = 0;
    private ConcurrentQueue<Item> _items = new ConcurrentQueue<Item>();

    public override void Post(SendOrPostCallback d, object? state)
    {
      _items.Enqueue(new Item { Callback = d, State = state });
    }

    public override void Send(SendOrPostCallback d, object? state)
    {
      throw new NotImplementedException();
    }

    /// <summary>
    /// Kick start the event loop
    /// </summary>
    /// <param name="callback">
    /// a callback that would populate the event loop
    /// </param>
    public void Start(Func<Task> callback)
    {
      Task task = callback();

      task.GetAwaiter().OnCompleted(() => { Ends = true; });

      while (_items.Count != 0 || !Ends)
      {
        if (_items.TryDequeue(out Item result))
        {
          result.Callback(result.State);
        }
      }
    }
  }

  public class Program
  {
    static void PrintThreadID()
    {
      Console.WriteLine("Thread ID = {0}", Thread.CurrentThread.ManagedThreadId);
    }

    static void Main(string[] args)
    {
      var context = new EventLoopContext();
      SynchronizationContext.SetSynchronizationContext(context);

      context.Start(async () =>
      {
        PrintThreadID();

        await Task.Delay(1000);
        await Task.Run(() => { PrintThreadID(); });
        await Task.Delay(1000);

        PrintThreadID();
      });
    }
  }
}

```
