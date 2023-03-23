# Overview

There are two ways to statically dispatch methods based on type traits

- `if constexpr (condition)`
- `std::true_type`, `std::false_type`
- `std::enable_if`

# `std::true_type`, `std::false_type`

```cpp
#include <iostream>
#include <exception>

using std::cout;
using std::endl;

void destroy(std::true_type) {
  cout << "destroy trivially destructable" << endl;
}

void destroy(std::false_type) {
  cout << "destroy non trivially destructable" << endl;
}

int main() {
  // destroy trivially destructable
  destroy(std::is_trivially_destructible<int>{});

  // destroy non trivially destructable
  destroy(std::is_trivially_destructible<std::string>{});

  return 0;
}
```

`std::true_type`, `std::false_type` are aliases to `std::integral_constant`, the
base class of all type traits

# `std::enable_if`

```cpp
#include <iostream>
#include <type_traits>

using std::cout;
using std::endl;

struct boo {
  boo(size_t size) {}
};

template<typename T>
typename std::enable_if<std::is_default_constructible<T>::value>::type foo() {
  cout << "default constructable" << endl;
}

template<typename T>
typename std::enable_if<!std::is_default_constructible<T>::value>::type foo() {
  cout << "non default constructable" << endl;
}

int main() {
  // default constructable
  foo<int>();

  // non default constructable
  foo<boo>();

  return 0;
}
```

`std::enable_if<bool B, typename T>` provides a type alias `type` if `B` is
true.

- `std::enable_if_t` is available since C++ 14

Using `enable_if`, a template function can be "disabled" based on a condition.
Building on this, the compiler can choose functions that are made for a specific
type category
