# Concepts

- **Components**: a group of data
- **Systems**: objects that operates on components
- **Entities**: "game objects" on which components are associated with
- **World**: a container for a set of ECS
- **Blob Assets**: immutable data
  - Referenced using `BlobAssetReference<T>`
  - Can be shared using singleton entities/components
    (`GetSingleton<Component>()`)

## Systems

Systems can be created using

```cs
T system = World.GetOrCreateSystem<T>();
```

in an existing system

## System Gropus

There are three system groups, by default

- `InitializationSystemGroup`
- `SimulationSystemGroup`
- `PresentationSystemGroup`

All systems will be put into the simulation system group by default

Each system group have entity command buffer systems that **play back** the
entity command buffers.

- Entity command buffers can be retrieved from the entity command buffer systems
- There is an entity command buffer systems at the beginning and at end of each
  system group
- More entity command buffer systems can be created by the user
- Make sure use `AddJobHandleForProducer` method to inform a entity command
  buffer that the command buffer should not be run until some job has been
  completed

## Singleton

TODO: https://www.youtube.com/watch?v=W3aieHjyNvw

# Topics

- [Entity Interactions](EntityInteractions.md)

# Resources

- [Overwatch Gameplay Architecture and Netcode](https://www.youtube.com/watch?v=W3aieHjyNvw)
