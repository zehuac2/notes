- [Overview](#overview)
- [Isolation](#isolation)
- [Global Actors](#global-actors)
  - [Executor](#executor)

# Overview

```swift
actor ProtectedData {
  var str: String

  init(str: String) {
    self.str = str
  }
}
```

`actor` provide synchronization for shared mutable state

- State of actors are isolated from the rest of the program; **all access to the
  states has to go through the actor**; **the actor ensures mutually-exclusive
  access to its state**
- Actors are **classes, i.e. reference types but different**:
  - **No inheritance**
  - **Everything is protected** against race condition
- **Outside of an actor instance**, data are accessed in a **protected** mannor:
  - **Getters** become `var name: String { get async }`
  - TODO: **setters**
  - **Functions** become `func foo() async -> String`
- **Reentrancy**:
  - Perform mutation in synchronous code
  - Expect that actor state can change during suspension
  - Check assumptions about state after `await`

# Isolation

- **Static functions are not isolated** in actors
- Calls to isolated functions from the same isolated contexts are synchronous,
  without interruptions
  - **Within an actor** instance, i.e. instance methods, getters, setters,
    **data are accessed the same way as in classes**

```swift
books.reduce {
  // isolated
}

Task.detached {
  // not isolated
}
```

- Closures formed within the same isolated contexts are isolated
- `nonisolated` makes allows a function to satisfy synchronous protocol
  requirement while still being syntactically in the actor; cannot access
  mutable state in nonisolated functions

# Global Actors

Global actors have executors. Executors can run jobs

- If a **function is marked** with a global actor, the function will be
  **executed on the actor's executor**
  - **Properties and closures are considered to be special functions** -** Call
    outside of the context** of the marking actor **must be marked with
    `await`**
- If a **class is marked** with a global actor, then **all properties and
  functions** of the class will be **marked with the global actor**
  - Use `nonisolated` to opt out of this behavior
- Global Actors
  - `@MainActor`: executor executes on the main thread

## Executor

An actor context is available only if the context is marked with a global actor

- [Tasks inherit actor contexts](Task.md)
