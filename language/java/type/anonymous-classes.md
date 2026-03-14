- [Anonymous Classes](#anonymous-classes)
- [Implementing Interfaces](#implementing-interfaces)
  - [Lambda Expression](#lambda-expression)

# Anonymous Classes

```java
var name = new Function<Integer, Integer>() {
  // implementations, overrides
  @Override
  public Integer apply(Integer i) { return i; }
};

var output = new Object() {
  Node<Integer> head = null;
  Node<Integer> insert = null;
};

Consumer<Integer> add = (value) -> {
  if (output.head == null) {
    output.head = new Node<>(value);
    output.insert = output.head;
    return;
  }

  var node = new Node<Integer>(value);
  output.insert.setNext(node);
  output.insert = node;
};
```

- Given a type T that is either and interface or class an anonymous can be
  created that either implements or extends the given `T`
- Inside the implementation or overrides, values from the outer scope can be
  captured
- The properties of the anonymous object can be accessed in the scope it is
  declared even though the type they implement or extend do not have those
  properties

# Implementing Interfaces

## Lambda Expression

```java
interface Foo {
  // Can only have one method
  void accept(String s);
}

Foo callable = (String s) -> {};
Foo callable = (s) -> {};
```

Lambda expressions do not form types themselves. Instead, anonymous classes
would be generated that implements the abstract type or interface that the
expression is assigned to.

- The abstract type or interface must only have one method
