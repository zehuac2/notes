# Future

```rust
pub trait Future {
  type Output;
  fn poll(self: Pin<&mut Self>, cx: &mut Context) -> Poll<Self::Output>;
}
```

- `Pin` is used by the life time checker
- `cx` provides a `core::task::Waker` object that can be used to wake up the
  future
