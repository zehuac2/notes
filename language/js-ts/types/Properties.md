# Properties

**Unless otherwise configured**, properties can be added, removed and nullified:

```ts
let object = {};

// addition
object.name = 'peter';

// modification
object.name = 'peterson';

// nullification: still has the "name" property, just don't hold value
object.name = null;
object.name = undefined;
```

## Enumeration

To enumerate through properties:

```ts
function enumerate(obj): void {
  for (let p in obj) {
    console.log(p);
  }
}
```

## `Object.defineProperty` and Friends

```ts
let o = {};

Object.defineProperty(o, 'name', { value: 'foo' });
```

- Allows precise configuration of properties
  - Some configuration is equivalent to `o.name = "foo"`
- [Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty)
