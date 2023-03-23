# Overview

- All types mentioned here are put under `namespace System`

# Span

`Span<T>` provides a type safe and memory safe access to a contiguous region of
memory

- `Span<T>` is a ref struct: can only be put on stack
- `ReadOnlySpan<T>` is a read only variant that can be used to avoid implicit
  copies when used with `in` operator

# Memory

`Memory<T>` is similar to `Span<T>` but can be put on heap

- `ReadOnlyMemory<T>` is a read only variant that can be used to avoid implicit
  copies when used with `in` operator

# Usage Guide

## Span vs Memory

- `Span<T>` must only be on the stack
- `Span<T>` is faster
- `Memory<T>` can be stored on the managed heap

## Owners, Consumers and Lifetime Management

- Ownership: the owner of a piece of memory is reponsible for managing its
  lfietime, including destroying the memory
- Consumption: who either reads or writes to the memory
  - One consumer at a time unless there is a synchronization method
- Lease: during of access

### Memory Pools

- `MemoryPool<T>` represents a memory pool
- `IMemoryOwner<T>` can be created from the memory pool to own a piece of memory
  temporarily
- `Memory<T>` can be obtained from the memory owner

## Usage Guidelines

1. In sync API, use span whenever possible as parameters
2. Use read-only types whenever there is only read access
3. If a method accepts memory and returns void, the memory should not be used
   after the method returns (ex. Tasks)
4. If a task uses a memory, the memory instance can no longer be used after the
   task enters terminal state
5. If constructors accepts a memory object, then instance methods are assumed to
   be consumers
6. If memory properties are settleble, then instance methods are assumed to be
   parameters
7. When there is a memory owner object, transfer or dispose the ownership
8. When a memory owner is part of the API, the ownership of the owner is
   transfered
9. Methods that contain sync calls or sync P/Invoke use spans
10. Methods that contain async calls or async use memories
11. Memory.Pin()` prevents the allocators from moving the refered memory until
    the handle is disposed
