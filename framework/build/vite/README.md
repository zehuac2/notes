# Backend Integration

## Solution 1: Request Proxy

Have the server proxy all requests for static assets to the vite server

## Solution 2: Specify `server.origin`

```ts
export default defineConfig({
  server: {
    origin: "http://localhost:3000",
  },
});
```

Rather than resolve to a relative url, `import` statement will now resolve to
absolute url starting with `http://localhost:3000`
