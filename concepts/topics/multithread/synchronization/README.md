- [Mutex vs Atomic](#mutex-vs-atomic)
- [Synchronization Primitives](#synchronization-primitives)
  - [Semaphores](#semaphores)
    - [Usage](#usage)
  - [Barriers](#barriers)
  - [Condition Variables](#condition-variables)

# Mutex vs Atomic

- Mutex and atomic works in a similar fasion:
  - Require exclusive access
  - Do something
  - Release access
- **Atomic operations are implemented on a hardware level, which are
  inheritantly faster** than mutexes

# Synchronization Primitives

## Semaphores

Semaphores are counters where

- `post`, `release` increase the counter's value
- `wait` decrease the counter's value
  - Won't block if the value in the semaphore before decrease is bigger than 0
  - Block if the value in the semaphore is already 0

### Usage

- Ensure unique access to resource, when the semaphore is initialized to 1

  ```cs
  async ValueTask Foo()
  {
    await _semaphore.WaitAsync();

    Console.WriteLine("foo");

    _semaphore.Release();
  }
  ```

## Barriers

## Condition Variables

[Condition Variables](ConditionVariable.md)
