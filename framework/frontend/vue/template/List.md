# List

```vue
<template>
  <ul>
    <li v-for="(item, index) in array" :key="index"></li>
    <li v-for="(item, name, index) in object" :key="name"></li>
  </ul>
</template>
```
