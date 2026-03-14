# Manual Cleanup

When switching between scenes, ECS does not destroy all the entities, causing
memory leak. The following snippet would cleanup all entities in all worlds

```cs
using Unity.Entities;

foreach (World world in World.All)
{
  world.EntityManager.DestroyEntity(world.EntityManager.UniversalQuery);
}
```
