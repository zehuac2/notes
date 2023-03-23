# Record

```java
record Person(String name, int age) {
    Person {
        System.out.println("Person() is always called");
    }

    Person(String name) {
        this(name, 0);
    }
}
```

- **Properties of records are immutable**
  - Properties are accessed using `T property()` accessor
- **Record types are final class** types that already inherit from `Record`,
  therefore they cannot inherit from other types
- The compiler **will implement some methods automatically**
  - `equals`
  - `hashCode`
  - `toString`
