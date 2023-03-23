# Event

- In some browsers, `EventTarget` is an interface rather than a constructable
  type

## Subscribe

```ts
element.addEventListener("name", (e) => {
  // e cannot be dispatched again
});
```

## Publish

```ts
element.dispatchEvent(new Event("name", { bubbles: true }));
```

- By default events would not be bubbling
- Builtin events can also be triggered
