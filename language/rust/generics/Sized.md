```rust
pub trait Sized {
  // ...
}
```

Type with compile-time constant size (objects without compile time constant size
can only be handled as pointer or reference)

- All type parameter have `Sized` bound by default
- To remove the trait, use `?Sized` syntax

  ```rust
  fn foo<Foo: ?Sized>(f: Foo) {}
  ```
