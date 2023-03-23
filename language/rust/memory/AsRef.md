# Overview

```rust
pub trait AsRef<T: ?Sized> {
  fn as_ref(&self) -> &T;
}

fn foo<Foo: AsRef<i32>>(foo: Foo) {
  // ...
}
```

Provides a way to convert conforming types to a certain reference type.

- Note that here AsRef is just a generic constraint. This means `foo` can be
  borrowed or owned.

# Use Cases

## Strings

```rust
fn log<S: AsRef<str>>(s: &S) {
  println!("s = {}", s.as_ref());
}

fn main() {
  log(&"reference");
  log(&String::from("owned"));
}
```

Both `String` and `str` implements `AsRef<str>`. There for, instances of both
`String` and `str` can be passed as `AsRef` arguments.
