# Types

In VSCode, add `//@ts-check` to the top of a file to enable type checking

## Typedef

- Define a new type
- Import a type from file

```js
/**
 * @typedef string Name
 @ @typedef {import("./foo").name} Bar
 */
```

Note taht foo must have non type export for this to work

## Generic

```js
/**
 * @template T
 */
export class Container {
  /**
   *
   * @param {T} value
   */
  constructor(value) {
    this.value = value;
  }
}
```
