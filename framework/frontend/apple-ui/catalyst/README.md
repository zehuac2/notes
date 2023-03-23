# Build Settings

## Optimize Interface for Mac

Xcode has two build mode for catalyst apps

- Scale Interface to Match iPad
- Optimize Interface for Mac

### Differences

- "optimized" would not change the scaling of interface, but "scaled" will scale
  down the interface
- "optimized" would use macOS system controls in place of `UIKit` controls
- "optimized" would not adjust font size, unless the size is hard coded, but
  "scaled" will scale down the text
- "optimized" would use system spacing in auto-layout

## Preventing the Application From Quitting after Window Closes

Only UIKit applications that **supports multiple windows** will be **kept
alive** on macOS after the last window has closed.

# "Installed"

"Installed" property in storyboard builder contains a trait called "Idiom" that
allow you to remove some views for "Mac" and "iPad"

## Architecture

- Catalyst projects would be automatically built to contain code for both intel
  and arm macs
