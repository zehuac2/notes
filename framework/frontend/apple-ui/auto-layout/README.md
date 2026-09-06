# Auto Layout

- **Content Hugging Priority**: views with higher hugging priority the less
  likely a view would be stretched
- **Content Compression Resistance Priority**: how much a view is compressed in
  a stack view
- **Constraints**:
  - Activate, deactivate constraints rather than removing
  - Don't deactivate `self.view.constraints`
  - To programmatically add constraints, set to
    `translatesAutoresizingMaskIntoConstraints` to false first
  - There must be enough constraints to disambiguate constraints
- Can override `intrinsicContentSize` to help layout engine resize
- **Alignment Rect**: the rectangle the layout engine calculates

# Constraints

- Update the constraint property (ex. constant)
- Make the containing view perform layout `view.layoutSubtreeIfNeeded()`
  - Can be animated if done inside an animation block (refer to `UIView` and
    `NSAnimationContext`)

## Order of Anchors

```swift
NSLayoutConstraint.activate([
  _button.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
  // notice the ordering is different for top and bottom anchor
  view.layoutMarginsGuide.bottomAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: _button.bottomAnchor, multiplier: 1.0),
  _button.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: view.layoutMarginsGuide.topAnchor, multiplier: 1.0),
])
```

# DSLs

SnapKit provides a DSL for Auto Layout.
