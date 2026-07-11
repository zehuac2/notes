# Overview

- Intuition: you should be able to notice bad hypothesis
- Examples are drawn independently from an unknown and arbitrary, fixed
  distribution $D$ over $X$
- Example oracle $EX(c, D)$: generates $m$ independent training pairs:
  $\left( x, c\left( x \right) \right)$
- $\delta$: chances that a hypothesis is bad; $1 - \delta$ is the confidence
  - Protects against bad/atypical samples
- Fixed concept $c \in C$
- $\epsilon$: accuracy parameter; the probability of the hypothesis being wrong
  on examples from D
  - Protects against rare examples in the test phase
- Batch, not online

## Output

- Hypothesis class $h: X \to \left\{ 0, 1 \right\}, h \in H$; $H$ is a class of
  hypothesis

## Performance

Error of h on c with respect to D

$$
er_{D} (c, h) = Pr_{x \sim D}\left\lbrack h(x) \ne c(x)  \right\rbrack
$$

- Performance measured by accuracy
- Can't expect 0 error
- Can't guarantee low error: ex. all examples are the same
- Criterion for Good Learning Algorithm: Your hypothesis is probably
  approximately correct

### Proper

- If H = C, then A is proper

### Runtime Efficiency

$$
\operatorname{poly}\left( s, \frac{1}{\epsilon}, \frac{1}{\delta}, n \right)
$$

- $n$ is included if domain is $\mathbb{R}^{n}, \left\{ 0, 1 \right\}^{n}$
- Good runtime: $poly(n, \frac{1}{\delta}, \frac{1}{\epsilon})$
- Output H should be efficiently evaluable

## Comparison to OLMB Algorithms

$$
m = M + \frac{M + 1}{\epsilon} + \log \left( \frac{M + 1}{\delta} \right)
$$

- There is a PAC algorithms for each OLMB algorithms that need $m$ examples to
  $(\delta, \epsilon)$-learn
  - $M$: mistake bound of the OLMB algorithm
  - Computational efficiency of PAC algorithm is similar to OLMB algorithm
  - Intuition: just run OLMB using example oracles. Stop after the OLMB
    algorithm makes many right decisions
- If a C is OLMB learnable, it is PAC learnable
  - Reverse is not true
- Assumptions
  - OLMB algorithm A is lazy

# Definition

Algorithm A PAC learns C using H means:

- $\forall c \in C$
- $\forall D$ over X
- $\forall \epsilon, \delta > 0$

If A is given $\epsilon, \delta$ and $EX(c, D)$, algorithm A outputs a
hypothesis $h \in H$, such that with probability $\ge 1 - \delta$ (over calls A
makes to $EX(c, D)$, and any internal randomness of A),
$er_{D} (h, c) < \epsilon$. In another word, is is highly probably that the
algorithm gets an approximately correct concept. **Equivalently, A has
probability** $\le \delta$ **producing a hypothesis with error** $> \epsilon$

- A makes m calls to the example oracle

## Prove An Algorithm is PAC

To prove an algorithm is PAC, prove that TODO:

## Size of Concept

- Definition of size different for different concept classes
- We allow the algorithm's runtime to depend on size of concept class:
  $\operatorname{poly}\left( s, \frac{1}{\epsilon}, \frac{1}{\delta} \right)$

## Efficient Hypothesis

Efficient PAC algorithm must produce poly (n) hypothesis

# Chernoff Bounds

> Essentially, Chernoff bounds provide a way to upper bound the probability that
> a sum of random variables deviates significantly from its expected value. -
> ChatGPT

- Used to find how many examples you need to take

## Multiplicative Version

$$
\Pr\left\lbrack x < (1 - \gamma) mp \right\rbrack \le e^{- \frac{1}{2} \gamma^{2} mp}
$$

$$
\Pr\left\lbrack x > (1 + \gamma) mp \right\rbrack \le e^{- \frac{1}{3} \gamma^{2} mp}
$$

## Addictive Version

$$
\hat{p} = \frac{x}{m}
$$

$$
\Pr\left\lbrack p - \hat{p} \ge \epsilon \right\rbrack \le e^{- 2 m e^{2}}
$$

$$
\Pr\left\lbrack \hat{p} - p \ge \epsilon \right\rbrack \le e^{- 2 m e^{2}}
$$

- $\hat{p}$: observed fraction

# Consistent Hypothesis Finder

Consistent hypothesis finder is another approach to PAC learning: find a
consistent hypothesis from some a priori fixed hypothesis class

Theorem: Fix finite $C$, $H$, $D$, $c \in C$. Given $m$ examples from
$\operatorname{EX}\left( c, D \right)$, where

$$
m \ge \frac{1}{\epsilon} \left( \ln \left| H \right| + \ln \frac{1}{\delta} \right)
$$

$h \in H$ is bad if $\operatorname{er}(h, c) > \epsilon$. Then
$\Pr\lbrack\text{ bad h is consistent }\rbrack \le \delta$

- OLMB algorithms can be consistent hypothesis finders
- Building a lookup table is not a good idea
- Need $m$ examples

# Occam's Razor

Entities should not be multiplied unnecessarily, aka. **we should prefer short
explanations**.

- Hypothesis is a short description of data

# VC Dimension

## Amazing Theorem

Fix any C, VC(C)=d

$$
\begin{align*}
\Pi_{C}(m) &\le \binom{m}{0} + ... + \binom{m}{d} \\
\binom{m}{0} + ... + \binom{m}{d} &
\begin{cases}
= 2^{m} & m \le d \\
\le \left( \frac{em}{d} \right)^{d} & m > d
\end{cases}
\end{align*}
$$

### Proof

$$
\begin{align*}
\Phi_{d}(m) &= \Phi_{d}(m - 1) + \Phi_{d - 1}(m - 1 ) \\
\Phi_{0}(m) &= 1 \\
\Phi_{d}(0) &= 1
\end{align*}
$$

$$
\Phi_{d} (m) = \sum_{i = 0}^{d} \binom{m}{i}
$$

$$
\begin{align*}
\Phi_{d}(m) &= \binom{m}{0} + ... + \binom{m}{d} \\
\binom{m}{0} + ... + \binom{m}{d} &
\begin{cases}
= 2^{m} & m \le d \\
\le \left( \frac{em}{d} \right)^{d} & m > d
\end{cases}
\end{align*}
$$

$$
\begin{align*}
d &= \operatorname{VC}(C) \\
\Pi_{C} (m) &\le \Phi_{d} (m)
\end{align*}
$$
