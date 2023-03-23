# `build`

## `extractCSS`

```ts
export default {
  build: {
    extractCSS: process.env.NODE_ENV === "production",
  },
};
```

If set to `true`, extract css into separate files

- Set this to false during development so that browsers don't cache css and
  changes to css can be reflected accurately
