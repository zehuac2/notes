# Overview

Exporting for games

1. Apply all modifiers
2. Merge all objects
3. When export to `fbx` format, only export the model (not the camera)
   - In Unity, multiple camera will increase triangle count
4. Merge materials if any are present

## Reduce Triangles

Go to edit mode, `Mesh > Cleanup > Decimate Geometry` can be used to help reduce
extra triangles
