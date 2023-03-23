# Overview

C's file API revolves around `FILE` pointers

# Read

```c
ssize_t getline(**ptr, *capcity, FILE *)
```

`getline` is a POSIX extension and not i C standard. define `_GNU_SOURCE` if
`getline` is not available by default

Reads a line (including `\n` at the end) from a file stream

- Returns number of characters on the line (including a hidden `\n`)
- `ptr` is a **double pointer**; the pointer it points to will hold the line
  after returns;
- `capactiy` should be a **pointer** that represent how large the pointer
  pointed to by `ptr` can hold
- `FILE *`: a file stream to read a line from
- Be sure to **initialize `ptr` and `capacity` to default values**;
- `ptr` and `capactiy` can be reused for future `getline` calls to conserve
  memory;
- **`ptr` points to heap allocated memory, be sure to `free`**

```c
fscanf(FILE *, char *, args...)
```

Parse from a file stream

# Navigation

```c
void fseek(FILE *f, int offset, int whence);
```

- Loads the entire content of a file beginning from the offset

```c
void rewind(FILE *)
```

- Return to the beginning of file

# Meta Data

## File Size

1. Go to the end of file using `fseek(file, 0, SEEK_END)`
2. Get the index of the last bit of the file using `ftell(file)`

## File Number

```c
int fileno(FILE *)
```

Returns the file descriptor of a file.

- This is not part of the standard C library; needs `_GNU_SOURCE` or
  `_POSIX_SOURCE` to use
