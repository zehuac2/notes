# Slice

- Slices have the type `&[T]` in rust.
- Slices can be created from existing slices
- Index overflow in slices would cause the program to panick

## Slice for Custom Types

- Implement `Deref` and return a slice
