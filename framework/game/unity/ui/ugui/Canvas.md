# Canvas

Canvas generate meshes created by UI elements and render the meshes

- Rendering happens once per frame
- Mesh generation happens whenever something changes in the UI element
  - Quite expensive
  - Exceptions:
    - **Change in colors**: only dirty vertices
    - **Change in fills**: only dirty vertices

# Performance

- **It is a good practice to split UIs into multiple canvases**
  - Whenever something changes on a canvas, the meshes are regenerated
  - Meshes from different canvases won't batch
  - Child canvases maintain own geometry and perform own batches

## Splitting Canvases

- Group elements that are updated at the same time
- Separate dynamic elements from static elements

## Mesh Regeneration Process

1. Recalculate layouts of auto-layouted elements
2. Regenerate meshes for all enabled elements
   - Meshes still regenerate even if alpha is 0
3. Regenerate materials to help batch meshes

## Sorting

Canvas sort vertices by depth before drawing them (since all UI elements are
consdiered to be transparent), which is a `n log n` operation

- The more elements, the worse the performance

## Hiding Canvas

- Disable canvas components, rather than the game object
  - Stop drawing canvas
  - Avoid triggering `OnEnable`, `OnDisable` callbacks to UI hierarchy, which
    are triggered if the game objects are disabled, enabled
- Disable child components that run expensive per-frame code
