# Relay

Relay is a graphql client for react

## Required Packages

- `react-relay`: core client
- `relay-compiler`: compiler for graphql queries
- `babel-plugin-relay`: plugin to load compiled relay queries
- `relay-test-utils`: utilities for testing

## Setup

### Step 1 - Compiler

1. Download the schema
2. To run the compiler on the schema
   ```
   relay-compiler --src ./src --schema ./schema.public.graphql
   ```
   After the command is executed, `__generated__` folders would appear
   containing the generated files

The compiler can be configured to output typescript or flow

### Step 2 - Environment

GraphQL requires a network environment to perform network requests

```js
import { Environment, Network, RecordSource, Store } from "relay-runtime";
import token from "./token";

// https://relay.dev/docs/en/quick-start-guide#using-query-variables

/**
 * Fetch query form github's APIs
 * @param {{ text: string }} operation GraphQL operation
 * @param {any} variables variables to the operation
 * @returns {Promise<any>} a promise to the json response
 */
function fetchQuery(operation, variables) {
  return fetch("https://api.github.com/graphql", {
    method: "POST",
    headers: {
      // Add authentication and other headers here
      "Content-Type": "application/json",
      Authorization: `bearer ${token}`,
    },
    body: JSON.stringify({
      query: operation.text, // GraphQL text from input
      variables,
    }),
  }).then((response) => {
    return response.json();
  });
}

/**
 * @type {Network}
 */
const network = Network.create(fetchQuery);

/**
 * @type {Store}
 */
const store = new Store(new RecordSource());

/**
 * Default environment used by the application
 * @type {Environment}
 */
const environment = new Environment({ network, store });

export default environment;
```

### Step 3 - Query Renderer

All relay containers must be the children of a `<QueryRenderer />`

## Contianers

- [Fragment Container](FragmentContainer.md)
- [Refetch Container](RefetchContainer.md)
- [Pagination Container](PaginationContainer.md)
