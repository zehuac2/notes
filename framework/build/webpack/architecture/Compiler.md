# Assets

The compiler manage assets through `xAsset(...)` methods

## Concepts

### Source

```ts
interface Source {
  source: () => string,
  size: () => number
}
```

- `source`: the content
- `size`: the size of the content
