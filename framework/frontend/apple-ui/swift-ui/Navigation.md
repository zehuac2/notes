# Table of Contents

- [Table of Contents](#table-of-contents)
- [Overview](#overview)
  - [Navigation Styles](#navigation-styles)
  - [Navigation Links](#navigation-links)
- [Layouts](#layouts)
  - [Three-Column Layout](#three-column-layout)
- [Programatic Control](#programatic-control)
  - [Presenting Views](#presenting-views)
  - [Dismissing Views](#dismissing-views)
- [Resources](#resources)

# Overview

Navigation views can be used in two ways

- Using `NavigationLink`

  ```swift
  struct TodoDetail: View {
    var todo: String

    var body: some View {
      NavigationView {
        NavigationLink("A", destination: Text("Child A"))
        NavigationLink("B", destination: Text("Child B"))
      }
    }
  }
  ```

  - `NavigationView` must be the parent of `NavigationLink`

- Not using `NavigationLink`

  ```swift
  struct TodoDetail: View {
    var body: some View {
      Sidebar()
      Primary()
      Secondary()
    }
  }
  ```

- **On platforms where multiple columns can coexist, regardless if
  `NavigationLink` is involved, the number of views in `NavigationView`'s
  content will dictate how many columns there are**

  ```swift
  // Three column layout
  Navigation View {
    List {
      ...
    }

    EmptyView()
    EmptyView()
  }
  ```

  When place holder views are specified, **lists will use appropriate styles**
  depending on where they are on in the navigation view

## Navigation Styles

- `StackNavigationViewStyle`: compact width devices (ex. iPhone)
- `DoubleColumnNavigationViewStyle`: wide width devices (ex. Mac)

`NavigationView` would pick what's best for the platform by default

## Navigation Links

- Navigation links are buttons, **therefore can be styled using
  `.buttonStyle(_)`**

# Layouts

## Three-Column Layout

- Using `NavigationLink`

  ```swift
  struct Secondary: View {}
  struct Primary: View {
    var body: some View {
      NavigationLink("Link", destination: Secondary())
    }
  }

  struct Sidebar: View {
    var body: some View {
      NavigationLink("Link", destination: Primary())
    }
  }

  struct Root: View {
    var body: some View {
      NavigationView {
        Sidebar()
      }
    }
  }
  ```

- Not using `NavigationLink`

  ```swift
  var body: some View {
    Sidebar()
    Primary()
    Secondary()
  }
  ```

# Programatic Control

## Presenting Views

```swift
struct ContentView: View {
  @State
  var todos: [String] = ["Todo 1", "Todo 2"]

  @State
  var selection: String? = nil

  var body: some View {
    NavigationView {
      List {
        ForEach(todos, id: \.self) { todo in
          NavigationLink(
            todo, destination: TodoDetail(todo: todo), tag: todo, selection: $selection)
        }
        .onDelete { path in
          withAnimation {
            todos.remove(atOffsets: path)
          }
        }
      }
      .listStyle(SidebarListStyle())
      .navigationTitle("Todos")
    }
  }
}
```

`NavigationLink` offers two sets of parameters that enable programmatic control
of navigation

- `tag` and `selection`
- `isActive`

## Dismissing Views

`PresentationMode.dismiss(self:)` eanbles the programmtic dismiss of a view

- Accessed via `@Environment(\.presentationMode)`

# Resources

- [Triple Trouble](https://kean.blog/post/triple-trouble): how to do three
  column layout
