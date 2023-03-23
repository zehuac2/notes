# `NSAnimatablePropertyContainer`

- `NSAnimatablePropertyContainer` is a protocol whose conforming types can
  generate proxy objects used to perform animations with minimal code;
- Conforming types implement a `animations` dictionary that is used to search
  for animations to perform using string keys;

## Implementing

- Cocoa's `NSView` and `NSWindow` conforms to these protocols;
- To provide animations for custom properties, implement the class method
  `defaultAnimation(forKey:)`
  - Return a `CABasicAnimation` object;

### Swift

- Swift implementation must: - Have the animated property marked as "@objc" and
  "dynamic";
  - Have the class method marked as "dynamic";
