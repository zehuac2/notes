# Overview

- All the model does is to estimate probabilities
- The model is given estimates of various probabilities of the distributions of
  labeled examples
- The model does not get actual labeled examples, i.e. algorithm does not have
  access to example oracle
- Instead, the model get a $\operatorname{STAT}$ oracle

# Predicate

A predicate of a label example (x, b) is a statement that (x, y) makes true or
false. Formally, a predicate is a function

![Predicate definition](images/statistical-query-learning/predicate-1.png)

![Predicate function signature](images/statistical-query-learning/predicate-2.png)

# Oracle

Oracle STAT(c, D) takes two inputs from the learner

1. A predicate
2. A tolerance parameter $\tau > 0$

STAT(c, D) outputs an (estimate) $\hat{P}_{\chi}$ such that

$$
\left| \hat{P_{\chi}} - P_{\chi} \right| < \tau
$$

## Simulation Using Example Oracle

Given $\chi, \tau$, draw m examples from EX(c, D), eval $\chi$ on each example.
Output $\hat{P}_{\chi}$ fractions of the m that satisfied $\chi$. (By Chernoff
bounds)

![Simulating STAT using the example oracle](images/statistical-query-learning/stat-simulation.png)

## Costs

In STAT world, should view a call $(\chi, \tau)$ to STAT as costing time to
simulate STAT(c, D) given Ex(c, D), i.e. time to compute $\chi$ on a labeled
pair times $m = \frac{1}{\tau^{2}}$

# SQ Learnable

![SQ learnable definition](images/statistical-query-learning/sq-learnable-1.png)

![SQ learnable theorem](images/statistical-query-learning/sq-learnable-2.png)

- Perfectly uncorrelated concept classes cannot be efficiently SQ-learned?

# SQ and PAC

Every SQ learnable concept class is PAC learnable

- Reverse is not true
- Still true even with random classification noise (noise rate
  $\eta < \frac{1}{2}$, runtime
  $\operatorname{poly}\left( \frac{1}{1 - 2\eta} \right)$
  - Many known PAC algorithms can be recast as SQ algorithms

# Not Efficiently Learnable Concept Classes

- DNF
- Decision tree
