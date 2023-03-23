- [Overview](#overview)
  - [Value Based vs Policy Based](#value-based-vs-policy-based)
  - [On Policy vs Off Policy](#on-policy-vs-off-policy)

# Overview

- **Policy** maps observation of the environment to an action or distribution
  over actions

## Value Based vs Policy Based

- **Value based**: value based algorithm updates a value function based on an
  equation
- **Policy based** esimates the value function with a greedy policy obtained
  from the last policy improvement

## On Policy vs Off Policy

- **Off policy**
  - Evaluate or improve a policy different from that used to generate teh data
  - Involves two policy
    - **Behavior policy**: policy used to generate behavior
    - **Target policy**: policy that is imitated and improved
    - Follow behavior policy while improving target policy
    - Reuse experience generated from old policies
- **On policy**
  - Evaluate or improve the policy that is being used to make decision
  - Estimate the value of a policy while using it for control
