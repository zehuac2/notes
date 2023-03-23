# Global, Namespace

```cpp
struct foo {
  foo() {}
};

namespace boo {
  foo f;
}

foo g_f;

int main() { return 0; }
```

- Will be initialized when the process starts, except `constexpr`
- Declarations in headers must be marked with `extern` to avoid redefinition

# Static

## Classes/Structs

```cpp
struct foo {
  foo() {}

  static foo g_foo;
};

foo foo::g_foo;

int main() {
  return 0;
}
```

- Must be defined separately, except those in templates
- Will be initialized when the process starts, except `constexpr`

## Functions/Methods

```cpp
#include <iostream>

using std::cout;
using std::endl;

struct value {
  value() {
    cout << "value::value()" << endl;
  }

  ~value() {
    cout << "value::~value()" << endl;
  }
};

void foo() {
  static value s_value;
}

int main() {
  foo();
  foo();

  cout << "exiting..." << endl;
  return 0;
}
```

- Static variables in functions/methods are only initialized once, when the
  function/method is called the first time.
- Static variables are destructed when the program exists
- Available to both C and C++

## Templates

A new static variable is created each time a template class/function/method is
instantiated (even when instantiation occurs in different files)

## Static Variables in Dynamic Libraries

Any runtime writing to static variables in a dynamic library will cause the
dynamic library be copied for the process.

# Life Cycle

## Automatic Variable

Automatic variables are variables whose lfietime are managed by the stack of a
function or a program

- Automatic variables are released when the stack frame is released
- Automatic variable are stored on stack space (top to bottom)

```cpp
// s is an automatic variable
std::string s;
```
