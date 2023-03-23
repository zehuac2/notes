# `std::function<T>`

Provides a way to abstract over

- Function pointers
- Lambda expressions (no defined type)
- Variables

```cpp
#include <functional>

using std::cout;
using std::endl;

void run(std::function<int(int)> f) {
  cout << f(17) << endl;
}

int main() {
  run([](int v){
    return v * 2;
  })
  return 0;
}
```

## Binding

Binding refers to the process of creating function objects that already have
some of the parameters assigned; when invoking binding functions, the
already-assigned parameters can be ignored;

- `T` of binding `function<T>` is the function signature of the bonded function,
  not the original function; - Example, `void(void)` is the signature of
  "void(int)", with the first integer parameter already bonded;
- Use variables in `std::placeholders` to signal the index of the parameter that
  is being bounded;

```cpp
#include <functional>

using std::placeholders::_1;

struct person {
  int age = 0;

  void grow(int value) {
    this->age += value;
  }
};

int add(int a, int b) {
  return a + b;
}

int main() {
  person p;

  function<void(int)> m_binded = bind(&person::grow, &p, _1);
  m_binded(22);
  cout << p.age << endl;
    
  // Function
  function<int(int)> f_binded = bind(&add, 10, _1);
  cout << f_binded(2) << endl;
}
```

## Performance

`std::function<T>` has a performance cost due to abstraction, prefer the
following when possible

- Function pointer
- Template parameter
- Take values of a specific type
