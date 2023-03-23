# Hashing

- Specialize `std::hash<T>`:
  - Implement operator: `size_t operator()(const component_type &ct) const`

```cpp
#include <functional>
#include <typeinfo>

struct component_type {
  const std::type_info &type_info;

  component_type(const std::type_info &type_info): type_info(type_info) {
  }

  bool operator==(const component_type &other) const {
    return std::strcmp(this->type_info.name(), other.type_info.name()) == 0;
  }
};

namespace std {
template<>
struct hash<component_type> {
  size_t operator()(const component_type &ct) const {
    return ct.type_info.hash_code();
  }
};
}
```
