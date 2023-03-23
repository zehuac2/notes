# Bind

```ts
class Foo {
  constructor() {
    this.callback = this.callback.bind(this);
  }

  callback() {
    console.log('callback');
  }

  foo() {
    console.log('foo');
  }
}

let foo = new Foo();
let callback = foo.foo.bind(foo);

// don't need this here
callback();
```

`.bind(this, ...)` returns a special object that when called, **already have the
`this` or other parameters**

- The function is still stored with the prototype
  - Save memory
- What's in stored in objects are just a "pointer"
- **When not dealing with methods, pass undefined or null as the first
  parameter**
