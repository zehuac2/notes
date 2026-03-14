# Overview

An autorelease pool releases objects when it is released. In ARC, autorelease
pool can be used to reduce memory usage in long running functions by releasing
memory before the function goes out of scope.

- Use `@autoreleasepool {}` in ARC
  - Also works in Swift
- Use `NSAutoreleasePool` in MRC
