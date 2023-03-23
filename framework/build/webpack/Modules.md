# `module`

```ts
module: {
}
```

Module section specifies how webpack handle different module (files) in the
project

## `rules`

```ts
module: {
  rules: [{ test: /\.(js|jsx)$/, use: "babel-loader" }];
}
```

`rules` configure what loader to use for different types of modules

# `resolve`

```ts
resolve: {
}
```

`resolve` section configures how modules are resolved

## `extensions`

```ts
resolve: {
  extensions: [".ts", ".js"],
}
```

`extension` specify what types of files are considered to be modules and
therefore resolvable

- By defualt, webpack do not look for typescript files, to fix this, use
