- [Overview](#overview)
- [`Task.init`](#taskinit)
  - [Actor](#actor)
- [`Task.detached`](#taskdetached)

# Overview

```swift
tasks[id] = Task {
  defer {
    // TODO: what is this?
    tassks[id] = nil
  }

  await someWork()
}

// cancellation
tasks[id].cancel()
```

# `Task.init`

> Like Task.detached(priority:operation:), this function creates a separate,
> top-level task.
>
> Unlike Task.detached(priority:operation:), the task created by
> Task.init(priority:operation:) inherits the priority and actor context of the
> caller, so the operation is treated more like an asynchronous extension to the
> synchronous operation. -
> [Apple Developer Reference](https://developer.apple.com/documentation/swift/task/3856791-init)

## Actor

```swift
import AppKit

func printThreadName(label: String = "?") {
  print("(\(label)) thread id = \(pthread_self())")
}

@MainActor
func foo() {
  printThreadName(label: "MainActor")

  Task {
    printThreadName(label: "MainActor Task")
  }

  Task.detached {
    printThreadName(label: "MainActor Detached")
  }
}


Task {
  printThreadName()
  await foo()
}

// Output:
// (?) thread id = 0x000000016f223000
// (MainActor) thread id = 0x0000000100f34580
// (MainActor Task) thread id = 0x0000000100f34580
// (MainActor Detached) thread id = 0x000000016f453000
```

- The new task is scheduled on the actor's executor
- Ex. a task inheriting `@MainActor` will be scheduled on the main thread

# `Task.detached`

```swift
Task.detached...
```
