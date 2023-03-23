# Layers

- Beginning from macOS 10.14, **all views and windows are rendered using core
  animation layers**;
  - Views will either have a dedicated layer or share a layer with other views;
- **A view's "layer" property will not be `nil`** (might be different subclass
  of "CALayer");
- **Do not set a view's `wantsLayer` property explicitly**; this prevents layer
  merging;

# Implicit Animations

Implicit animations can be done by

- Set `allowsImplicitAnimation` of a `NSAnimationContext` instance to `true`
- Use animator proxy

# Explicit Animations

Explicit animations are tricky with `AppKit`, as `NSView` are not backed by
`CALayer`, where `CAAnimation` instances are added to.

For a list of layer properties that cannot be modified, see
https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CoreAnimation_guide/CreatingBasicAnimations/CreatingBasicAnimations.html#//apple_ref/doc/uid/TP40004514-CH3-SW16
