# `new`

## In-place `new` Operator

```cpp
struct float3 {
  float x;
  float y;
  float z;

  float3(float x, float y, float z): x(x), y(y), z(z) {
    cout << "float3::float3{}" << endl;
  }
};

int main() {
  void *data = malloc(sizeof(float3));
  float3 *f3 = new (data) float3{1, 2, 3};

  cout << f3->x << endl;
  cout << f3->y << endl;
  cout << f3->z << endl;

  // should print the same thing
  cout << data << ", " << f3 << endl;

  free(data);
  return 0;
}
```

`new (pointer) T` construct a instance `T` at `pointer`

## Overloading `new` Operator

```cpp
#include <cstddef.h>

struct object {
  void *operator new(std::size_t size);
};
```

- Used during `new object`;
- `size` is equal to `sizeof(object)`

# `new[]`

```cpp
int main() {
  char *data = new char[10];
  delete[] data;
  return 0;
}
```

`new T[x]` allocate an array of size `x`

- Compilers might allocate a bit more memory to keep track of the size of the
  array, which is used by `delete[]`

## Overloading `new[]` Operator

```cpp
struct object {
  void *operator new[](std::size_t size);
};
```

- Used during `new object[x]`;
- `size` is bigger than or equal to to `sizeof(object) * x`
