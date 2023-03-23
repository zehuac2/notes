# General API Issues

- Array-returning APIs always allocates new memory
  - Minimise the calls or use non-alloc versions
  - Some APIS accepts a `List<T>` parameter which is used to place the return
    values
- Cache the result of `this.transform`, each call would invoke use the
  `GetComponent` method

# General Data Structure Issues

- **Mostly iterating**: list, or array
- **Mostly adding or removing**: dictionary or hash set
- **Mostly key lookup**: dictionary
- Builtin-type-as-key dictionaries's equality checking are done using
  well-optimized IL written by the Mono team

## Iterating Over Hash Tables

- Have to go over every bucket, not matter if it is used or not
- Enumerator may also allocate GC

### Solution

- Maintain key-value relationships as a separate list
- Use a linked list or a intrusively linked list instead

## `UnityEngine.Object` Subclass As Keys in Dictionaries

- Default equality check implemented Unity has several branches, i.e. a little
  bit of overheads
- Consider using the instance ID of these objects (`GetInstanceID()`), which are
  guaranteed to be unique; never changes throughout the life cycle of the object
  - **Would even better if the id is cached**
  - May decrease performance if using the Mono backend (caused by the method
    calling unsafe code, which prevents JIT optimization)

# Inlining

Unity's C# compiler is not very good at inlining methods

- Use `[MethodImpl(MethodImplOptions.AgresssiveInlining)]` to provide hint to
  the JIT compiler or the IL2CPP compiler
