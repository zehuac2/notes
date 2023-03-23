# Overview

- `@GestureState`: reset to initial value after gesture finishes

# Animation

```swift
import SwiftUI

struct PixelLayerView: View {
  @Binding
  var layer: PixelLayer

  @State
  var offset: CGSize = .init(width: 0, height: 0)

  @State
  var scale: CGFloat = 1.0

  @GestureState
  var gestureOffset: CGSize = .init(width: 0, height: 0)

  @GestureState
  var gestureScale: CGFloat = 1.0

  var _drag: some Gesture {
    DragGesture()
      .updating($gestureOffset) { value, state, transaction in
        state = value.translation
      }
      .onEnded { value in
        offset.width += value.translation.width
        offset.height += value.translation.height
      }
  }

  var _magnification: some Gesture {
    MagnificationGesture()
      .updating($gestureScale) { value, state, transaction in
        state = value
      }
      .onEnded { scale in
        self.scale *= scale
      }
  }

  var body: some View {
    Canvas { context, size in
      context.translateBy(
        x: offset.width + gestureOffset.width,
        y: offset.height + gestureOffset.height)

      context.scaleBy(x: scale * gestureScale, y: scale * gestureScale)

      context.fill(
              Path(ellipseIn: CGRect(origin: .zero, size: size)),
              with: .color(.green))
    }
    .gesture(_drag)
    .gesture(_magnification)
    .toolbar {
      ToolbarItemGroup {
        Menu {
          Button("Pencil") {}
          Button("Brush") {}
        } label: {
          Image(systemName: "pencil")
        }

        Menu {
          Button("Rectangle") {}
          Button("Circle") {}
        } label: {
          Image(systemName: "rectangle")
        }
      }
    }
  }
}
```

- Use `@State` to store the permanent state
- Use `@GestureState` to store update to the permanent state
- In `body`, combine the permanent state and the update to the permanent state
