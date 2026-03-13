# Issues

TODO: read https://www.baeldung.com/java-volatile#bd-cache-coherence-challenges

## Instruction Reordering

Instructions can often times be reordered so long as the single-threaded 
behavior remains the same.

```txt
allocate memory to local variable a
initialize local variable a
assign a to instance variable b
```

Can be reordered to become

```txt
allocate memory to local variable a
assign a to instance variable b
initialize instance variable b
```

In a multi-threaded environment, this can lead to bugs. See 
[double Checked Locking](patterns/double-check-lock.md).

## Visibility

# Mutex vs Atomic

- Mutex and atomic works in a similar fasion:
  - Require exclusive access
  - Do something
  - Release access
- **Atomic operations are implemented on a hardware level, which are
  inheritantly faster** than mutexes

# Synchronization Primitives

- [Semaphores](primitives/semaphores.md)
- [Condition Variables](primitives/condition-variables.md)
- [Synchronized Block](primitives/synchronized-block.md)
- TODO: barriers

# Patterns

- [Double Checked Locking](patterns/double-check-lock.md)
