# Synchronization

According to
[Apple's Documentation](https://developer.apple.com/documentation/dispatch/dispatchqueue),
code that runs on GCD should not block the executing thread. When a thread is
blocked, GCD immediately creates a new thread for other tasks. This can lead to
excessive thread creation.

**Instead of using standard synchronization primitives like mutex, condition
variable, etc, use those provided by GCD**

# Context Local Values

- `DispatchQueue.setSpecific(_ self:) -> (key:value) -> Void`
- `DispatchQueue.getSpecific(_ self:) -> (key:) -> T?`

Set or get values specific to this dispatch queue

- `DispatchQueue.getSpecific(key:) -> T?`

Get the value specific to this execution context (queue)
