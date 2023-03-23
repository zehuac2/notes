# Lambda Expressions

- Lambda expressions do not have a defined type in C++ standard; there are two
  approaches to pass a lambda expressions
  - Template varaible
  - `std::function`
- Some compilers may represent lambda expressions as call stack functions, i.e.
  the functions are implemented on the stack
