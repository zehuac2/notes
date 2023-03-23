# Overview

- Modification to observables must be put inside actions
  - Observable created using `makeAutoObservable` already have their modifiers
    contained in actions
- Actions are run inside transactions. No reactions will be run until the
  outermost action (i.e. reaction) has finished
