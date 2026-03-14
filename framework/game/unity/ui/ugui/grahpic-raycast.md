# Graphic Raycaster

Informs UI elements of input events

## Overlay Canvas

- Needs to be on every canvas that requires input
  - Even in child canvases
- Performs point-rectangle intersection test for all RectTransform elements
  marked as **interactive**
  - `Raycast target` property controls this behavior, disables it to avoid
    checking

# World Space, Screen Space Canvas

- Use blocking mask to avoid unecessary raycasts
- Raycast done from the event camera
- While using world space canvas, make sure to assign the event canvas
  - Otherwise, Unity would use `Camera.main` (which would perform a find every
    time it is used)
  - Event camera can be accessed 7-10 times per raycast
  - Always put something in event camera field
