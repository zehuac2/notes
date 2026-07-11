# OLMB (Online Mistake Bound)

- Learning model is given a known concept class, but does not know the target
  concept of the known concept class

A "learning session" consists of a sequence of trials. Learner maintains a
hypothesis, $h \in C$, throughout the learning session.

- **Trial**: prediction → mistake or not mistake
- No noise
- Very pessimistic/adversarial assumptions
- Penalizing from day 1: not desirable
- Mistake bound criterion doesn't give any guarantee about next examples: unless
  all mistakes has been made, will still give wrong answers
- **For any OLMB algorithm A, there is always a lazy counterpart A'**

## Performance

- **Intuition**: Performance measured by total number of mistakes across a
  sequence of examples
- **Definition**: a learning algorithm A has mistake bound M for concept class C
  if for any sequence of examples from X, any target concept c from C, A makes ≤
  M mistakes on any sequence of trials
  - M not bound on the length of trials. No matter how long the session is,
    there are at most M mistakes

### Observation

- If X is finite, always possible to achieve M = \| X \|
- If C is finite, always possible to achieve $M = \left| C \right| - 1$ (try
  concepts in C successfully until mistakes, discard then try another concept,
  etc.)
- Given $X = \{ 0, 1, 2, ... 2^{n} - 1 \}$,
  $C = \text{initial intervals}, c = \{ 0, 1, 2, ..., a \in X \}$ (we need to
  look for $a$), achieve mistake bound of n via binary search (use as hypothesis
  0, 1, …, b where b is midpoint of uncertainty interval. Every mistake cuts the
  uncertain interval by at least half)
- X = \[0, 1\] real interval, C = initial interval of \[0, 1\]. No finite
  mistake bound

# Learning Process

<details>
<summary>In each trial</summary>

1. Given an unlabeled $x \in X$
2. Given an output $h(x) \in \{ 0, 1 \}$
3. Given the true value $c(x) \in \{ 0, 1 \}$
4. If $h(x) \ne c(x)$, learner is charged a mistake

</details>

<details>
<summary>Before next trial</summary>

Learner may update $h$

</details>

# Specific OLMB for Various Concept Classes

## Elimination Algorithm

- Used for monotone disjunctions
- Initial hypothesis: h(x) is the monotone disjunction of all variables (already
  given)
- When false positive mistake (h(z) = 1, but c(z) = 0): remove from h all
  $z_{i}$ such that $z_{i}$ = 1 in $z$
- When false negative mistake (h(z) = 0, but c(z) = 1): stop and say FAIL (never
  going to happen for correctly labeled data)
- If h(z) = c(z): do nothing
- Good algorithm
  - Theorem: elimination algorithm is mistake bound ≤ n for C = monotone
    disjunctions over $\{ 0, 1 \}^{n}$
  - Runtime per trial $O(n)$
  - Easy extension to non monotone (general) disjunctions. Make initial
    hypothesis or of all literals;
    $h = x_{1} \cup \overline{x_{1}} \cup x_{2} \cup \overline{x_{2}}$
    - Mistake bound $\le 2n$
  - Works with conjunctions. Negate the input and output
- Bad
  - Not noise robust

### Theorems

1. No var in c is ever removed from h
2. Only make false positive mistakes
3. Mistake bound $\le n$

## Learning 1-decision List

Algorithm uses hypothesis which are slight variant of 1-decision list

- Hypothesis contains all 4n + 2 rules
- Rules are grouped into levels; each level can have multiple rules; Thinks of
  rules of a level as being arranged in lexicographic order

Algorithm:

- Initially, h (hypothesis) has one level with all 4n + 2 rules
- Given x: look at level 1 rules, then level 2 rules, etc, within a level, look
  through rules in lex order, looking for first rule whose "if" condition is
  satisfied by x; use this rule to predict (if no rule in current level applies,
  look at next level)
- Update rule: on any example $z \in \{ 0, 1 \}^{n}$, you use a particular rule
  in a particular level for prediction
  - If prediction is right, do nothing
  - If prediction is wrong, demote the rule to the next level

Theorem:

- The algorithm makes $O(n \cdot r)$ mistakes when target concept is any 1
  decision list of **length** $r$ over $\{ 0, 1 \}^{n}$
  - first rule in c never move below level 1
  - second rule in c never move below level 2

