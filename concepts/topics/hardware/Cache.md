# Cache Miss

A **cache miss** happens when the **data of requested address is not in the
cache**. The processor must go to the main memory to fetch the data.

- **Cache miss** is expensive as fetching from main memory is expensive

## Reducing Cache Miss

Modern RAM optimizes for

- **Repeated access to the same address**: when an address is accessed, it is
  stored in the cache until the address is evicted due to a lack of space
- **Continuous access**: when an address is accessed, consecutive addresses are
  prefetched into the cache
