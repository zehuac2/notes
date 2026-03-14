# Non-Initial Custom Publishers

```swift
extension Publishers {
  struct Difference<Upstream>: Publisher
  where
    Upstream: Publisher,
    Upstream.Output: BidirectionalCollection,
    Upstream.Output.Element: Equatable
  {
    typealias Collection = Upstream.Output
    typealias Element = Upstream.Output.Element

    fileprivate class _Subscriber<Downstream>: Subscriber
    where
      Downstream: Subscriber,
      Downstream.Input == CollectionDifference<Element>?,
      Downstream.Failure == Upstream.Failure
    {

      typealias Input = Collection
      typealias Failure = Upstream.Failure

      var downstream: Downstream
      var previous: Collection?

      init(downstream: Downstream) {
        self.downstream = downstream
      }

      func receive(_ input: Collection) -> Subscribers.Demand {
        if let previous = self.previous {
          let difference = input.difference(from: previous)

          return self.downstream.receive(difference)
        }

        self.previous = input

        return self.downstream.receive(nil)
      }

      func receive(subscription: Subscription) {
        return self.downstream.receive(subscription: subscription)
      }

      func receive(completion: Subscribers.Completion<Upstream.Failure>) {
        return self.downstream.receive(completion: completion)
      }
    }

    typealias Output = CollectionDifference<Element>?
    typealias Failure = Upstream.Failure

    var upstream: Upstream

    init(upstream: Upstream) {
      self.upstream = upstream
    }

    func receive<S>(subscriber: S)
    where S: Subscriber, Self.Failure == S.Failure, Self.Output == S.Input {
      self.upstream.receive(subscriber: _Subscriber(downstream: subscriber))
    }
  }
}

extension Publisher where Output: BidirectionalCollection, Output.Element: Equatable {
  func difference() -> Publishers.Difference<Self> {
    return Publishers.Difference(upstream: self)
  }
}
```

A non-initial custom publisher implements a private subscriber that performs
data processing and it pass to the publisher's subscribers
