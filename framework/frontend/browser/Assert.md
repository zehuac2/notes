# Assert

`console.assert` would print a message if a condition is false

```ts
console.assert(false, "message: %s\n", { value: 12 });
console.assert(false, { data: 17 });
```

- if the second parameter is string, objects following the second parameter
  would be used to replace the substitution strings in the second parameter
- Otherwise, objects beginning from the second parameter would be printed in
  order
