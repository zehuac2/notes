# Motivation

Keep everything

- Debuggable
- Editable
- Modular
  - Scenes should be a blank-slate
  - Prefabs should not reference anything in a particular scene

# Solution

The general idea here is inversion of control (giving a component its
depdencies) , which can be implemented as

- Depedency Injection
- Scriptable Object
  - Use Unity Editor as a scriptable object

## Scriptable Object

A scriptable object (a scriptable object asset) is shared globally, and can be
referenced in the inspector

- This allows two components to read/write the same piece of data as long as
  they reference the same scriptable object
- When one component changes the data, the changes would reflect in the other
  components
- Components still have references, but these references are not scene-dependent
- Entire systems can be built in scriptable object, with the limitation of not
  having updates per frame
- Scriptable objects are not reset when the player exit play mode in the editor.
  They must be designed with this in mind. All serialized properties should not
  be mutated during runtime

### Visual Scripting

All types of variables in visual scripting can reference scriptable objects.
However, **for the sake of ease of use, it is best to reference systems in the
form of scriptable variables as graph variables or application variables**, as
these two types of variables are not specific to a scene or game objects

# Resources

- [Video](https://www.youtube.com/watch?v=raQ3iHhE_Kk)
- [Aricle](https://unity.com/how-to/architect-game-code-scriptable-objects)
