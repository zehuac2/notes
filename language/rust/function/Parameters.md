# Mutable Parameters

```rust
fn foo(mut value: i32) {
  println!("value = {}", value);
  value = 17;
  println!("value = {}", value);
}

fn invoke(mut callback: impl FnMut()) {
  callback();
}
```

- Parameters prefixed with `mut` can be changed in the body of the function
- Difference from a mutable reference: the referenced can be changed, but not
  the reference
- Values of `FnMut` needs to be `mut` to be called
