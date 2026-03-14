# Add Binding

- `AddBinding(path)`: returns a builder expression that can be used to modify
  the binding

The builder expression make additive changes

# Modification

Note that modifing an input action will modify the underlying input action
asset. To ensure that the input action asset on disk remains the same every time
the game runs, clones the asset and then modify input actions

- `ApplyBindingOverride()`
- `ChangeBinding()`: returns the builder expression
