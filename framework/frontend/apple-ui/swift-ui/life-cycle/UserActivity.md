- [Advertise User Activity](#advertise-user-activity)
- [Handle User Activity](#handle-user-activity)

# Advertise User Activity

**Advertise user activity**: save user activity for restoring state, spot light
search and handoff

```swift
struct MyView {
  var body: some View {
    SomeView()
      .userActivity("activity") { activity in
        // initialize user activity
      }
  }
}
```

# Handle User Activity

```swift
struct MyView {
  var body: some View {
    SomeView()
      .onContinueUserActivity("activity") { activity in
        // handle user activity
      }
  }
}
```
