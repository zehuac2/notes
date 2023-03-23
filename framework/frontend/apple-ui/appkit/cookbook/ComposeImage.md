# Compose Image File

1. Create `CGContext` instance
2. Use `makeImage()` to get CGImage instance
3. Create `NSBitmapImageRep` instance and use
   `representation(using: properties:)` to export `Data` instance
4. Save `Data` instance

```swift
import AppKit

let image = CGContext(
  data: nil,
  width: 100,
  height: 100,
  bitsPerComponent: 8,
  bytesPerRow: 0,
  space: CGColorSpaceCreateDeviceRGB(),
  bitmapInfo: CGImageAlphaInfo.noneSkipFirst.rawValue)!

image.setFillColor(NSColor.systemOrange.cgColor)
image.fill(CGRect(x: 0, y: 0, width: 100, height: 100))

let imageRep = NSBitmapImageRep(cgImage: image.makeImage()!)
let imageData = imageRep.representation(using: .png, properties: [:])!

try! imageData.write(to: URL(fileURLWithPath: "image.png"))
```
