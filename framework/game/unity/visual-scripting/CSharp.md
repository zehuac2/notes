# Overview

- `[RenamedFrom("name")]`

# Custom Unit

```cs
public class Foo : Unit
{
  [DoNotSerialize]
  public ControlInput ControlInput;

  [DoNotSerialize]
  public ControlOutput ControlOutput;

  [DoNotSerialize]
  public ValueInput ValueInput;

  [DoNotSerialize]
  public ValueOutput ValueOutput;

  protected override void Definition() {}

  public ControlOutput Enter(Flow flow) {}
  public AudioClip GetClip()
}
```
