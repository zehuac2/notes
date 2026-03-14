# Type of Methods

```cpp
// Belongs to type Foo, takes two int parameters and returns one parameter
int (foo::)(int, int)
```

## Type of Method Pointers

```cpp
using method = = int (foo::*)(int, int);
typedef int (foo::*method)(int, int);
```

# Method Pointers

```cpp
int (foo::*foo_pointer)(int, int);
int (foo::&foo_ref)(int, int);
```

## Invoking Method Pointers

```cpp
(pointer->*func_pointer)(parameters);
(value.*function_pointer)(parameters);
```
