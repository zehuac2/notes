# Layouts

# Performance

Every UI element that tries to dirty its layout would perform at least one
`GetComponent`

- Each layout group multiplies this cost
- Nested layouts are particularly bad

## What Marks a Layout Dirty

- `OnEnable()`, `OnDisable()`
- Reparenting
- `OnDidApplyAnimationProperty()`
- `OnRectTransformDimensionsChanged()`

## Solution

- Avoid layout groups; use anchors
- Write custom code to do layouts
- **Pooling**
  - **Putting to pool**: disable first, then reparent (only one layout gets
    dirty)
  - **Removing from pool**: reparent first, then update data then enable
