# Cache

# Types of Caches

[Hibernate maintains two types of caches](https://medium.com/@qingedaig/hibernate-first-level-cache-vs-second-level-cache-6bd386416905)

1. Session level cache (first level)
2. Session factory level cache (second level)

# Entity Life Cycle

https://www.geeksforgeeks.org/hibernate-lifecycle/

## Entering Cache

- By being loaded from the database using methods like **`find`**, **`get`**, or
  via a query.
- By being persisted via methods like **`persist`**, **`save`**, or
  **`saveOrUpdate`**.
- By merging a detached entity back into the persistence context using
  **`merge`** or
  **`update`**[7](https://thorben-janssen.com/entity-lifecycle-model/).

## Leaving Cache

- `session.evict()` would evict a single entity
- `session.clear()` would evict all entities
- Deleted entities remain managed until the session is flushed or committed
