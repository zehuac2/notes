- [Array Literals](#array-literals)
- [Map](#map)
- [Sets](#sets)
- [Control Flows](#control-flows)
  - [`if`](#if)
  - [`for`](#for)

# Array Literals

```dart
List<Object> objects = [
  "",
  17,
  Person()
];

// elements of people must be Person
final people = <Person>[
  Person(),
  Person()
];
```

# Map

```dart
final Map<String, dynamic> = {
  'name': 'Peter',
  'age': 21
};
```

# Sets

```dart
var elements = {'', ''};
var elements = <String>{};
```

# Control Flows

## `if`

```dart
final list = [
  if (true)
    'included',
  if (false)
    'not included'
]
```

## `for`

```dart
final list = [
  for (int i = 0; i < 10; i++) i
]
```
