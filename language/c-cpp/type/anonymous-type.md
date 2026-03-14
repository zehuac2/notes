# Anonymous Type

Anonymous type can be used together with typedef to expose a type to both C and
C++

```cpp
// Useful for C interaction
typedef struct {
#ifdef __cplusplus
  void foo();
#endif
} parent;

typedef struct: public parent {

} child;
```

- Same is equivalent for `class`
