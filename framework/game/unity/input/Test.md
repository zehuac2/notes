# Test

- Required assemblies
  - `Unity.InputSystem`
  - `Unity.InputSystem.TestFramework`
- `InputTestFixture` provides isolated environments for testing with input
  systems; either instantiate or subclass `InputTestFixture`
  - `InputTestFixture.Setup()` must be called before input consumer objects are
    created for them to receive inputs
- Use `InputTestFixture.Press...`, `InputTestFixture.Set...`, ... to simulate
  inputs
