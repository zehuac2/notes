# Overview

Recall that static constructors in C# is called only before the first
instantiation or the first static member access.

- `[UnityEditor.InitializeOnLoad]` initialize a class on recompilation/domain
  reload
  - Call the static constructor
- `[UnityEngine.RuntimeInitializeOnLoadMethod]` call a method when the game is
  loaded at runtime
  - Called after the game has been loaded, i.e. after `Awake()`
