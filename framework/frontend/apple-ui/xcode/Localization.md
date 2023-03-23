# Overview

Localizations can be done in the following ways

- `Localizable.strings`: a table that map labels to texts
- `Localizable.stringsdict`: like `.strings`, but also handle plurals

Localization files are put under `<language>.lproj` folders and would be copied
to application bundles.

# Authoring

## `.strings`

```
"label" = "text";
```

# Consumption

## SwiftUI

```swift
Text("label")
Text("label", bundle: Bundle.main)
```

By default, SwiftUI components would try to find localization files in the main
bundle.
