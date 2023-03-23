# Webpack

By default, `vue` installed from NPM does not have template compiler builtin;
**this means that vue templates must not be used outside of `.vue` files (whose
template are processed by `vue-loader`)**. Use `Vue` instance's render function
instead

```ts
import App from "./App";
import Vue from "vue";

let v = new Vue({
  render: (h) => h(App),
});
```

- Install `vue-template-compiler` to handle vue templates
- Use `vue-loader` to load vue component files
- `vue-loader` provides a plugin that must be included
- Use other loaders to process files created from vue component files
  - Either use `MiniCssExtractPlugin.loader` or `style-loader` as the last stage
    of style sheets loading; **dont use `vue-style-loader`**

## TypeScript

- First loader must add `.ts` extension to `.vue` files; only `ts-loader`
  provides this out of the box
  ```ts
  {
    loader: "ts-loader";
    options: {
      appendTsSuffixTo: [/\.vue$/];
    }
  }
  ```
