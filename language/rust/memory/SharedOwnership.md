# Single Thread

## `std::rc::Rc<T>`

`std::rc::Rc<T>` implements a reference counted pointer to a heap allocation

- `Rc<T>::new(...)`: creates a allocation
- `Rc<T>::clone(&self)`: increments the reference count and returns the
  incremented pointer
  - **`Rc<T>` implements `Drop` interface**: it won't be copied, instead it
    would be moved if passed to an argument without any sort of reference
- `Rc<T>::strong_count(&Self)`: gives the reference count of an pointer
- **Single threaded use only**

```rust
use std::rc::Rc;

struct Foo {
  value: i32
}

impl Foo {
  fn new() -> Foo {
    Foo {
      value: 17
    }
  }
}

fn print_foo(foo: Rc<Foo>) {
  println!("count = {}", Rc::strong_count(&foo));
  println!("value = {}", foo.as_ref().value);
}

fn main() {
  let foo = Rc::new(Foo::new());
  println!("count = {}", Rc::strong_count(&foo));
  print_foo(foo.clone());
  println!("count = {}", Rc::strong_count(&foo));
}
```

# Multiple Thread

- `Arc<T>` does not enable mutability; interior mutabilty can be achieved by
  using `Arc<T>` with a synchronization primitive

## Reference Cycle

Reference cycle can be broken using `Weak<T>`
