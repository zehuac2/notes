- [Overview](#overview)
- [Subscribers](#subscribers)
- [Publishers](#publishers)
  - [Common Publisher](#common-publisher)

# Overview

- **`protocol Publisher`** publishes value
- **`protocol Subscriber`** receives value
- **`protocol Subscription`** represents the relationship between publisher and
  subscriber; extend `protocol Cancellable`
  - Most convenient (ex. `.sink`) subscribers returns a `class AnyCancellable`
    as subscription. `AnyCancellable` **automatically cancels on
    deinitialization**

# Subscribers

Subscribers consumes inputs from its upstream using `recieve(self, ...)` methods

- Some subscribers pass inputs to a downstream

- Subscribers implement `Subscriber` protocol
  - If a subscriber is not a reference type, it must explicitly implement
    `CustomCombineIdentifierConvertible`
- Subscribers are passed to publishers

# Publishers

Publishers emits outputs to its subscribers

- Subscribers are registered using `receive(self, subscriber:)`
- Try to avoid `protocol Publisher` in return types, use `AnyPublisher` instead

## Common Publisher

- `AnyPublisher<Output, Failure>`: **type erased publisher**; can be constructed
  using `.eraseToAnyPublisher()` or `AnyPublisher.init` from existing publisher
- `Record<Output, Failure>`: a publisher that **records a series of inputs** and
  a completion for **later playback** to each subscriber
- `Future<Output, Failure>`: a publisher that **eventually produces a single
  value** and **then finishes or fails**
- `Just<Output, Failure>`: a publisher that **immediately produces a single
  value** and **then finishes**
- `Deferred<Publisher>`: a publisher that **creates a publisher for each new
  subscriber**
- `Fail<Output, Failure>`: a publisher that fails
- `Empty<Output, Failure>`: a publisher that never emit outputs and optionally
  completes
