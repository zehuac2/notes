- [Overview](#overview)
  - [Seven Stages of Action](#seven-stages-of-action)
  - [User Research](#user-research)
  - [Service Recovery](#service-recovery)
- [State](#state)
- [Presenting Options](#presenting-options)
  - [Fitts's Law](#fittss-law)
  - [Menu](#menu)
  - [Affordance](#affordance)
- [Transition](#transition)
  - [Feedback](#feedback)
  - [Problems Around Feedback](#problems-around-feedback)
  - [Direct Manipulation](#direct-manipulation)
- [Usability Heuristics](#usability-heuristics)
- [Related Notes](#related-notes)

# Overview

The primary goal of any user interface is to help the user accomplish a goal.

- Designers must know this goal and create interaction that helps users
  accomplish it
  - Designers must [guide the user's attention](Attention.md)
  - Use [grid](Grid.md) to present information
  - Designs should be [accessible](Accessibility.md)
  - Present dense information with clear structure and short headings
  - Use [presentation notes](presentation/README.md) to shape visual hierarchy,
    color, and form
  - Include a way for users to discover features
    - Make it obvious
    - Enable by default
- Large goals must be broken into smaller goals
- There are no goals such as "just browsing"
- Explain unfamiliar systems in terms users actually need
  - Ex. how payment works
  - Ex. how insurance works

For complex goals, break the task into

- States
- Options
- Transitions

## Seven Stages of Action

1. Form a goal
2. Execution: Plan the action
3. Execution: Specify the action sequence
4. Execution: Perform the action sequence
5. Evaluation: Perceive the state of the world
6. Evaluation: Interpret the perception
7. Evaluation: Compare the outcome with the goal

## User Research

- One person is tested
- One person observes them using the prototype without answering questions
- One person takes notes quietly

## Service Recovery

When people reach customer service, they are often already exhausted.

- If automation cannot solve the problem, make it easy to reach a human
- Proactively provide updates while the issue is unresolved
- Honor callback promises and set expectations clearly

# State

- Each state should have a subgoal
- Inform the user of their current state
- In each state, provide relevant options

# Presenting Options

Ways of displaying an action:

- List (around 10 options)
- Tree (around 100 options)
- Search (around 1000 options)

## Fitts's Law

$$
t = a + b * \log\left( \frac{2D}{S} \right)
$$

- $t$: time to move the pointer to the target
- $D$: distance from the pointer to the center of the target
- $S$: size of the target
  - **Targets on the edge of display have infinite size and therefore faster to
    click**
- $a$: delay of input device
  - Determined by regression
- $b$: acceleration of input device
  - Determined by regression

## Menu

- Tunneling Menus: Submenus are positioned close to the parent menu item that
  activate them
- Make frequent actions easier to access
  - Irrelevant actions create distractions
- Prevent errors

## Affordance

Signifiers help users see what they can do.

- Perceived affordance: push
- Affordance: push
- Signifier: a handle you can lean on and push
- Feedback: push, depress handle

# Transition

- User needs to evaluate the result of their actions by perceiving feedback

## Feedback

Every time there is an action, there should be feedback.

- Sound
- Sight
- Smell
- Touch/Haptic
- Feedback should arrive as soon as possible
- If a task takes noticeable time, show a loading indicator
- See [Performance](Performance.md) and [Motion](Motion.md) for timing details

## Problems Around Feedback

| Situation                               | Feeling     | Action                                                    |
| --------------------------------------- | ----------- | --------------------------------------------------------- |
| **No feedback**                         | confusion   | more energy is spent on accomplishing the goal            |
| **Too little feedback**                 | frustration | more energy is spent on accomplishing the goal            |
| **Too much feedback**                   | annoyed     | all feedbacks are ignored                                 |
| **Feedback too late**                   | uncertain   | find another way to accomplish the goal                   |
| **Feedback not continuous**             | uncertain   | frequently ask the system for feedback                    |
| **Feedback does not communicate state** | no closure  | user continues performing actions from the previous state |

## Direct Manipulation

- Direct manipulation interfaces help users directly execute an action and
  immediately evaluate feedback
- Properties: interfaces must meet all of these to count as direct manipulation
  - Objects are represented visually
  - Actions are rapid, incremental and reversible
  - Users interact directly with object representations
- Examples: drag and drop, scroll bars, resize handles, spreadsheet cells

# Usability Heuristics

Nielsen's 10 usability heuristics

- Visibility of system status
- Match between system and real world
- User control and freedom: users should be able to quickly make choices,
  correct mistakes or backtrack (undo and redo)
- Consistency and standards: follow platform conventions
- Error prevention
- Recognition rather than recall (ex. autocomplete)
- Flexibility and efficiency of use (ex. keyboard shortcuts)
- Aesthetic and minimalist design: Dialogues should not contain information
  which is irrelevant or rarely needed. Every extra unit of information in a
  dialogue competes with the relevant units of information and diminishes their
  relative visibility
- Help users recognize, diagnose, and recover from errors
- Help and documentation: Documentation should be easy to search, focused on the
  user's task, list concrete steps to be carried out, and not be too large.

# Related Notes

- [Motion](Motion.md)
- [Performance](Performance.md)
- [Presentation](presentation/README.md)
