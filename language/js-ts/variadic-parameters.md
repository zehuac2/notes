# Variadic Parameters

```js
function foo(...params: any[]) {}
```

- If `params` is passed to another function, then param would be passed to the
  other function as an array
- To spread `params` so that it can be consumed as variadic parameters by other
  functions, use `...params` syntax

```js
function other(...params: any[]) {}

function foo(...params: any[]) {
  other(...params);
}

foo(1, 2, 3);
```
