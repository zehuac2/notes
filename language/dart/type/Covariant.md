# Overview

```dart
class Parent {
  void foo(Parent p) {}
}

class Child extends Parent {
  @override
  void foo(covariant Child child) {}
}
```

`covariant` allows replacing the type of a parameter with the a derived type.
