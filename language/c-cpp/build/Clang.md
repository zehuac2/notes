# GCC Compatibility

Clang is compatibile with GCC unless otherwise specified

# Target

```
clang main.c -o app_x86 -target x86_64-apple-macos10.12
clang main.c -o app_arm -target arm64-apple-macos11
```

- Specified using `-target` flag
- Architecture is part of the target

Format of targets can be found on
[clang.llvm.org](https://clang.llvm.org/docs/CrossCompilation.html#general-cross-compilation-options-in-clang)

- `abi` is optional

# Inline

```cpp
struct foo {
  float value;

  __attribute__((always_inline))
  inline foo operator+(const foo &f) const {
    return {value + f.value};
  }
};

foo boo(foo &a, foo &b) {
  return a + b;
}
```

`__attribute__((always_inline))` would always inline a function **regardless of
optimization settings**

# Precompiled Headers

- Emit precompiled header using `clang++ -x language-header pch.h -o pch.h.pch`
  - `language-header` can be `c-header`, `c++-header`
- Consume precompiled header using `clang++ -include pch.h main.cc -o out`
  - Clang assumes the generated pch file follows the naming scheme: `file.pch`

# Feautre Test

```cpp
#if __has_feature(feature)
#endif
```

- GCC uses macros defined in C++20 standard

## Features

- `cxx_exceptions`
- `cxx_rtti`

# Sanitizers

## Address Sanitizer

```
clang -fsanitize=address
```
