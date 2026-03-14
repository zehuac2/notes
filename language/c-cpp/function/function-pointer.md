# Type of Functions

```cpp
// The function takes two ints, and returns one int
int(int, int)
```

## Type of Function Pointers

```cpp
int *(int, int)
int &(int, int)
```

## Aliasing

```cpp
using FuncType = int(int, int);
using FuncTypePtr = FuncType *;
using FuncTypeRef = FuncType &;

typedef int(*name)(int, int);
```

# Function Pointers

- Functions cannot be copied

```cpp
int foo*(int, int) = /* */
int foo&(int, int) = /* */
```

## Invoking Function Pointers

```cpp
(*identifier)(parameters);
identifier(parameters);
```
