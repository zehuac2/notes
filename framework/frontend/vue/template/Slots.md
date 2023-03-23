- [Overview](#overview)
- [Scope](#scope)
- [Fallback Content](#fallback-content)

# Overview

# Scope

```vue
<!-- definition for stack -->
<template>
  <div>
    <slot></slot>
  </div>
</template>

<script>
export default {
  data() {
    return { data: 0 };
  },
};
</script>

<!-- uses of stack -->
<template>
  <stack> {{ data }} would be undefined </stack>
</template>
```

Content rendered inside the slot does not have access to the data of the
component that renders the slot

# Fallback Content

```vue
<template>
  <slot>default content</slot>
</template>
```

If no content is provided to the slot, then `default content` will render
