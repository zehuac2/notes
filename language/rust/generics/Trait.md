# Trait

```rust
trait Name {
  fn declare();
  fn implement() {}
}
```

- Traits define a set of shared behavior between multiple structures
  - Conforming structures have to implement those behaviors
- Traits can contain default implementations
- To use contents of a trait, the trait needs to be used

# Trait As Return Type

```rust
trait Foo {}

fn get_foo() -> impl Foo {
  // ...
}
```

- Functions can return a type that implements a trait trait rather than a
  concrete type
- Functions can only return one type that implements the trait

# Implementing Traits

- A trait can be implemented for a type if either the trait or the type is
  defined in "this" crate
  - As a result of the orphan rule

## Conditional Implementation

```rust
impl<T: TraitA + TraitB> Type<T> {}
```

Implementations inside the block is conditionally available when the generic
parameter implements `TraitA` and `TraitB`

# Using Methods Required by Traits

Say a type `T` implement a trait `A`. To use the methods defined by `A` and
implemented by `T`, the trait `A` has to be imported for the methods to be
available on `T`
