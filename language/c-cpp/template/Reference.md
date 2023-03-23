# Reference

```cpp
template<typename T>
void foo(T &&t) {}
```

- if a `int &` or `const int &` is passed to `foo`, then `T` is `int &` or
  `const int &`
  - `t` will be `int &&&` but the compiler will merge it into `int &`, which is
    a left reference
- if a `int &&` is passed to `foo`, then `T` is `int` and `t` will be a named
  right reference
