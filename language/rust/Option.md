# Useful Methods

## `and_then`

```rust
fn math(input: &Option<i32>) -> Option<i32> {
  input
    .and_then(|value| { Some(value * 2) })
    .and_then(|value| { Some(value * 2) })
}

fn main() {
  let some = math(&Some(12));
  let none: Option<i32> = math(&None);

  println!("some = {}", some.is_some());
  println!("none = {}", none.is_some());
}
```

`and_then` is run if the `self` is some.

## `unwrap_or`

```rust
fn foo(input: &Option<i32>) -> i32 {
  input.unwrap_or(17)
}
```

`unwrap_or` returns `self` is `self` is some, otherwise, return the parameter

# Resources

- [Russian Dolls](https://blog.mgattozzi.dev/russian-dolls/)
