# Settings Modification

Sometimes it is necessary to modify the build setting for testing. ex. add
test-specific scenes

## Play Mode

- `IPrebuildSetup`: execute code before test starts while **running in editor**
  **on a per class basis**
- `[PrebuildSetup]`: allow several classes to share a single implementation of
  `IPrebuildSetup`
- `[assembly: TestPlayerBuildModifier(type)]` and `ITestPlayerBuildModifier`:
  execute code before test starts while **running in actual players**
  - Provides access to `BuildPlayerOptions` that is not available in
    `IPrebuildSetup`

## Resources

[Test Framework](https://docs.unity3d.com/Packages/com.unity.test-framework@1.1/manual/index.html)
[TestPlayerBuildModifier not applied in PlayMode when executed from Editor](https://forum.unity.com/threads/testplayerbuildmodifier-not-applied-in-playmode-when-executed-from-editor.864463/)

# `"testables"`

```json
{
  "testables": ["xxx"]
}
```

`"testables"` specify a list of packages whose tests to be loaded
