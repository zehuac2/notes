# Custom View

```swift
import UIKit

class CustomView: UIView {
  @IBOutlet
  weak var label: UILabel!

  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubviews()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    addSubviews()
  }

  fileprivate func addSubviews() {
    let subview = Bundle.main.loadNibNamed(
      "CustomView", owner: self, options: nil)?.first as! UIView

    addSubview(subview)

    subview.translatesAutoresizingMaskIntoConstraints = false

    subview.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
    subview.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    subview.topAnchor.constraint(equalTo: topAnchor).isActive = true
    subview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
}
```

- **Creating the Custom View**
  - Create a xib file with a view in it
  - Use the `CustomView` as the "File Owner" (CustomView has links to views in
    xib)
  - Load the views of the nib file in `CustomView`'s initializers
    - Don't forget to assign owner as `self`
- **Using the Custom View**: instantiate custom view

# Interface Builder

- Annotate a view with `@IBDesignable` would render the view in interface
  builder
- Annotate a property with `@IBInspectable` would list the property in interface
  builder
- `prepareForInterfaceBuilder` would be called when after an object has been
  instantiated in the interface builder. Override this method to provide an
  appearance just for interface builder
