# VC Dimension

## Overview

- **Vapnik-Chervonenkis Dimension**: a numeric parameter of a concept class C,
  VCDIM(C), VC(C)
  - A way of measuring how complex C is; important for learning theory
- Fix C over X, Let S be a subset of X, S is **shattered** by C if for every U
  subset of S, there exists a concept c in C such that U is c intersects S
  (subset point of view); equivalently, c(x) = 1 x in U, c(x) = 0 x in (S\U)
  - No matter how you want to label the points in S, some c in C does the job
  - VCDIM(C) = size of largest subset S of X that is shattered by C
    - VCDIM(C) is infinity if exists d in S, such that size of S is d and S
      shattered by C
    - VCDIM is how expressive a concept class is
    - $X = \mathbb{R}^{n}$, C = LTF over X, VCDIM of C is n + 1
    - To show VCDIM is a value, find both lower and upper bond
- $\operatorname{VCDIM}(C) \le \log_{2} \left| C \right|$ (Need 2^K concepts in
  C to shatter set of K points)
- Lemma: If VCDIM(C) = d, then any OLMB algorithm for C must have (worst case)
  mistake bound ≥ d
