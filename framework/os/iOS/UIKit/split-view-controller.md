# Split View Controller

## Concepts

- **Master view**: primary view
- **Detailed view**: secondary view

# Split View Controller Delegate

## Collapsing

```swift
func splitViewController(
  _ splitViewController: UISplitViewController,
  collapseSecondary secondaryViewController: UIViewController,
  onto primaryViewController: UIViewController) -> Bool
{
  return true
}
```

- Called when the split view controller needs to create a **collapsed** view
- Return `true` to collapse the secondary view controller
- Return `false` to let the view controller incorporate (likely not collapse)
  the secondary view controller
