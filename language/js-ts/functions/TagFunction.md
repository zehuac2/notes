# Tag Function

```ts
function tag(strings: TemplateStringsArray, paramA: string, ...others: any[]) {
  // ...
}

let output = tag`<div>${a} ${b} ${c}</div>`;
```

Tag function are functions that have the following parameters

- The first one being of type `TemplateStringsArray`
  - The first one would contain the non templated part of the string
- Any other number of other parameters (`paramA` or `...others`)
  - The other parameters would contain the value of the parameters

Tag functions allow custom processing of the template string and the return of a
customized result

## Uses

1. `styled-component`
2. `gatsby.js`'s graph ql construction
