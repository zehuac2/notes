# Basic Notions

## Notations

- X: domain for functions to be learned, instance space; $f(x), x \in X$;
  numerical or categorical
- $\{ 0, 1 \}^{n}$: set of n-bit strings

## Basic Idea of Our Learning Models

- We have a known concept class C, there is an unknown target concept $c \in C$
- We have some source of info about how c labels instances of $x \in X$ (details
  model specific)
- Goal is to find/approximate c

# Concept

- A **concept** is a subset $c \subset X$
  - c can be considered as a function $c: X \to \left\{ 0,1 \right\}$: if c(x)
    is in X, then 1; 0 otherwise

# Concept Classes

- A **concept class** $C$ is a set of concepts
  - $X = \{0, 1\}$, C = all disjunctions
    - $\left| C \right| = 3^{n}$
  - $X = \{0, 1\}$, C = all **monotone conjunctions**
    - $\left| C \right| = 2^{n}$
  - $X = \{0, 1\}$, C = all **s-term disjunctive normal form formulas**
    - There are roughly $\left( 3^{n} \right)^{s}$ many s-term DNFs
  - $X = \{0, 1\}$, C = **k-DNFs**

## Literal

- A literal is a variable $x_{i}$, or its negation

## Conjunction

- A conjunction is an AND of literals over **distinct** variables
- ex. $n = 5, c(x) = x_{2} \cap x_{4} \cap x_{5}$ is a conjunction

## Disjunction

- A conjunction is an OR of literals over **distinct** variables
- ex. $n = 5, c(x) = x_{2} \cup x_{4} \cup x_{5}$ is a disjunction

## Monotone Conjunction

- Monotone conjunctions similar to boolean conjunctions but without negation

## Disjunctive Normal Form (DNF)

- An OR of ANDs. A disjunction of conjunctions
- An s-term DNF only has at most s conjunctions
- A k-DNF is an OR of any # of ANDs, but each AND has $\le k$ vars

## Conjunctive Normal Form (CNF)

- A AND of ORs. A conjunction of disjunctions
- A k-CNF is an AND of any # of OR, but each AND has $\le k$ vars

![CNF example](images/basic-notions/cnf-example.png)

## Linear Threshold Functions (LTF), Half Space

- $c: X \to \left\{ -1, 1 \right\}$
- $c(x) = sign(w \cdot x - \theta)$
- $w = \left( w_{1}, ... w_{n} \right) \in R^{n}$, $\theta \in R$
  - A **monotone** LTF is where all weights are positive
- $sign(t) = \begin{cases}1 \\ -1 \end{cases}$
- Can express monotone disjunctions
- Any 1 decision list can be expressed as an LTF: different weights for
  different variables in the list
- **Linear threshold functions are also known as half spaces**

## 1 Decision List

```f#
let decisionList =
  // l1 is a literal (can be negation of variable)
  if l1 then b1
  elif l2 then b2
  elif l3 then b3
  ...
  elif lr then br
  else bElse
```

A bool function $\{ 0, 1 \}^{n} \to \{ 0, 1 \}$, an ordered list of if-then
rules

- Every conjunction, disjunction can be expressed as a 1 decision
- Length of DL: # of literals in it
- Without loss of generality, any decision list process each variable at most
  once
- Called 1 decision list because only one variable is in the condition each time
- Any n term decision list can be expressed as a n term DNF

## Sparse Monotone Disjunction

- Sparse: concept class has only $k \le n$ many variables
- Very relevant for real world learning
- Examples:
  - Adj for elephant is a very small subset of English

## Delta Separable Linear Threshold Function

Fix $0 < \delta < 1$, let $F(\delta)$ be class of $\delta$ separable monotone
linear threshold functions over $\{ 0, 1 \}^{n}$

![Delta separable linear threshold function diagram](images/basic-notions/delta-separable-ltf.png)

## Decision Trees

- Every boolean function can be converted to a decision tree

# Tools

## De Morgan

![De Morgan's laws](images/basic-notions/de-morgan.png)
