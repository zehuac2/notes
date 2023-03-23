# `@use`

```scss
@use '@material/theme' with (
  $primary: black
) body {
  background: theme.$primary;
}
```

`@use` import a module (can be a partial) to be referenced by this file.

- The imported content would be place under a namespace named after the module
- An optional `with (...)` sytnax can be used to import the module and override
  some of its variables
