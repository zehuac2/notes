# Position Independent Code

Position independent code are code that can run regardless where they are in
memory; either don't use absolute addresses at all, or redirect absolute
addresses

## Why

The dynamic linker is able to resolve references to symbols (ex. variables,
functions) in an external dynamic library, but not those within a dynamic
library. However, having position independent code allows us to refer to other
entities within a dynamic library.

## Implementation

- Uses indirection table to help resolve absolute addresses
- Comes at a small performance cost.
