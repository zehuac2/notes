# Overview

- Aspects of Computation Learning Theory
  - Defining computational model of learning (rules of chess)
  - Proving results for these models (getting good at gems)
- A learning model specifies the learning framework
  - Supervised (labeled data) vs unsupervised (no labels, clustering)
  - What's being learned? (binary classification rules, often called "concept
    learning")
  - How does the learner get its info
    - Passive: learner gets x, f(x)
    - Active: learner chooses x, gives f(x)
  - What prior knowledge does learning have?
    - Need to assume unknown concept (binary classification rules) not too
      complex
    - Typical assumption: unknown concepts have simple syntactic structure
  - Constraints on resources of learner? Algorithms have bounded (typically
    polynomially) runtime, data, etc.
  - Performance criteria
    - Online vs offline (batch learning)
    - Hypothesis intelligibility
    - Accuracy: error rate on test set, #mistakes made in online process
