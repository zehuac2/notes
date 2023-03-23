# Constructors

Constructors are special functions in JavaScript that constructs objects.

In an object,

- The object's `constructor` property points to the function
- The constructor is contained in the prototype
- Constructors typically **have the same name as the type**

## Type

Constructors (or types) have the following type

```ts
new (...args: any[]) => any
```

### Example

```ts
// Type Alias
type Constructible = new (...args: any[]) => any;

// Interface
interface Foo {
  new (...args: any[]): any;
  metadata: number;
}

function foo(F: Foo) {
  let f = new F();
  console.log(F.metadata);
}
```

## Prototype Overwritten

If the prototype of an object is explicitly specified

```js
function T() {}

T.prototype = {};
```

- The constructor would not be in the prototype would not contain the name of
  the class
