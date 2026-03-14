# Argument Dependent Lookup

```cpp
#include <iostream>

int main() {
  // std::ostream &operator<<(std::ostream &, int) is not defined in this scope
  // but we know the scope of its first parameter, `std::`, the function is
  // lookedup in `std`
  std::cout << 1;
  return 0;
}
```

When an unknown function is called with arguments of a type of a known scope,
the scope of the function is looked up in the scope of the type of the
arguments.

## Applications

- `operator<<` overloads must be present in the same namespace as the object
  being printed for `GTest` to use custom printing implementations
- Range based for loops
