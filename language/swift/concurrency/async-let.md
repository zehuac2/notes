# Overview

```swift
async let result = expression

await result

// if result throws
try await result
```

- **Evaluation of concurrent binding**
  1. **Create child task**
  2. Parent task binds child task to a placeholder value
  3. Parent task runs following statement
  4. Wait for completion of child task when the child task is needed
- Reading result a second time will not cause another child task to start
- Child task is marked as canceled, if the parent task is canceled
- **Subjected to cancellation propagation**
