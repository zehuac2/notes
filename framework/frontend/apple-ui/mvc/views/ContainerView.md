# Container View

There is not a class named `NSContainerView`. Container views are in fact
`NSView`, but with `viewDidLoad` modified to host a child view controller

## Storyboard

Container views can be added directly with storyboard. This would connect the
host view controller with the children view controllers using segues.

Parent view controller can use the segues to communicate with child view
controllers

```swift
import Cocoa

class MainViewController: NSViewController {
  override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
    print("prepare for segue \(segue.identifier ?? "no name")")
    print("target \(segue.destinationController)")
    super.prepare(for: segue, sender: sender)
  }
}
```
