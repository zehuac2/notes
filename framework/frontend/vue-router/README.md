# Concepts

## URL

- **Params**: `/person/<id>`, `id` is a param
- **Query**: `/people?before=2022`, `before` is part of the query

# Navigation

```ts
await this.$router.push({ path, param, query });
await this.$router.replace({ path, param, query });
```

- `this.$route` might not get immediately updated after `await` finishes. Be
  sure to watch `$route.xxx` to perform tasks depending on `$route.xxx`
