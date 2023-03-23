# SDK

Null safety is available `>=2.12`

# Nullable Type

```dart
Person? getPerson() { return null; }
int? getNumber() { return null; }
```

Nullable types are post-fixed by `?`

# Nullable Dot Operator

```dart
class Person {
  int foo() { return null; }
}

Person? person = ...;
int? result = person?.foo();
```

- If the instance is null, then returns null
- If the instance is not null, access the property;
- Return type of dot operator is nullable regardless of the type of the property
