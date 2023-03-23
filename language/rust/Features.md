# `[features]

Features can be used to conditionally

- Compile blocks of code
- Inlcude other packages or

Features can also rely on other features

## Example

```rust
#[cfg(feature = "xxx")]
fn foo() {
}
```

```toml
[feature]
default = ["package", "full"]
full = []
```

`default` feature will be enabled for the package that is being edited if
`default` is present in `[features]`. No other features have this behavior
