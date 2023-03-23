- [Concepts](#concepts)
  - [Amdahl's Law](#amdahls-law)
- [Resources](#resources)

# Concepts

- **Structured Concurrency**: the core concept of structured concurrency is that
  when a main task splits into multiple sub-tasks, the main task only completes
  after all sub-tasks have completed
- **Coroutine**: a coroutine is where flow control is passed between two
  different routines (ex. functions) without returning. For example, `yield`
  keyword in Python and C#, and `co_yield` in C++ are all coroutines.
  - Coroutine is an orthogonal idea to structured concurrency

## Amdahl's Law

```
S = 1 / ((1 - P) + P / N)
```

- `P`: parallel fraction of the task
- `N`: degree of parallelism
- `S`: speedup
  - `P = 0.5`, `S -> 2` as `N -> infinity`
  - `P = 0.95`, `S -> 20` as `N -> infinity`

# Resources

- [Structured Concurrency by Eric Niebler](https://ericniebler.com/2020/11/08/structured-concurrency/)
