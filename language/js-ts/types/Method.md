# Definition

```ts
// function
foo();

// method
a.foo();
```

# Type

```ts
interface Instance {
  value: number;
  func: (this: Instance) => void;
}

let instance: Instance = {
  value: 17,
  func: function () {
    console.log(this.value);
  },
};
```

Methods have an implicit first parameter `this` that refer to the objects they
attach to
