# Parameter Constraint

```rust
fn name(param: impl TraitA + TraitB) {}
fn name<T: TraitA + TraitB>(t: T) {}
fn name<T, Y>(t: T, y: Y) where T: XXX, Y: XXX {}
```

- Parameter constraints do not specify ownership
  - The parameter can be either owned or borrowed