Note

- Computationally efficient, poly(n) time per trial
- Level that a rule is in corresponds to how "misleading" it is

## Winnow1 for (Sparse) Monotone Disjunctions

- Does not work well with noise (mistakes in data)
- Target concept has k ≤ n variables
- Initial hypothesis: $h(x) = w \cdot x \ge \theta$
  - $\theta = n$
  - Weight: $w = (1, 1, ... , 1), w_{i} = 1 \forall i = 1, ... n$
- Predict using h
  - On false positive ($h(z) = 1, c(z) = 0$), for i all such that z = 1, set
    $w_{i} = 0$ (demotion step)
  - On false negative ($h(z) = 0, c(z) = 1$), for i all such that z = 1, set
    $w_{i} = 2 \cdot w_{i}$ (promotion step)
- $O(k \cdot \log n )$ mistake bound; much better than elimination algorithm for
  small k
- Lemmas
  - Lemma 1
    - No weight is ever negative
    - In each promotion step, at least one variable in target concept c is
      promoted
    - For every variable i = 1, …, have $w_{i} < 2n$; every weight is only
      promoted if $w_{i} < n$
  - Lemma 2
    - **TODO**: Total number of promotion steps, for c any k-sparse monotone
      disjunction, is $\le k \cdot \log(2n)$
  - Lemma 3
    - **TODO**: Let d = number of promotion steps, have $d \le p + 1$
      - p: promotion step

## Winnow2 for Delta Separable Monotone Linear Threshold Functions

Takes parameter $\alpha > 1$ as input; predicts using hypothesis $h(x)$, defined
by $w \cdot x \ge n$

- Initial hypothesis $w_{init} = ( 1, ... 1 )$
- Updates:
  - On promotion step $h(z) = 0, c(z) = 1$, for each i such that $z = 1$, set
    $w_{i} = \alpha \cdot w_{i}$
  - On demotion step $h(z) = 1, c(z) = 0$, for each i such that $z = 1$, set
    $w_{i} = w_{i} / \alpha$
  - If $h(z) = c(z)$, no change
- Theorems
  - Let $0 < \delta < 1$, let $c: \{ 0, 1 \}^{n} \to \{ 0, 1 \}$, belong to
    $F(\delta)$, let $u_{1}, ... u_{n}$ be as described above. If run winnow2
    with $\alpha = 1 + \delta / 2$ on any sequence of examples from
    $\{ 0, 1 \}^{n}$ labeled by c, it makes at most
    $O\left( \frac{\ln (n) \cdot \sum_{i = 1}^{n} u_{i}}{\delta^{2}} \right)$
    mistakes
  - Can be extended to other domains; has resilience to noise

## Perceptron for Learning LTFs over $\mathbb{R}^{n}$

- Initial Hypothesis: $w = 0^{n}$
- Predict: $h(x) = sign(w \cdot x)$
- On example z
  - False positive (w z ≥ 0, v z \< 0): set w = w - x (vector subtraction)
  - False negative (w z \< 0, v z ≥ 0): set w = w + x (vector addition)
- **Convergence theorem**: suppose the algorithm is run on a sequence of
  examples labeled by c(x) = sign(vx) under above assumptions (TODO). Let
  $\delta = min \left| v \cdot x \right|$ (examples are not too close to the
  boundary) Then # of mistakes $\le \frac{1}{\delta^{2}}$
- Discussion
  - Simple to implement
  - Fast
  - Nitce tolerance to noise
  - Smarter algorithms with mistake bounds like $\log^{1/\delta}$, but not
    tolerant to noise
  - Kernelizable
- Kernelization
  - Perceptron has a dual form that is kernelizable (can run it over large or
    infinite feature space in an efficient way)
  - Dual perceptron: to run perceptron, only need to be able to compute
    $x \cdot x'$ for $x, x'$ input vectors
    - Hypothesis stored as list of pairs $(x^{1}, y^{1}), ... (x^{k}, y^{k})$,
      each $y^{i}$ is the correct label, $x^{i}$ is the example which perceptron
      made mistake
    - Given new example, dual perceptron computes $w \cdot x$ as
      $\sum_{i = 1}^{k} y^{i} (x^{i} \cdot x)$. This exactly simulates
      perceptron algorithm
    - Useful because can replace usual inner product over $\mathbb{R}^{n}$ with
      any kernel function (inner product over some other feature space)
  - Kernel Function:
    - Let $X, X'$ be two spaces with inner products (think of
      $X = R^{n}, X' = R^{N}, N \ge n$). Feature expansion is a map from
      $\Phi: X \to X'$. We view $\Phi(x)$ as expanded version of x
    - The kernel function corresponds to feature expansion is
      $K: X \times X \to \mathbb{R}$ defined as
      $K(a, b) = \Phi(a) \cdot \Phi(b)$, $a,b \in X$
    - Sometime, kernel function is much faster than time N
    - It is an art to choose kernel functions

