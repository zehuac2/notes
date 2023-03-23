# Attributes

```vue
<template>
  <div v-bind:id="data" v-bind:key="index"></div>
</template>
```

`v-bind:attribute="property"` bind the `attribute` to a property in the
component's data

## Class

- `v-bind:class={ name: boolean, 'name-name': boolean }`
- `v-bind:class=object`
  ```ts
  data: {
    object: {
      name: true,
    }
  }
  ```
- `v-bind:class=[keyA, keyB]`
  ```ts
  data: {
    keyA: "button",
    keyB: "bg"
  }
  ```

## Short Hand

```vue
<template>
  <div :id="data" :[attribute]="something"></div>
</template>
```
