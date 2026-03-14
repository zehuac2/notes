# Overview

```swift
let output = await withTaskGroup(of: String.self) { group -> String in
  for i in 0..<10 {
    group.addTask {
      try! await Task.sleep(nanoseconds: 1000)

      return "\(i)"
    }
  }

  var items = [String]()

  for await item in group {
    items.append(item)
  }

  return items.joined(separator: ", ")
}

// Output:
// 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
print(output)
```

Similar to `async let`, but provides a dynamic amount of concurrency

- Add tasks via `group.addTask`
- Cancellation similars to `async let`:
  - If one task in the group throws, all tasks get cancelled
  - Cancellation not implicit when group goes out of scope
  - `group.cancelAll` cancel all tasks of a group
- Before `withGroup` returns, collect the results by iterating over the group
  object