### Assumptions

- $\theta$ = 0
- $\left| x \right| = 1$
- $\left| v \right| = 1$

## Halving Algorithm

- Let CONSIST be the subset of C consisting of all $c \in C$ that were
  consistent with. all labeled example ($x, c(x)$) seen so far
- Given example x, the algorithm predicts according to majority vote over
  $c \in \text{CONSIST}$
- On a mistake, update CONSIST
- Mistake bound: $\le \log_{2} \left| C \right|$. Horrible runtime per trial
  $4n^{r}$
- Uses weird hypothesis: $\text{MAJ}(c_{i} \in C)$
- Does not work well with noise
- For some concept classes, halving algorithm is the best; sometimes better than
  $\log \left| C \right|$ mistakes

## Randomized Halving Algorithm (for Oblivious Adversary)

- Mistake bound criterion very worse case: to assume sequence of labeled
  examples generated by omniscient online adversary (want you to make as many
  mistakes as possible). At trial i, adversary knows everything about learner
  and can use any concept consistent with first i - 1 labels
  - Oblivious Adversary: can relax model; assume target concept c, sequence of
    examples are chosen once for all at start of the process
  - Make it possible for learner to fruitfully use randomness to her advantage
- Update hypothesis h only on mistakes
- Each time mistake made: update CONSIST, pick h to be a randomly selected c in
  the new CONSIST
- Theorems
  - Fix any finite C, c in C, sequence of example (oblivious adversary
    assumption), then
    $E\left\lbrack \text{num of mistakes of RHA} \right\rbrack \le \ln \left| C \right| + O(1)$
    - Good
      - Natural log better than log base 2
      - Simpler algorithm
      - Hypothesis nicer
    - Bad
      - Still inefficient
      - More assumptions (oblivious adversary)

# Predicting from Expert Advice (Rebranded Online Learning)

## Weighted Majority Algorithm (Noise Tolerant Halving Algorithm)

<details>
<summary>Settings</summary>

Go to racetrack with group of N experts, sequence of horse races (opportunity
for prediction). Experts have bets on each race. Goal is to combine expert
advice to make own prediction. Each expert predicts 0, 1 in each trial.

- No absolute guarantee possible (experts give bad advice)
- Theorem: for any sequence of trials, suppose best expert in pool makes m
  mistakes, WMA makes ≤
  $\frac{\log N + m \log\left( \frac{1}{\beta} \right)}{\log\left( \frac{2}{1 + \beta} \right)}$
  many mistakes (can guarantee you do almost as well at the end of the day as
  the most successful expert)

</details>

<details>
<summary>Algorithm</summary>

- Algorithm has parameter $\beta < 1$
- Each expert $i$ has weight $w_{i}$. Initialize
  $w_{i} = 1, \forall i \in \left\lbrack N \right\rbrack$.
- At each trial, expert i predicts $z_{i} \in \{ 0, 1 \}$
  - $q_{0} = \sum_{z_{i} = 0} w_{i}$
  - $q_{1} = \sum_{z_{i} = 1} w_{i}$
- Algorithm predicts 0 if $q_{0} > q_{1}$, 1 otherwise
- Given outcome of trial, for each i such that $z_{i}$ is wrong, set
  $w_{i} \leftarrow w_{i} \cdot \beta$ (penalty of being wrong)
  - If $\beta = 0$, algorithm becomes halving algorithm

</details>

## Randomized Weighted Majority Algorithm

- Noise tolerant
- Theorems

### Performance

Best expert makes $m$ mistakes

$$
M \le \frac{m \ln \left( \frac{1}{\beta} \right) + \ln N}{1 - \beta}
$$
