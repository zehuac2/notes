# Overview

```cpp
#include <exception>

class my_exception: public: std::exception {
  const char* what() const noexcept {
    return "my_exception";
  }
};
```

An exception should derive from `std::exception`

# `std::current_exception`

Returns an implementation defined `std::exception_ptr` that points to an
exception object

- The exception is valid as long as there is a `std::exception_ptr` that refers
  to it

# Nested Exceptions

[TODO:](https://en.cppreference.com/w/cpp/error/nested_exception)
