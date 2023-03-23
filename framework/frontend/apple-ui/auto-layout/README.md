# Concepts

- **Content Hugging Priority**: views with higher hugging priority the less
  likely a view would be streched
- **Content Compression Resistance Priority**: how much a view is compressed in
  a stack view
- **Constraints**:
  - Activate, deactivate constraints rather than removing
  - Don't deactivate `self.view.constraints`
  - To programmatically add constraints, set to
    `translatesAutoresizingMaskIntoConstraints` to false first
  - There must be enough constraints to disambiguate constraints
- Can override `instrincContentSize` to help layout engine resize
- **Alignment Rect**: the rectangle the layout engine calculates
