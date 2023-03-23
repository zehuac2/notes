# Overview

```ts
interface JQuery {
  plugin(): void;
  plugin2(): void;
}

interface JQueryStatic {
  plugin(): void;
  plugin2(): void;
}

$.fn.extend({
  plugin: function () {},
});

$.fn.plugin2 = function () {
  console.log("i am a plugin");
};

$.extend({
  plugin: // ...
})

$.plugin2 = // ...
```

Functions assigned to `$.fn` will be available to any `JQuery` elements as
methods

- `this` will be pointing to the JQuery element

Functions assigned to `$` will be available directly from `$` like static
functions
