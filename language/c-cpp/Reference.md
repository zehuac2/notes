# Overview

```cpp
int &left;
int &&right;
```

- `&` and **named `&&`** are both left references
- `&&` is a right reference only if the variable is **not named**
- **References are not copyable and assignable and thus not usable in STL
  containers**

# `std::reference_wrapper<T>`

```cpp
#include <iostream>
#include <functional>
#include <optional>

using std::cout;
using std::endl;

struct person {
  void foo() {}
};

int main() {
  person p;
  std::optional<std::reference_wrapper<person>> p_opt{p};

  p_opt->get().foo();
  return 0;
}
```

`std::reference_wrapper<T>` provides a copyable and assignable container for
references, so that it can be used with STL containers

- The constructor `std::ref`, `std::cref` can be used to create references
- `operator &` and `get` can be used to obtain the underlying reference
