# Phantom Types

Phantom types are types that takes a generic parameter, aka. tags but the
generic type is never used in the definition of the containing type

- Aliases can then be formed from these generic types, but with tags filled in
- Tags should be empty enum types, which cannot be instantiated

```swift
struct Named<Tag> {
  var name: String
}

enum StateTag {}
enum CapitalTag {}

typealias State = Named<StateTag>
typealias Capital = Named<CapitalTag>
```

## Motivation

Swift does not consider different aliases of the same type different, but
considers generic types with different generic parameters different.

- Enables more compile time checks

## Use Cases

- Foundation's `Measure<Unit>`
