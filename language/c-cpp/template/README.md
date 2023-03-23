# Overview

- **Instantiation**: a template is instantiated when template parameters are
  provided; **a template is only instantiated once for the same set of template
  parameters**

  ```cpp
  int main() {
    // instantiate
    foo<int>();
    foo<int>();

    // instantiate
    foo<char *>();
    return 0;
  }
  ```

  In this snippet, the template `foo<T>` is instantiated twice

- Template types can be constrained using [concepts](Concepts.md)
