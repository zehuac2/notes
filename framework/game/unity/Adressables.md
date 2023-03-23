# Addressables

Addressables manages assets (scenes, models, prefabs, ...). Without
addressables, assets are directly

With addressables

- Assets can be packed separately and downloaded later
- Assets can be managed in named groups and have their dependencies
  automatically handled
- Assets can be unloaded from memory when they are not longer used

## Concepts

- **Address**: a key representing an asset

## Build Players

The addressable bundle must be explicitly built before building the player;
there are two ways to do it:

- `Window > Asset Management > Addressables > Groups > Build > ...`
- `Unity​Editor.​Addressable​Assets.​SettingsAddressable​Asset​Settings.BuildPlayerContent()`
