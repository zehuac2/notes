# Overview

- Symbols of external linkage can be found in other translation units
- Symbols of internal linkage must be found in the current translation unit and
  not visible to other translation units

## Header, Sources

- If a symbols has been **declared with a specific linkage**, then the
  **definition** will use the pre-defined linkage

  ```cpp
  // header
  extern const int global

  // source
  const int global;
  ```

  `const` by default have internal linkage, but `global` has been declared with
  external linkage. Therefore `global` will have external linkage

# External Linkage

```cpp
// header
extern const int value;

// source
const int value = 17;
extern const foo = 17;
```

Symbols **declared or defined** with `extern` have external linkage

- Functions/methods by default have external linkage
- Constant variables by default have internal linkage, but can be overriden by
  using the `extern` keyword

# Internal Linkage

```cpp
static int internal = 17;
```

Other translation units are not able to access `internal`
