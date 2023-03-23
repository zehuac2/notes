# Navigation Bar

Navigation bar should be hidden on the mac and instead implemented as buttons on
the bottom of a window

```swift
class ViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    if traitCollection.userInterfaceIdiom == .mac {
      navigationController?.setNavigationBarHidden(true, animated: false)
    }
  }
}
```
