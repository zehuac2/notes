# Overview

- `Sendable` sendable are safe to share concurrently
- `Sendable` types
  - Value types
  - Actor types
  - Immutable classes
  - Internally-synchronized classes
- `@Sendable` functions
  - No mutable captures
  - Caputres must be of sendable types
  - Cannot be both synchronous and actor isolated
- Swift will eventually prevent non-sendable types from being shared
- A type that implement `Sendable` and does not cause compiler errors is
  sendable
