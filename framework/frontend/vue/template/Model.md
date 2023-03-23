# Model

`v-model` creates a two-way data binding

```vue
<template>
  <custom-component v-model="property"></custom-component>
</template>
```

On most elements, `v-model` uses the prop `value` and the event `input` to
establish the two-way data binding. **However, vue template compiler would use
the appropriate prop and event on special cases**

> - text and textarea elements use value property and input event;
> - checkboxes and radiobuttons use checked property and change event;
> - select fields use value as a prop and change as an event.
>
> -- <cite>[vuejs.org](https://vuejs.org/v2/guide/forms.html#Checkbox)</cite>

# Custom Props and Events

```ts
import Vue from "vue";

export default Vue.extend({
  model: {
    prop: "",
    event: "",
  },
});
```

Use custom prop to receive data and custom event to update data
