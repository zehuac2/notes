# Inheritance

- Inheritance with virtual functions, destructors would result in a pointer to a
  vtable added to instances to implement virtual dispatch

## `final`

```cpp
struct parent {
  virtual void foo() {
    cout << "parent" << endl;
  }
};

struct child final: public parent {
  void foo () override {
    this->parent::foo();
    cout << "child" << endl;
  }
};

```

- Note that `final` comes after `child`
- Final allows compiler to perform devirtualization, i.e. not using vtable to
  invoke virtual method, providing performance benefits

# Multiple Inheritance

```cpp
struct cls_a {
  size_t a;
};

struct cls_b {
  size_t b;
};

struct cls_c: public cls_a, public cls_b {
  size_t c;
};
```

## Casting

```cpp
size_t foo(cls_a *a, cls_b *b) {
  return a->a + b->b;
}

auto *c = new cls_c;
foo(c, c);
```

- For the `foo` function, the offset for fields `a` and fields `b` are both `0`
  - Not the case for `cls_c`
- At the call site, while converting from `cls_c *` to `cls_a *` and `cls_b *`,
  the copmiler would offset the pointer before passing it to `foo` so that both
  access to `a` and `b` are done correctly
  - Equivalent of `static_cast`
  - Avoid using `reinterpret_cast` in this case

## Virtual Inheritance

```cpp
class base {
  virtual ~base();
};

class a: public virtual base {};
class b: public virtual base {};

class grand_child: public a, public b {};
```

When a grand child class inherits from classes that virtually inherit from a
grand parent class, only one copy of the fields of grand parent class would be
created inside the grand child

- Virtual inheritance introduces a `VTT` pointer in the instance which is used
  for dispatching to the base (grand parent) class

# Resources

- [The Performance Benefits of Final Classes](https://devblogs.microsoft.com/cppblog/the-performance-benefits-of-final-classes/))
