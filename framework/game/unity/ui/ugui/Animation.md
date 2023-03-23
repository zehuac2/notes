# Performance

- Animators would always dirty properties on every frame (animator would result
  in `OnApplyAnimation` callback being fired, which gets the elements dirty),
  even if nothing visual happens
  - No no-op checks
- Animators are OK on the things that always changes
- Use
