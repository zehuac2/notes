# Concepts

TextKit follows MVC design pattern

- **Models**:
  - [`NSTextStorage`](TextStorage.md)
    - A text storage can have multiple layout managers
    - Add layout manager using `NSTextStorage.addLayoutManager`
  - `NSTextContainer`: contains information on where on the screen texts are
    drawn
- **Views**:
  - `UITextView`: iOS
  - `NSTextView`: macOS
- **Controller**:
  - `NSLayoutManager`: controls how texts are laid out on views
    - A layout manager can have multiple text containers
    - Add text container using `NSLayoutManager.addTextContainer`

# Resources

- [WWDC 2018: TextKit Best Practices](https://developer.apple.com/videos/play/wwdc2018/221/)
