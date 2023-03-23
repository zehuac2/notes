# `ForEach`

- `ForEach(0..<5)` **can only be used with constant range**
  - View identities are generated using offset and are stable
- `ForEach(collection, id: \.tagID)` should be used with dynmaic data
