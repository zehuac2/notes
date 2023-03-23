- [Profiles](#profiles)
- [GC](#gc)
  - [Allocation and Free](#allocation-and-free)
  - [Generations](#generations)
  - [Releasing Unmanaged Memories](#releasing-unmanaged-memories)
  - [Applies to](#applies-to)
- [Optimization](#optimization)
  - [Latency](#latency)
  - [Resources](#resources)

# Profiles

- **Workstation**: client apps
- **Server**: server apps, high throughput and scalibility

# GC

## Allocation and Free

- CLR's allocate a contiguous region on start up as the managed heap
- All reference types are allocated on the managed heap
  - CLR do so by maintaining a pointer to where the next allocation should be
    put and when a new allocation is made, the pointer is simply moved forward
    (this is very similar to a stack)
  - This implementation makes managed heap allocation faster than unmanaged heap
    allocation
- When garbage collection is run,
  - CLR tracks releasable objects on the heap using graph algorithms
  - Release the objects on the heap
  - Compact the rest of the objects by memory copying
- Larger objects are put onto a separate heap, except this separate heap does
  not compact objects to improve performance

## Generations

The managed heap is organized into three generations

- Generation 0
- Generation 1
- Generation 2

When a GC happens in generation 0, the objects that survived in this generation
will be promoted (considered) as generation 1. Similarly when a GC happens in
generation 1, the surviving objects woule be considered as generation 2.

When a GC is needed, the collector would always prune younger generations first
for space.

This design is based on the following principals

- Faster to compact memory for a portion of the heap
- Newer objects have shorter lifetime and older objects have longer lifetimes
- Newer objects tend to be related to each other and accessed by the application
  around the same time

## Releasing Unmanaged Memories

Objects that encapsulate unmanaged resources should implement `IDisposable`
interface. Call `IDisposable.Dispose()` method to release their unmanaged
resources to avoid memory leaks.

## Applies to

- .Net
- Mono supports multiple GCs, `SGen` is a generational GC and works similar as
  described in this document

# Optimization

## Latency

- Native code can sometimes be faster, but comes at the cost of latency. When GC
  is planned, threads running native code cannot be paused until they are done
  executing, causing every other threads running managed code to wait

## Resources

- [Performance Improvements in .Net 5](https://devblogs.microsoft.com/dotnet/performance-improvements-in-net-5/)
