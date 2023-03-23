# Event Handlers

## Event

In the context of a `event="..."`, an instance of `Event` object can be
reference and can be passed to the event handler

```html
<button onclick="action(event)">click me</button>
```

```ts
function action(event: Event) {}
```

## Bubbling

By default, events would travel upward toward along the DOM tree toward the
`window`. To stop this behavior, call `event.stopPropagation()`

- This behavior can optionally be used to save memory be avoiding a large number
  of event handlers

## Window

When building with webpack, functions would be put into modules, causing HTML
elements to not be able to find them.

To solve this issue

```js
window.func = function () {
  console.log("hello world");
};
```
