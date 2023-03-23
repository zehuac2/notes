- [Language](#language)
  - [Header Units](#header-units)
  - [Modules](#modules)
- [Memory](#memory)
  - [Shared Pointer](#shared-pointer)
    - [Shared From This](#shared-from-this)
  - [Weak Pointer](#weak-pointer)
- [Resources](#resources)
  - [Libraries](#libraries)
  - [Toolings](#toolings)
    - [Language Servers](#language-servers)
    - [Analysis](#analysis)

# Language

## Header Units

TODO:

## Modules

TODO:

# Memory

Prefer using of smart pointers over raw pointers (`T *t`)

- `std::shared_ptr<T>`
- `std::unique_ptr<T>`
- `std::unique_ptr<T[]>`
- `std::weak_ptr<T>`

## Shared Pointer

### Shared From This

```cpp
struct person : std::enable_shared_from_this<person> {
  shared_ptr<person> shared() { return shared_from_this(); }
  weak_ptr<person> weak() { return weak_from_this(); }
};
```

`std::enable_shared_from_this<T>` provides a safe way to create `shared_ptr`
instance from methods.

## Weak Pointer

```cpp
struct application;

struct application_delegate {
  std::weak_ptr<application> application;
  void foo();
};

struct application {
  std::shared_ptr<application_delegate> delegate;
  std::string name = "peter griffin";
};

void application_delegate::foo() {
  if (!application.expired()) {
    auto shared_ptr = application.lock();
    cout << "name = " << shared_ptr->name << endl;
  } else {
    cout << "expired" << endl;
  }
}

int main() {
  auto application = std::make_shared<::application>();
  auto delegate = std::make_shared<::application_delegate>();

  application->delegate = delegate;
  delegate->application = application;

  return 0;
}
```

Weak pointer is a non-owning reference to an object, but it can be converted to
a shared pointer to access the object

- `.lock()`: convert a weak pointer to a shared pointer
- `.expired()`: determine if the object is deleted
- `weak = shared`: assign a shared pointer to a weak pointer

# Resources

## Libraries

- [Taskflow](https://github.com/taskflow/taskflow): C++17 async library
- [Cppcoro](https://github.com/lewissbaker/cppcoro): C++20 async library

## Toolings

### Language Servers

- [ccls](https://github.com/MaskRay/ccls)
- [clangd](https://github.com/clangd/clangd/tree/master)
  - `clangd` requires it companion headers to work
- [vscode-cpptools](https://github.com/microsoft/vscode-cpptools)

### Analysis

- [Infer](https://fbinfer.com):
