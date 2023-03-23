- [Creating Elements](#creating-elements)
- [Event Handling](#event-handling)

# Creating Elements

```ts
const newElement = $('<div class="row"></div>');
```

# Event Handling

```ts
$("#ok").on("change", function () {
  // $(this) === $("#ok")
  $(this).text("Done");
});
```

- Use `.on("event1 event2 ...", callback)` to add handlers
- To obtain access to the jquery instance, use `$(this)`
