# Split View

## Split Items

- **Side Bar**: a side bar with translucent background
  - From Big Sur, if the window has "full size content view", then the sidebar
    would be of full height, i.e. spans from top to bottom of the window
  - The sidebar would have a transparent toolbar
- **Content List**
- **Others**

By default, when space is limited, the split items would be collapsed in the
following order

1. **Others**
2. **Side Bar**
3. **Content List**

### Collapsing Items

Split view items can be programmatically collapsed using `.isCollapsed`

```swift
// Without animation
self.splitViewItems[0].isCollapsed = true
// With animation
self.splitViewItems[0].animator().isCollapsed = true
```

### Sidebar

#### Table View

Table view in sidebar should have `.sourceList` style
