# Create Scriptable Objects

- `ScriptableObject.CreateInstance<T>()`
- `AssetDatabase.CreateAsset()`
- `AssetDatabase.AddObjectToAsset()`
- `CreateAssetMenu`

# Life Cycle

Life cycle is same as any asset

- Scriptable objects don't get recreated between scenes
- Scriptable objects might get released to save memory, when they are no longer
  referenced

## Callbacks

- `OnEnable()`: when the object is created/loaded
- `OnDisable()`: when the object is destroyed or when the editor is exiting
- `OnDestroy()`: when the object is destroyed

# Patterns

## Enums

Empty scriptable objects can work as enums.

- References types can be used in equality checking
- Can be used as keys in dictionaries
- Can contain associated data

## Dual Serialization

- Supported by `JsonUtility`
- Can be deserialized from json
  - Instantiate first, then override

# Implementation

- Same C++ backing class as `Monobehavior`
