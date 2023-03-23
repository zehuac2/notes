# Table of Content

- [Table of Content](#table-of-content)
- [Life Cycles](#life-cycles)
  - [`onChange`](#onchange)
- [Variables and Life Cycle](#variables-and-life-cycle)
- [State and Life Cycle](#state-and-life-cycle)
- [Resources](#resources)

# Life Cycles

- `onAppear`: runs a closure when the view has appeared
- `onDisappear`: runs a closure when the view has disappeared
- `onChange(of:perform)`: runs a closure on the **main thread** when a value has
  changed

## `onChange`

- **Fired after change**
- To reference the old value, capture it in a capture list

  ```swift
  struct PlayerView: View {
    var episode: Episode
    @State private var playState: PlayState = .paused

    var body: some View {
        VStack {
            Text(episode.title)
            Text(episode.showTitle)
            PlayButton(playState: $playState)
        }
        .onChange(of: playState) { [playState] newState in
            model.playStateDidChange(from: playState, to: newState)
        }
    }
  }
  ```

# Variables and Life Cycle

Swfit's semantic ensures that

- Instance variable will be ready by the time `var body: some View` is evaluated
- Static variables are evaluated on-demand

This means that some environment variable, like `managedObjectContext` in early
SwiftUI versions, must be stored as instance variable before referencing.
Otherwise, those variables might not be ready for child views' consumption, as
environment variables are injected after child views have been created

# State and Life Cycle

Memory of states asscoiated with views are only allocated after the view has
been added to the view hierarchy. Therefore, there are only two ways to
initialize states

- In callbacks that are invoked when a view has been added to the view
  hierarchy, like `onAppear`

  ```swift
  import SwiftUI

  struct Foo: View {
    @State
    var state: Int

    var body: some View {
      Text("")
        .onAppear {
          state = 0
        }
    }
  }
  ```

- Using `init(initialValue:)` of property wrappers

  ```swift
  import SwiftUI

  struct Foo: View {
    @State
    var state: Int = 0 // will use State.init(initialValue:)

    var body: some View {
      ...
    }
  }
  ```

# Resources

- [The Ultimate Guide to the SwiftUI 2 Application Life Cycle](https://peterfriese.dev/ultimate-guide-to-swiftui2-application-lifecycle/)
