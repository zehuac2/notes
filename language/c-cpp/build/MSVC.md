# Optimizations

[/O Options](https://docs.microsoft.com/en-us/cpp/build/reference/o-options-optimize-code?view=msvc-160)

# Inline

```cpp
struct foo {
  float value;

  __forceinline foo operator+(const foo &f) const {
    return foo{value + f.value};
  }
};

foo boo(foo &a, foo &b) {
  return a + b;
}
```

`__forceinline` would force the compiler to inline a function when optimizations
are enabled

# Sanitizers

```
clang /fsanitize=address
```
