# Overview

```ts
class Parent {
  foo(): void {}
}

class Child extends Parent {
  override foo(): void {
    super.foo();
  }
}
```

When `noImplicitOverride` is set to true

- `override` must be used when overriding parent methods
- Errors will be thrown when
  - No `override` is used
  - Method signature in child class is different from the method being overriden
