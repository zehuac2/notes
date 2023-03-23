- [Overview](#overview)
- [Type Predicate](#type-predicate)

# Overview

Given a union type `t = a | b`, the type checker can contextually determine if
`t` is `a` or `b` using the following information

- Type Predicates

# Type Predicate

```ts
function isFish(pet: Fish | Bird): pet is Fish {
  return (pet as Fish).swim !== undefined;
}

let pet = getSmallPet();

if (isFish(pet)) {
  pet.swim();
} else {
  pet.fly();
}
```
