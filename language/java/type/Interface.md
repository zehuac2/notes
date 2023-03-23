# Table of Content

- [Table of Content](#table-of-content)
- [Default Methods](#default-methods)
  - [Multiple Interface](#multiple-interface)

# Default Methods

```java
interface Interactable {
  default void trigger() {
    System.out.println("Interactable.trigger()");
  }
}

interface Gun {
  default void trigger() {
    System.out.println("Gun.trigger()");
  }
}

class MyWeapon implements Gun {}
```

- Classes implementing interfaces with default methods don't have to implement
  the method requirements
- To call the interface's implementation, use `Interface.super.method()`

## Multiple Interface

```java
class MyWeapon implements Interactable, Gun {
  public void trigger() {
    Interactable.super.trigger();
    Gun.super.trigger();
  }
}
```

- If a class implements multiple interface with the same default methods, then
  the class must implement the method requirement to disambiguate
