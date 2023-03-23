- [Overview](#overview)
- [Resize Observer](#resize-observer)
- [Intersection Observer](#intersection-observer)
  - [Options](#options)
  - [References](#references)
- [Mutation Observer](#mutation-observer)

# Overview

Observer APIs follow a common pattern

- **Constructor**: `new T(callback, options)`
  - `callback` will receive an array of "entries"
- **Observe**: `observer.observe(element)`
- **Unobserve**: `observer.unobserve(element)`
- **Disconnect**: `observer.disconnect()`; stops observing all elements
- **Take records**: `observer.takeRecords`

# Resize Observer

Observe size change to elements

# Intersection Observer

Observe if elements are visible in "viewport"

## Options

- `root`: an element or document that is the **ancestor of the observed
  element**. **Bounding box** of root is considered the **viewport**.
- `rootMargin`
- `threshold`: between 0 and 1, how much of the observed element needs to be
  visible before calling the callback

## References

- [MDN: Intersection Observer](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver)

# Mutation Observer

Observe property changes to elements
