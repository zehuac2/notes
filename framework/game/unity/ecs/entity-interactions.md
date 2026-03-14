# Relationships

- **Read relationship**: the component data of the entity that we are iterating
  on depends on data we read from another entity's component data
- **Write relationships**: the component data of the entity we are iterating on
  is used to write to the dependent data of another entity's component data

## Read vs Write

- Read relationships
  - Typical for high frequency transformation
  - Becareful of the performance of reading random memories
- Write relationships:
  - Typical for low frequency of transformation: no need to listen to changes
    every frame
  - Good for expressing authority

## Steps to Implement the Reltionship

1. Understand the data
2. Understand the transformation we are applying
3. Pick the right solution

### Example: Follower-Leader Problem

- **Components**:
  - **Follower**:
    - Velocity: changes depending on the acceleration
    - Position: changes constantly
    - Leader: does not change often
  - **Leader**:
    - Position: depends on context
- **Transformation**:
  - Accelerate the follower to the position of the leader
    - Happens once per frame
    - Low performance cost

# Read or Write (not Recommended)

```cs
public struct ComponentDataFromEntity<T> {}
```

[Documentation](https:/-/docs.unity3d.com/Packages/com.unity.entities@0.1/api/Unity.Entities.ComponentDataFromEntity-1.html)

A native container that provides access to all instances of components of type
`T`, indexed by entity

- Constructed from the method `GetComponentDataFromEntity(bool)`, provided by
  the base class of all systems `ComponentSystemBase`
  - Specify the boolean parameter to true to indicate read-only access
    **whenever possible**
- Can check if an entity has a component
- A random data memory; can be expansive
- Can be used to perform write operations, but may generate a race condition
  - Use `NativeDisableParallelForRestriction` attribute to disable safety check

# Write

```cs
public struct EntityCommandBuffer : IDisposable {}
public struct EntityCommandBuffer.Concurrent : IDisposable {}
```

The concurrent variant is thread-safe when multiple jobs are using it

- Can modify entities
- Can be retrieived from entity command buffer systems
- Use `AddJobHandleForProducer` to make sure the entity command buffer system
  don't playback the system until some job has been finished

## Things to Keep In Mind

- Works are deferred
- Adding or removing systems can be expensive
