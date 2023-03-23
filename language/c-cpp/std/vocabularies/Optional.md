# Optional References

```cpp
#include <functional>
#include <optional>

void foo(std::optional<std::reference_wrapper<person>> person) {}
```

Use `std::reference_wrapper` so that optionals can hold references
