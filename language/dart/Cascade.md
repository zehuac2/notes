# Cascade Notation

```dart
class Foo {
  int counter = 0;

  void log() {
    print("counter = ${counter}");
    counter++;
  }
}

void main() {
  var foo = Foo()
    ..log() // returns the same Foo instance as foo
    ..log() // returns the same Foo instance as foo
    ..counter = 0 // returns the same Foo instance as foo
    ..log(); // returns the same Foo instance as foo
}
```

Cascade notation enables the building of a sequence of operations on an object.

- Cascade notation returns the instance reference
