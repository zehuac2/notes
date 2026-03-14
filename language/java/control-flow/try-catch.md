# `try {} catch (...) {}`

- If an exception is not handled by the catches, it will be immediately rethrown
- If a catch statement does not do anything, name the exception `ignored`

# `try() {} catch() {}`

```java
try (var resource = new Resource()) {
  out.println(resource);
} catch (Exception e) {
  //
}
```

Try with resource calls `.close()` on the resource when the control flow exits

- Resource type must implement `AutoClosable`
