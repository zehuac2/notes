# Candidates for UI Testing

- Demo Sequences
- Common Workflows
- Custom Views
- Document Creation, Saving and Opening

# Primary APIs

As the test case interact with the application, the existence of the UI elements
would be automatically validated. `.exists` explicitly tests if an element
exists

## `XCUIApplication`

A proxy to the tested application

- Tests run in a separate process
- Launch a test application creates a new process and terminate any existing
  process

## `XCUIElement`

A proxy for elements in the application

- Elements have types (ex. Buttons) and identifiers (ex. label, title)
- Elements are put inside a tree
- Elements must be unique
- Also used to synthesize events (platform specific)
- Elements are evaluated on-demand
  - Elements are re-evaluated when UI changes
- Elements and queries are just specifications in an application

## `XCUIElementQuery`

A query resolve to a collection of elements

- Express relationships (children, descendents and containments)
  - Children are only one level below a child
- Express filtering
  - `.matchingPredicate`
- Queries can be contained together
- Elements can be accessed using
  - Subscripts: `staticTexts["Label"]`
  - Indexing: `elementAtIndex`
  - Unique: `.element`
- Quries are evaluated on-demand
  - Re-evaluated when UI changes
- Methods
  - `.descendentsMatchingType(_:)` aka. `.button`, `.cells` ...
  - `.childrenMatchingType(_:)`
  - `.containingType(...)`

# Debugging

The better the accesibility, the better the testing

- Not accessible by default
  - Custom view subclasses
  - Graphics objects
- Tools for accessibility
  - UI test recorder
  - Storyboard
    - Customize type
    - Customize identifier
  - Accessibility Inspector
    - `Command + F7`: highlight element below cursor
  - APIs: `UIAccessibility` and `NSAccessibility`

# Tools

- Xcode allows you to record interaction with the application
- Xcode test report includes screen shots of the interface at each step in
  testing

# Resources

- [UI Testing in Xcode](https://developer.apple.com/videos/play/wwdc2015/406/)
