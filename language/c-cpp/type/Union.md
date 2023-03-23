# Overview

Union is a type that can be any fixed number of member of different types

- If the member contains user-defined destructors, then the default destructor
  of the union is deleted
  - Custom destructor can still be added, but must be able to know which type is
    active
- If the member contains user-defined default constructors, then the default
  constructor of the union is deleted
- If the size of the members are the same, then esentially one block of data can
  be accessed using differnent types

# Anonymous Union

```cpp
int main() {
  union {
    int value;
    char bytes[4];
  };

  value = 0;

  cout << bytes[0] << endl;

  return 0;
}
```

The members of Anonymous Union are injected into its parent scope.
