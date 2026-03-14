# Other Components

```ts
Vue.extend({
  components: {
    // Registered as "Button"
    Button,
    // Registered as "my-component"
    "my-component": MyComponent,
  },
});
```

Components used in one component must be registered through one of the following

- `Vue.component(name, ...)`: global
- `components: { name: ... }`: local

## kebab-case

Component registered using kebab-casing can only be referenced using
kebab-casing

## Pascal Casing

Component registered using pascal-casing can be referenced with pascal and kebab
casing
