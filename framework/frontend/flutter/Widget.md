- [Stateless Widgets](#stateless-widgets)
- [Stateful Widgets](#stateful-widgets)
  - [Life Cycles](#life-cycles)
- [Inherited Widgets](#inherited-widgets)
- [Rendering](#rendering)

# Stateless Widgets

# Stateful Widgets

Stateful widget is made of two classes

- A subclass of `StatefulWidget`: holds the configuration of the widget
- A subclass of `State<Widget>`: holds the state of the widget
  - `this.widget` points to the `StatefulWidget` subclass

## Life Cycles

1. `initState`: called after the state has been initialized
2. `didUpdateWidget(oldWidget)`: called after the widget pointed to by the state
   to has been updated

# Inherited Widgets

# Rendering

Flutter maintains three trees

- **Widget tree**:
  - Holds config for a piece of UI
  - Has public API
- **Element tree**:
  - Represents an actual piece of UI
  - Holds refs, manages trees (life cycle)
- **Render object tree**:
  - Knows about size, layout painting and compositing

[How Flutter Renders Widgets](https://www.youtube.com/watch?v=996ZgFRENMs)
