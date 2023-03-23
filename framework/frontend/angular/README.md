- [Concepts](#concepts)
- [CLI](#cli)
  - [Cache](#cache)
- [Rendering](#rendering)
  - [Advantages](#advantages)
  - [Disadvantages](#disadvantages)

# Concepts

- [Components](Component.md) and [directives](Directive.md) are a **part of the
  view**
  - Components and directives can implement [life cycle hooks](LifeCycle.md)
- A service is a class whose **instances can be
  [injected](DependencyInjection.md) into other instances**
- A module defines a **collection of components and services**, and **make other
  components and services visible to its components and services by importing
  other modules**
  - Modules are in the process of being made optional

# CLI

## Cache

By default, angular enables caching to improve build time. To disable this
behavior, run `ng config cli.cache.enabled false`

# Rendering

Angular renders app using incremental dom, i.e. templates are compiled into a
series of HTML instructions to create and update the DOM in place. This means:

- Attributes and properties defined in templates are directly stored in DOM
- Component selectors will be directly put in DOM
  ```html
  <app title="My App">
    <h1>Hello</h1>
    <editor ng-reflect-model="[object Object]"></editor>
  </app>
  ```
  - `model` is a non standard HTML element

## Advantages

- Less memory
- Tree shakable; virtual dom requires an interpreter

## Disadvantages

- DOM won't be as clean as frameworks using virtual dom. There will be many non
  standard HTML elements and attributes
