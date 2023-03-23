# Custom Awaitable

For a type to be awaitable, it must contains

- `GetAwaiter()` that returns an awaiter.

The awaiter must

- Implement `System.Runtime.CompilerServices.INotifyCompletion`
  - `void OnCompleted(Action continuation)` that registers the `continuation`
    callback when the waiting finishes
- Contains `bool IsCompleted { get }`: set to true when the await has finished
- Contains `T GetResult()`: get the result after the await finishes

```cs
using System;
using System.Runtime.CompilerServices;

public class MyAwaitable
{
  public class Awaiter : INotifyCompletion
  {
    public bool IsCompleted { get; set; } = true;

    /// <summary>
    /// Needs to fire when the task is done
    /// </summary>
    private Action _continuation = () => {};

    public int GetResult() { return 17; }

    public void OnCompleted(Action continuation)
    {
      _continuation = continuation
    }
  }

  public Awaiter GetAwaiter()
  {
    return new Awaiter();
  }
}
```
