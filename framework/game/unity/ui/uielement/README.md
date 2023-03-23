# Concepts

## Callback

```cs
var toggle = new Toggle("Value");
toggle.RegisterCallback<ChangeEvent<bool>>(e => { Debug.Log(e); });
```

To register a callback on an element is to subscribe to an event. Events are
represented using `UnityEngine.UIElements.XXXEvent` types

## Binding

```cs
var boolTarget = (ScriptableBool)target;
var serializedTarget = new SerializedObject(boolTarget);

var defaultValue = new Toggle("Default Value");

defaultValue.BindProperty(serializedTarget.FindProperty("_defaultValue"));
```

Binding syncs a ui element and a model. Models must be subclasses of
`Unity.Object` and wrapped under `SerializedObject` or queried as
`SerializedProperty`

- Models are bound to ui elements using `Bind` or `BindProperty`
