# Build Profile

```toml
[profile.release]
...

[profile.debug]
...
```

## Options

[Profile Options)(https://doc.rust-lang.org/cargo/reference/profiles.html)

- `opt-level`: optimization level
  - `s`: small build size
  - `z`: smallest build size
- `debug`: if to include build symbols (`true` or `false`)
- `lto`: link time optimization (`true` or `false`)
- `codegen-units`: how many threads to use for code generation
  - `1`: only use one thread to generate code. The best optimization, but the
    slowest
- `panic`: what to do when panic
  - `abort`: abort process if panic
