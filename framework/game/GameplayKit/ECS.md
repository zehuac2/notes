# Concepts

- **class GKEntity**: an entity represent something in the simulation
- **class GKComponent**: a component of an entity
- **class GKComponentSystem**: a way to group entities of the same type

## Adding Components

- **Add to entities**: call `GKEntity.addComponent(self, _)`
- **Add to systems**:
  - Call `GKComponentSystem.addComponent(self, _)`
  - Call `GKComponentSystem.addComponent(self, foundIn:)` to add components from
    a system

## Updates

Updates should be implemented in subclass of `class GKComponent`, not in
`class GKComponentSystem`. Note that this is very different from Unity's
implementation, where updates are done in systems.

There are two ways to dispatch updates

- Call `GKEntity.update(self, deltaTime:)` to dispatch updates to all components
  on the entity
- Call `GKComponentSystem.update(self, deltaTime:)` to dispatch updates to all
  components of the same type

# Integration

## SceneKit

Call updates in the following method

```swift
protocol SCNSceneRendererDelegate {
  func renderer(_: SCNSceneRenderer, updateAtTime: TimeInterval)
}
```

## SpriteKit

Call updates in the following method

```swift
class SKScene {
  func update(_ currentTime: TimeInterval)
}
```

## Timers

```swift
// macOS
class CVDisplayLink {}
// iOS
class CADisplayLink {}
```
