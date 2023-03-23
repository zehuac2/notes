- [Overview](#overview)
  - [Devices](#devices)
  - [Actions](#actions)
    - [Action Type](#action-type)
  - [Bindings](#bindings)
    - [Binding Composite](#binding-composite)
    - [Interactions](#interactions)
    - [Processors](#processors)
  - [Control Scheme](#control-scheme)
  - [Action Maps](#action-maps)
  - [Actions (Asset)](#actions-asset)
- [Consuming Inputs](#consuming-inputs)
  - [`PlayerInput` (Component)](#playerinput-component)
  - [`IInputActionCollection` Generation](#iinputactioncollection-generation)

# Overview

## Devices

- **Gamepad** is two thumbsticks, a D-pad, and four face buttons
  - Xbox Controller
  - Playstation Controller
  - Switch
  - Etc.

## Actions

For more information, visit [InputAction](InputAction.md)

### Action Type

- **Value**: monitor changes to controls bound to the action, but only take the
  most activated one driving the action and only report values of that control
  - When enabled initially, perform state check of all bound controls and report
    values of the activated controls
- **Button**: similar to `Value`, but only bound to `ButtonControl`, does not
  perform initial check
- **Pass through**: similar do `Value`, but does report all values of all
  controls bound to an action

## Bindings

- **Bindings** trigger actions by feeding the action with values
- **Path** The hardware event that make the make the binding fire

For more information, visit [Binding](Binding.md)

### Binding Composite

- Binding to a single path only produces one value
- **Binding composite** composes a complex type from different children bindings
- Two children composite can perform the same compositions
  - Up arrow
  - W

### Interactions

- Interactions configure how the binding would trigger the actions (ex. hold)

### Processors

`InputAction.processor` returns a comma separated list of processors

## Control Scheme

A way to group bindings to target different sets of input devices

- A control scheme is active if all of its required devices are active
- A single device cannot satisfy two control schemes at the same time
- A binding is only active if the control scheme it is assigned to is active
  - Binding with no control scheme is in the global control scheme, which is
    always active
- Change in control scheme results in action being reset to default value

## Action Maps

- **Actions maps** are collections of actions
- Actions in the map can be edited at run time

## Actions (Asset)

An **action assets** is used to save the configurations of multiple action maps

# Consuming Inputs

## `PlayerInput` (Component)

- A "Player Input" object can be attached to a game object that would handle the
  following automatically
  - Scheme switching
  - Default map
  - Event firing (fire on Monobehavior objects)
  - Local multiplayer (including split screen)

## `IInputActionCollection` Generation

An implementation of `IInputActionCollection` can be generated from the asset
file that can be used to listen to the inputs

- Instances **must be explictly enabled**
