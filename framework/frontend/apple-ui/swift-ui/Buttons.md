# Styles

- `ButtonStyle` enables visual customization
- `PrimitiveButtonStyle` enables both visual and behavior customization

## Example

```swift
struct BootstrapButton: ButtonStyle {
  let pressedBackgroundColor = Color(red: 13 / 255, green: 110 / 255, blue: 253 / 255)

  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
      .font(.system(size: 16))
      .foregroundColor(.white)
      .background(in: Rectangle())
      .backgroundStyle(configuration.isPressed ? pressedBackgroundColor : Color.blue)
      .cornerRadius(6)
  }
}

struct Foo: View {
  var body: some View {
    Button("Decrement") {}
      .buttonStyle(BootstrapButton())
  }
}
```

## Example

```swift
struct BootstrapButton: ButtonStyle {
  let pressedBackgroundColor = Color(red: 13 / 255, green: 110 / 255, blue: 253 / 255)

  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
      .font(.system(size: 16))
      .foregroundColor(.white)
      .background(in: Rectangle())
      .backgroundStyle(configuration.isPressed ? pressedBackgroundColor : Color.blue)
      .cornerRadius(6)
  }
}

struct Foo: View {
  var body: some View {
    Button("Decrement") {}
      .buttonStyle(BootstrapButton())
  }
}
```

## Example

```swift
struct BootstrapButton: ButtonStyle {
  let pressedBackgroundColor = Color(red: 13 / 255, green: 110 / 255, blue: 253 / 255)

  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
      .font(.system(size: 16))
      .foregroundColor(.white)
      .background(in: Rectangle())
      .backgroundStyle(configuration.isPressed ? pressedBackgroundColor : Color.blue)
      .cornerRadius(6)
  }
}

struct Foo: View {
  var body: some View {
    Button("Decrement") {}
      .buttonStyle(BootstrapButton())
  }
}
```

## Example

```swift
struct BootstrapButton: ButtonStyle {
  let pressedBackgroundColor = Color(red: 13 / 255, green: 110 / 255, blue: 253 / 255)

  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
      .font(.system(size: 16))
      .foregroundColor(.white)
      .background(in: Rectangle())
      .backgroundStyle(configuration.isPressed ? pressedBackgroundColor : Color.blue)
      .cornerRadius(6)
  }
}

struct Foo: View {
  var body: some View {
    Button("Decrement") {}
      .buttonStyle(BootstrapButton())
  }
}
```
