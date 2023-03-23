# Overview

Functions that have the following declarations would return a generator when
called. Generators are able to "generate" values over time.

```ts
function* values() {
  yield 12;
  yield 17;
}

let generator = values();
let valueA = generator.next(); // { value: 12, done: false }
let valueB = generator.next(); // { value: 17, done: true }
let valueC = generator.next(); // { value: undefined, done: true }
```

- Generators return objects that has two properties, `value` and `done`
  - `value` become undefined when all values are exhausted
- `generator.return()` would close a generator
- `generator.throw(e)` throw an error. If generator is at an yield, then the
  error would be caught by a catch clause in the generator if there is one.

```ts
function* other() {
  yield* values();
}
```

- `yield* <generator>` allows you to use a generator() with `yield`

# For - Of Loop

```js
for (const value of generator()) {
  /* something */
}
```

- Generators also work with for-of loops
