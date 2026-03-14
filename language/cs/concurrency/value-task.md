# `struct ValueTask<T>`

If a function only run asynchronously in some cases, then it can return value
tasks , which can wrap a simple value (thus avoid allocations, and execute
synchronously), a task object or an implementation of `IValueTaskSource`

- Value task can be used as the return type of an async method
- Value tasks can be awaited as regular tasks

## `interface IValueTaskSource`

When a value task function runs **asynchronously and cannot be run in
parallel**, then it can return a shared implementation of `IValueTaskSource`.

With the await model, any asynchronous task require a heap object to return
result, status and execute the completion handler. A nbject that conform to this
interface can be used as this kind of heap object, and if it is shared, then
there is no additional allocation that needs to be done.

## Consumption Pattern for Value Tasks

THe safest pattern is just `await` a value task only once. The followings should
never be done on value tasks

- Await a value task multiple times
- Await a value task concurrently: underlying object expect a single callback
  from a single consumer at a time
- Use `GetAwaiter().GetResult()` when the operation has not completed: value
  task sources may not implement blocking

Instead, use `AsTask()` method to get a task which supports these operations
