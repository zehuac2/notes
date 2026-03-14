# Overview

- Synchronization primitives:
  - `System.Threading.Barrier`
  - `System.Threading.ReaderWriterLockSlim` (prefered over `Semaphore`)
  - `System.Threading.ReaderWriterLock`
  - `System.Threading.SemaphoreSlim` (prefered over `Semaphore`)
  - `System.Threading.Semaphore`
  - `System.Threading.AsyncLocal<T>`
  - `System.Threading.Interlocked`
- Concurrent data structures
  - `System.Collections.Concurrent.*`

# Best Practices

- Avoid using locks and blocking in thread pools; use synchronization primitives
  with async functions like `SemaphoreSlim`, concurrent collections, or atomic
  operations in `Interlocked`

# Resources

- [Async Waiting inside C# Locks](https://blog.cdemi.io/async-waiting-inside-c-sharp-locks/)
