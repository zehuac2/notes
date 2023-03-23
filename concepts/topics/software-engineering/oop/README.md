- [Overview](#overview)
  - [Single Responsibility](#single-responsibility)
  - [Closed](#closed)
  - [Liskov Substitution](#liskov-substitution)
  - [Interface Segretation](#interface-segretation)
  - [Dependency Inversion](#dependency-inversion)
- [Topics](#topics)
- [References](#references)

# Overview

5 principles of object oriente design

1. **S**: single responsibility
2. **O**: closed
3. **L**: Liskov substitution
4. **I**: interface segregation
5. **D**: dependency inversion

## Single Responsibility

> There should never be more than one reason for a class to change."[5] In other
> words, every class should have only one responsibility

## Closed

> Objects or entities should be open for extension but closed for modification.

## Liskov Substitution

> Let q(x) be a property provable about objects of x of type T. Then q(y) should
> be provable for objects y of type S where S is a subtype o

## Interface Segretation

> A client should never be forced to implement an interface that it doesn’t use,
> or clients shouldn’t be forced to depend on methods they do not use.

## Dependency Inversion

Entities must depend on abstractions, not on concretions. It states that the
high-level module must not depend on the low-level module, but they should
depend on abstractions.

# Topics

- [Humble Object](HumbleObject.ipynb)
- [Clean Architecture](Clean.md)

# References

- [Wikipedia: SOLID](https://en.wikipedia.org/wiki/SOLID)
