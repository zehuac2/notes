- [Tools](#tools)
- [Rules for Features](#rules-for-features)
  - [Modularize by Systems, Not by Game Entities](#modularize-by-systems-not-by-game-entities)
  - [Systems Implemented Using Scriptable Object Should Be Stateless](#systems-implemented-using-scriptable-object-should-be-stateless)
- [Rules for Testing](#rules-for-testing)
  - [Avoid Using Tags in Tests](#avoid-using-tags-in-tests)

# Tools

- [**Scriptable Objects**](ScriptableObject.md)
- **Interfaces**: `GetComponent` can query interfaces
- **Assemblies**

# Rules for Features

## Modularize by Systems, Not by Game Entities

## Systems Implemented Using Scriptable Object Should Be Stateless

These systems can hold configurations, but runtime data should be avoided for
the following reasons

- **Lost Data**: scriptable objects get released as soon as no components are
  referencing them
- **No Reset Between Levels**: there is no guarantee that scriptable objects are
  reset between levels. This can cause scriptable objects to contain dangling
  references
- **Messy Version Control**: modification to serialized properties in scriptable
  objects during game play gets saved to disk
  - **Property setters should be internal** and only exposed to testing
    assemblies

# Rules for Testing

## Avoid Using Tags in Tests

Tags require the project to be configured in specific ways. Avoid using tags in
unit tests so that when project configuration changes with game design, tests do
not need to be changed.
