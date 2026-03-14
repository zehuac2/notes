# Overview

```mermaid
graph LR;
  Constructor --> OnInit;
```

- Use constructor to initialize properties, and `ngOnInit` to do actual
  initialization work, ex. make network requests
- **Data-bound properties**: properties decorated with `@Input()`

# On Init

```ts
interface OnInit {
  ngOnInit(): void;
}
```

Called after angular has initialized all data-bound properties. Use this hook to
handle initialization tasks

# On Changes

```ts
interface OnChanges {
  ngOnChanges(changes: SimpleChanges): void;
}
```

Fired after "data-bound property" of a **component or directive has changed**
