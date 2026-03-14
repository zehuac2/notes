# Control Flows

```rust
if let A(...) = foo() {
  // if match successful
}

while let A(...) = foo() {
  // if match successful
}

match foo() {
  A(a) => {},
  B(mut a) => {},
  C(ref a) => {},
  D(ref mut a) => {}
}
```
