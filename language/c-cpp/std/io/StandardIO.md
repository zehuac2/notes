# Standard IO

A process have three standard IO streams

- Standard output
- Standard error
- Standard input

# C

C's API for standard output/input all depends on the following macros that
returns `FILE *` one way or another:

- `stdout`
- `stdin`
- `stderr`

APIs documented here are those that does not require the explicit passing of
streams.

## Input

```c
getchar()
```

Read a character from stdin

- Character can be `EOF`, end of file

```c
gets(ptr)
```

Reads a string (until `EOF`) from the command line

- If the input string is bigger than the pointer can hold, then bad things can
  happen

```c
int sscanf(str, format, ptrs...)
```

Parse variables specified in format from a string and store them into the
location pointed to by pointers

- **Whatever comes format must be pointers**;
- Returns the number of variables parsed;
- To prevent string overflow **use `\%xs%` where `x` is the number of characters
  that should be parsed**; - **`x` should be one less than what the pointer can
  holds**, for `\0` - if the input **string contains a string whose length is
  bigger than `x`**, then the string variable is **not considered to be
  successfully parsed**;

```
scanf(...)
```

Works the same as `sscanf`

- `scanf(...)` parse from standard in

## Output

```c
putchar(int)
```

Print a character to stdout

```c
puts(ptr)
```

Print a string to stdout, with an `\n` at the end

`printf` only flush (`write`) to to stdout when

- The input string has `\n` in terminal environment;
- The buffer is full;

`printf` does not buffer and always flush to stderr

# C++

C++ uses stream objects for input and output and provides the following stream
objects for `stdout`, `stderr` and `stdin`

- `std::cout`
- `std::cerr`
- `std::cin`

However, the use of these and the use of `#include <iostream>` are discouraged
for two reasons

1. Static constructors of each object files influence startup time
2. Static constructors of each object files pulls memory from disk. These
   touched and dirty pages put pressure on the OS's virtual memory

For more information checkout
[LLVM's Coding Standard](https://releases.llvm.org/2.5/docs/CodingStandards.html)
