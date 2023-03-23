# `using namespace`

```cpp
namespace a {
namespace b {
void foo() {}
}
}

int main() {
  using namespace a;
  b::foo();

  return 0;
}
```

When a `using namespace a` is used, every symbols under `a` would be available
in the current scope
