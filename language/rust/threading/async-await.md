# Async Await

```rust
async fn foo() {
  let value = read_file().await;
}
```

- Only `std::future::Future` conformant types can be awaited on
- `async` function returns a compiler generated `std::future::Future` conforming
  type

## Runtime

Futures requires some kind of runtime to run

- [`tokio`](https://github.com/tokio-rs/tokio)
