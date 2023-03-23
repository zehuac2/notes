# Overview

- [Unicast vs Multicast](Cast.ipynb)
- [Infinite vs Finite Observable](InfiniteFinite.ipynb)

# Memory Leak

- **Finalization**: cleaning up resources used by a producer; this is what
  prevents memory leaks
  - Guaranteed to happen on **`error`, `complete`, or if `unsubscription`
    occurs**
  - Once finalization occurs, subscribers will **no longer receive new values**
- **Unsubscription**: a consumer telling a producer is is no longer interested
  in receiving values
  - **Causes Finalization**

# Frameworks

- [ReactiveX](https://reactivex.io): reactive frameworks for different languages
- Combine: from Apple
