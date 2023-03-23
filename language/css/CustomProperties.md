# Custom Properties

```css
.container-a {
  --identifier: black;
}

.container-b {
  --identifier: white;
}

.element {
  background: var(--identifier);
}
```

- CSS custom properties starts with `--`
- Properties are set on higher levels
- Properties are referenced using `var(--identifier)` on lower levels
