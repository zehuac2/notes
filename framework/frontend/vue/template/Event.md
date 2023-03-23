# Event

Event must use kebab-cased (template compiler convert `wordWord` to `word-word`)

```vue
<template>
  <div>
    <button v-on="object"></button>
    <button v-on:click="action"></button>
    <button v-on:click="action(value)"></button>
    <button v-on:click="action(value, ...arguments)"></button>
    <button v-on:click="action(value, $event)"></button>
    <button v-on:click="(param) => action(value, param)"></button>
  </div>
</template>
```

- `v-on:event="action"` would invoke an action upon an event
  - `$event` refers to the parameter emitted by the event (if it only exists
    one)
    - Primarily used for HTML events
- `v-on="object"` would bind events, identified by keys in `object` to handlers,
  identified by values in the `object`

# Short Hand

```vue
<template>
  <div>
    <button @click="action"></button>
    <button @[event]="action(params)"></button>
  </div>
</template>
```

# Native

```vue
<template>
  <Component v-on:click.native="handler"></Component>
</template>
```

Adding the `.native` modifier would bind the handler directly to the native
event of the root element of the component, **rather than some custom event**

# `this.$listeners`

```vue
<template>
  <div>
    <button v-on="$listeners"></button>
  </div>
</template>
```

`this.$listeners` contains all event listeners applied to this component

- **Useful** for event proxying
