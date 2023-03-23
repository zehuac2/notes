# Instantiation

SCSS data structures are not mutable

```scss
$theme: (
  'background': black,
  'primary': blue,
);
```

It is better to use quoted strings as keys to avoid confusion

# Accessing Content

```scss
@use 'sass:map';
```

`@use "sass:map"` would allow operations to be written as `map.operation(...)`,
in case this is not available, use `map-operation(...)`

## `map.get(map, key)`

```scss
@use 'sass:map';

.component {
  background: map.get($theme, 'background');
}
```
