# Address Space

```cpp
void foo(constant buffer *buffer) {
}

```

## Graphics Function

- `device`: read / write
- `constant`: read-only

## Compute Function

- `threadgroup`: The entire thread in the thread group is shared.
- `thread`: Can’t be referenced from other threads.
