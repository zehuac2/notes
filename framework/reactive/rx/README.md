# Observable

## Custom Observable

`new Observable(subscriber => Teardown)`

- `Teardown` will be called during finalization

# Operator

An operator is defined as `(observable1) => observable2`

- Use `pipe` to create other observables by composing existing operators

# Naming Convention

By convention, observables from `Rx` libraries are postfixed with a `$` (ex.
`event$`)
