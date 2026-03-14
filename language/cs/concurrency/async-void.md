# `async void`

- Callers of `async void` functions do not know they are async.
- Async void is designed to be used as event handlers, and should be avoided in
  all other situations.

## Avoid `async void`

1. Async void does not capture errors in a task object. Instead, it capture
   errors on a `SynchronizationContext`
2. Multiple async voids cannot be composed easily; there is no way for the
   caller to know that they have finished
3. Async void are hard to test, becaseu of how it handles error. Testing using a
   custom `SynchronizationContext` is possible

# Resources

- [Best Practices in Async](https://docs.microsoft.com/en-us/archive/msdn-magazine/2013/march/async-await-best-practices-in-asynchronous-programming)
