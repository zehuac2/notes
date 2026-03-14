# `::before` & `::after`

CSS

```css
.foo::before {
  content: '';
}

.foo::after {
  content: '';
}
```

SCSS

```scss
.foo {
  &::before {
  }

  &::after {
  }
}
```

- Inserts an element before or after where the css identifier
- `content` can be empty string, but must be present in order to actually insert
  the elements
