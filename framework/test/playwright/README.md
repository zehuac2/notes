# Playwright

# Mocking

## Route

```ts
await page.route("**/save_sale", async (route, request) => {
  await route.fulfill({
    status: 200,
    contentType: "application/json",
    body: JSON.stringify({
      sales: [
        { id: 4, client: "Jackson", salesperson: salesPerson, reams: 1 },
        ...initialSales,
      ],
      clients: [...initialClients, "Jackson"],
    }),
  });
});
```
