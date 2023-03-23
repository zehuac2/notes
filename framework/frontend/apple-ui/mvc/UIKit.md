# View Hierarchy

```
UIScreen -> UIWindowScene -> UIWindow -> UIView
```

- `UIScene`
  - Contains UI
  - Managed by system
  - `UISceneSession`
    - Role defined by system
    - Created for new application representations
    - Scenes connect and disconnect from sessions
    - Scenes are not always connected to sessions

The state of the application is the state of a session with the most foreground
state. Ex. when a single session enters foreground, the entire application
enters foreground

# Life Cycle

- `UIApplication`: state of the **process**
- `UIApplicationDelegate`: events and the life cycle of the **process**
- `UIWindowScene`: state of the **UI**
- `UIWindowSceneDelegate`: events and the life cycle of the **UI**
- `UISceneSession`: persisted state of the **UI**
  - `persistentIdentifier`: same string for the same scene
  - `userInfo`: a dictionary to store data to

Scenes are managed using

- `UIApplication.requestSceneSessionActivation(self, ...)`
- `UIApplication.requestSceneSessionRefresh(self, ...)`
  - Can be used to update the snapshot of a scene session
- `UIApplication.requestSceneSessionDestruction(self, ...)`

# State Restoration

- Requested from `UISceneDelegate`
- Accessible via `UISceneSession.stateRestorationActivity`

# Resources

- [Stanford iOS](https://www.youtube.com/c/StanfordiOS)

## Animations

- [Advanced Animations with UIKit](https://developer.apple.com/videos/play/wwdc2017/230/)
