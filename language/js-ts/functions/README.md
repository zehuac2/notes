- [Overview](#overview)
  - [Prototype](#prototype)
  - [`this`](#this)

# Overview

## Prototype

- Function use `Function` as their prototypes
- `Function` use `Object` as its own prototype

## `this`

```js
function foo(this: JQuery<HTMLElement>): void {
  console.log(this);
}
```

```ts
function foo(this: JQuery<HTMLElement>): void {
  console.log(this);
}
```

When a function is used as a method on an object, `this` would refer to the
object inside the body of a function

- TypeScript allows the use of a "fake this" to define a type for `this`
