- [Overview](#overview)
- [Handler](#handler)
  - [`get`](#get)
  - [`set`](#set)
- [Array Proxy](#array-proxy)

# Overview

```js
let handler = new Handler();
let objProxy = new Proxy(obj, handler);
let arrayProxy = new Proxy(array, handler);

objProxy.name = 'peter griffin';
console.log(objProxy.name);
```

`Proxy(obj, handler)` intercept access to `obj` and delegate them to `handler`

- Use `Reflect` to implement the actual access

# Handler

## `get`

```js
class Handler {
  get(target, propertyKey, receiver) {
    return Reflect.get(...arguments);
  }
}
```

- `target`: the original object
- `propertyKey`: the property key being accessed
- `receiver`: the handler

## `set`

```js
class Handler {
  set(target, property, value, receiver) {
    console.group('set');
    console.log(target);
    console.log(property);
    console.log(value);
    console.groupEnd();

    return Reflect.set(target, property, value);
  }
}
```

- `set` should return `true` or `false`, based on if the set operation has
  succeeded

# Array Proxy

- `propertyKey` will be indices
