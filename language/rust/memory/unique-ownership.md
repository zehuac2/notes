# Single Thread

- `Box<T>`'s ownership is inspected at compile time
- `RefCell<T>`'s ownership is inspected at runtime

## `Box<T>`

```rust
struct Box<T>
```

Box is a smart pointer type in rust

- Manages some heap memory
- Release the heap memory when it goes out of scope
- Provides a way to refer to a type of unknown size (polymorphism)

### Important Functions/Methods

```rust
impl Box<T> {
  fn new(v: T) -> Box<T>
}
```

Initialize a box to a given value

```rust
impl Box<T> {
  fn new_uninit() -> Box<T>
}
```

Create a box without initializing its memory

```rust
impl Box<T> {
  fn as_mut(&mut self) -> &mut T
}
```

Obtain a mutable reference to the content of the box

- Note to write to this memory, use `*reference = value;` syntax

## `std::cell:RefCell<T>`

[TODO:](https://doc.rust-lang.org/book/ch15-05-interior-mutability.html)

### Interior Mutability

# Multiple Threads

Unique ownership can be achieved when there are multiple threads using
synchronization primitives.

- `std::sync::Mutex<T>`
- `std::sync::RwLock<T>`

Both `Mutex` and `RwLock` implement `Drop` if `T` is droppable
