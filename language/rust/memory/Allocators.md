# Allocator

TO use a

```rust
#[global_allocator]
static X: Type = Type;
```

- By default, rust use the system allocator `std::alloc::System`
- To use `jemallocator`, which gives better performance, install the crate
  `jemallocator`, and then use `jemallocator::Jemalloc`
- A crate can only have one global allocator
