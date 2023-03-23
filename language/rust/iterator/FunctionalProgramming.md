# Functional Programming

In collections, functional programming related methods are **used with
iterators**, rather than directly on the collection

- The methods return iterators
- To convert the iterators to a new collection, use the `collect` method

```rust
let v = vec!(1, 2, 3);
let output = v.iter()
  // map returns an iterator
  .map(|x| { return x * 2; })
  // collect converts iterator to collection
  .collect();
```
