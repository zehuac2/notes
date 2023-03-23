# Move Constructor

```cpp
struct element {
  element() {}

  element(const element &other) {
    cout << "copy" << endl;
  }

  element(element &&other) noexcept {
    cout << "move" << endl;
  }
};
```

A move constructor transfers resources from another object. The original object
will be trashed after the operation.

- Move constructors shoule be declared with `noexcept`

**Strong Exception Guarantee** make STL types use the copy constructor is the
move constructor is not declared with `noexcept`.

# Calling Other Constructors

```cpp
struct foo {
  foo(int v) {}
  foo(): foo(17)
};
```

- The **initializer list and body** of `foo(int)` will be executed before the
  the **initializer list and body** of `foo()`

# Calling Base Constructors

```cpp
struct parent_a {
  parent_a() {
    cout << "parent_a::parent_a()" << endl;
  }
};

struct parent_b {
  parent_b() {
    cout << "parent_b::parent_b()" << endl;
  }
};

struct child: public parent_a, public parent_b {
  child(): parent_b(), parent_a() {
    cout << "child::child()" << endl;
  }
};
```

Constructors of parent classes will be called in the order of inheritance.
`parent_a -> parent_b`

# Resources

- [Move Constructors](https://en.cppreference.com/w/cpp/language/move_constructor)
- [Exceptions](https://en.cppreference.com/w/cpp/language/exceptions#Exception_safety)
