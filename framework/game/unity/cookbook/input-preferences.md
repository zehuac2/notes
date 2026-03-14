```cs
// Prevents the asset on disk from being modified
InputActionAsset clone = ScriptableObject.Instantiate(PlayerInput.actions);

InputAction cameraAction = clone[CameraAction];
string scaleVector2D = string.Format(
  "ScaleVector2(x={0}, y={0})", CameraSensitivity.RuntimeValue);

for (int i = 0; i < cameraAction.bindings.Count; i++)
{
  cameraAction.ChangeBinding(i)
    .WithProcessor(scaleVector2D);
}

PlayerInput.actions = clone;
```
