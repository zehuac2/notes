# Path

- Resolve Path
  - To resolve a path, use `::` operator;
  - Super path can be resolved using `super::<name>`
  - Sister paths can be resolved using `self::<name>`
  - Root path can be resolved using `crate::<name>`
- `use` Path:
  - `use` a path would import a path into the current scope
    - `use` can be marked as "pub" and re-export all the paths imported
  - Put `*` after `::` would import all the paths represented by `*` into the
    current scope
  - `use a::b::{c, d}` would import `c` and `d` from `a::b`
  - `use a::b::{self}` would import the `a::b` as `b`

## Examples

```rust
// Regular use
use std::collection;
use std::io::*;

// Use self
use std::process::{self, Command}

// Pub use
mod foo;

pub use foo::*;
```
