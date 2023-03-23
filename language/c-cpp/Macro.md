# Parameter to String

```cpp
#define _TEXT(ENCODING, S) ENCODING##S
#define TEXT(S) _TEXT(L, S)
```

- `#x` convert `x` to string
- `<prefix>##x` convert x to string, as in `<prefix>"x"`
  - For example `L##x` would convert `x` to `wchar_t *`, as in `L"x"`
