# Context Capturing

## `this`

```ts
let foo = {
  func: function () {
    // this refers to foo
    console.log(this);
  },
  arrow: () => {
    // this refers to the parent context, likely the module
    console.log(this);
  },
};
```

- `this` used in an arrow function is the `this` from its parent context
- `this` used in a regular function is the object which it is associated with

# As Class Fields

```ts
class Foo {
  callback = () => {
    console.log('callback');
  };
}
```

- The entire function is stored as a field in the object
- To optimize
  - Use `.bind()` function
  - Use `@babel/plugin-transform-arrow-functions` to transform arrow functions
    to `.bind()` functions
