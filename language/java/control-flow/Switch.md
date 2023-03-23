# As a Statement

```java
String foo(int value) {
  switch (value) {
    case 0:
      return "zero";
    case 1:
      break;
    default:
      return "others";
  };

  return "one";
}
```

- Each case must be properly ended with `break` or `return`

# As an Expression

```java
String label = switch (value) {
  case 0:
    yield "zero";
  default:
    yield "others";
};
```

- Use `yield` keyword to return from the expression
- Use of `break`, `continue` and `return` is not allowed

# Arrow Cases

```java
String foo(int value) {
  return switch (value) {
    case 0 -> "zero";
    case 1 -> "one";
    default -> "others";
  };
}

String boo(int value) {
  return switch (value) {
    case 0 -> { yield "zero"; }
    case 1 -> { yield "one"; }
    default -> { yield "others"; }
  };
}

String coo(int value) {
  switch (value) {
    case 0 -> { return "zero"; }
    case 1 -> { return "one"; }
    default -> { return "others"; }
  };
}
```

- Arrow cases does not need to be ended with `break` or `return`
- In expression-like switches,
  - If the case body is an expression, then the case must end with `;`
  - Use `yield` to return from the expression in case body
- In statement-like switches
  - Expression case bodies (`case a -> expression`) are not allowed
  - Case bodies behave like statements
