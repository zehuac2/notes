# Tasks

## `queueMicroTask(callback)`

```ts
queueMicrotask(() => {
  console.log("foo");
});
```

The microtask is a short function which will run

- after the current task has completed its work
- when there is no other code waiting to be run before control of the execution
  context is returned to the browser's event loop

The mcirotasks would run first in first out.
