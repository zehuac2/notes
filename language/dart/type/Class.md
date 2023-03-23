# Constructor

- **Except factory constructors**, constructors are special functions that does
  not return a value
- **Except factory constructors**, `this.property` in constructor parameter omit
  the need for explicitly declare parameter and assign the parameter to the
  property

  ```dart
  class Boo {
    int value;

    Boo(this.value) {
    }
  }
  ```

  - The body of this type of constructor can be replaced by `;`

    ```dart
    class Boo {
      int value;

      Boo(this.value);
    }
    ```

  - Since the compiler would synthesize property initialization from the
    parameters, the default value given in property declaration would be
    ignored.

    ```dart
    class Boo {
      int value = 17;

      Boo({this.value});
    }

    void main() {
      var b = Boo();
      // output: null
      print(b.value);
    }
    ```

- Constructors whose `fields` are all final can be `const`

  ```dart
  class ReadCommand {
    final String variable;
    final int transaction;

    const ReadCommand({required this.variable, required this.transaction});
  }
  ```

- A default constructor is auto-generated when there are no any form of custom
  constructors

## Initializer List

```dart
class Foo {
  int x;
  int y;
  int z;

  Foo(int x, int y): x = x, y = y, assert(z >= 0) {
  }
}
```

- Initializer list does not work with factory methods
- Initializer items can be asserts

## Unnamed Constructor

```dart
class Foo {
  int value;

  Foo(int value) {
    this.value = value;
  }
}

void main() {
  print(Foo(17));
}
```

## Named Constructor

```dart
class Foo {
  Foo.empty() {
    print('Foo.empty()');
  }
}

void main() {
  print(Foo.empty());
}
```

- Named constructor does not return values

## Factory Constructor

```dart
class Foo {
  Foo() {
  }

  factory Foo.fact() {
    return Foo();
  }
}
```

Use factory constructor when returning a new instance is always needed.

- Factory constructors are functions with fixed return type and used as
  constructors

# Inheritance

- Subclass does not have access to parent class's private members (`_` prefix)
  if the parent class belongs to another module

## Override

```dart
class Parent {
  void log() {}
}

class Child extends Parent {
  @override
  void log() {
    super.log()
  }
}
```

- Use `super` to access parent class's implementations
- Use `@override` to denote override

# Object

All class inherit from `Object` from `dart:core`

- `String toString()`: return string representation
- `int hashCode`: hash code
- `Type runtimeType`: runtime type
- `bool operator==(Object other)`: return true if `this` and `other` are the
  same instance
