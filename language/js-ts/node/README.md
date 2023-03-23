# REST API

## Get

```ts
new Promise((resolve, reject) => {
  get(
    'https://api.yelp.com/v3/businesses/search?location=Manhattan',
    { headers: { Authorization: `Bearer ${YELP_API_KEY}` } },
    (response) => {
      if (response.errored) {
        reject(response.errored);
        return;
      }

      let text = '';

      response.on('data', (data: Buffer) => {
        text += data.toString();
      });

      response.on('close', () => {
        resolve(JSON.parse(text));
      });

      response.on('error', (err) => {
        reject(err);
      });
    }
  );
});
```

# Best Practices

- Put a `.nvmrc` file in repo root to let know which version of node you are
  using
  ```
  node --version > .nvmrc
  nvm use
  ```
