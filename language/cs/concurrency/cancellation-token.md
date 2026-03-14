# Cancellation Token

Cancellation tokens provides a mean to cancel an ongoing task, from places
outside the task.

- Cancellation tokens are provided by cancellation token sources
- To cancel cancellation tokens, used `CancellationTokenSource.Cancel(this)`
  method

# Cancellable Tasks

When a token **source** is canceled,

- `IsCancellationRequested` property would return true
- `CancellationToken.ThrowIfCancellationRequested(this)` would throw a
  `OperationCanceledException` if the method is called

## Status

### Canceled

When user code of a task observes

- Throwings of `OperationCanceledException` and the token on the exception
  instance is the same token given the task when it is created
- `IsCancellationRequested` returns true

the task would cancel and then transition to a `Canceled` status

### Faulted

When an instance of `OperationCanceledException` is thrown, and one of the
following conditinos matches

- `IsCancellationRequested` property returns false
- If the exception's token does not match the Task's token

then the instance of `OperationCanceledException` is treated like a normal
exception and the task trnsitions to a `Faulted` status

## Waiting and Cancelling

If a task that was just canceled is being waited on, then

- `System.Threading.Tasks.TaskCanceledException` is thrown
- The task has a canceled status
- `Exception` property of a task is null
