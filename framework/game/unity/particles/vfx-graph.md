# Default Particle System

- **System**: the main component of the graph
- **Context**: contexts represent the main stage of processing. Contexts
  together form systems
- **Block**: a group of nodes in a context
- **Operator**: low level nodes
- **Group**: nodes can be grouped into nodes
- **Sticky Note**: comment

## Performance

- Many APIS are recursive over child game objects
  - Set `withChildren` parameter to `false` if possible
  - Maybe cache a list of particle components and call uses the APIs one by one

# VFX Graph

VFX graph enables particle effect to be executed on the GPU rather than on the
CPU

- Improve particle system perforamnce
- Particle system cannot interact with the game world

[Unity VFX Graph Documentation](https://docs.unity3d.com/Packages/com.unity.visualeffectgraph@9.0/manual/GraphLogicAndPhilosophy.html)

## Scriptable Render Pipeline

VFX graphs only work in URP or HDRP and it is delivered as a package

- Different nodes are available to different pipeline
