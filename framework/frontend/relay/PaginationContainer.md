# Pagination Container

[Pagination Container](https://relay.dev/docs/en/pagination-container)

"Connection" refers to
[connections in pagination](https://graphql.org/learn/pagination/#end-of-list-counts-and-connections);
typically have the format

```
edges {
  node {
    ...
  }
}
```

Created using `createPaginationContainer`

- `component`: the component that is implementing pagination
- `fragmentSpec`: a map between props and queries;
  - Each prop must be passed to the "component" from the parents component
  - One of the fragments must contain a `@connection` annotation marked on the
    connections;
    ```ts
    {
      data: graphql`
        fragment repositoriesList_data on User
        @argumentDefinitions(
          count: { type: "Int" }
          cursor: { type: "String" }
        ) {
          repositories(privacy: PUBLIC, first: $count, after: $cursor)
            @connection(key: "data_repositories") {
            edges {
              node {
                name
                owner {
                  login
                }
                description
              }
            }
          }
        }
      `;
    }
    ```
    Here `repositories` is of type `RepositoryConnection`
- `connectionConfig`:
  - `direction`: direction
  - `getConnectionFromProps`: given the props (including those from
    `fragmentSpec`) passed to the "component", return the "connection" (see
    above) to paginate over or `undefined`
  - `getFragmentVariables`: given the previous variables to "query" and total
    number of items fetched, return a bag of variables that are used to read
    data from the local store while re-rendering the component
    - Relay keeps track of a local store of the data fetched for performance
      reasons
  - `getVariables`: get variables to the "query" from props, pagination info and
    fragment variables
  - `query`: query to use when calling `loadMore()`

The component would be given additional `relay` props

- `props.relay.hasMore()`: return true if there are more data to fetch
- `props.relay.isLoading()`: return true if there is a fetching operation in
  progress
- `props.relay.loadMore()`: fetch more data
