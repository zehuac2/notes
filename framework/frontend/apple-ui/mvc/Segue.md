# Unwind Segue

Unwind segue dismiss/pop the current view controller. To add an unwind segue:

- At least one controller has to implement a `@IBAction` function that has
  either a named or unnamed parameter of `UIStoryboardSegue`
  - The function would be called after unwind occurs; and the controller would
    be navigated to
  - Useful for updating values
- Connection actions from controls to the **Exit icon** in the storyboard scene
  - No edges are drawn for this segue, but it can be found in the left tree view
