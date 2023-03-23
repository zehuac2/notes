# Destructuring

Closure's parameters may be references, to dereference the reference parameters,
prefix the parameter usign `&`

```rust

fn foo<F: Fn(&&i32)>(f: F) {
  let value = 17;
  f(&&value);
}

foo(|&number| {
  // number here is of type &i32, rather than &&i32
  print!("{}", number);
});
```
