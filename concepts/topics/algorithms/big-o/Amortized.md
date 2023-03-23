# Overview

Amortized analysis is a set of techniques for proving upper bounds for the
running time of an algorithm, usually involving a sequence of data-structure
operations

- Aggregate analysis
- Accounting method
- Potential method

# Aggregate Analysis

Try to analyze the total cost (or running time) directly

# Accounting Method

Assume each unit of running time, costs one dollar. For each operation, we
associate it with two costs:

1. Actual cost: the running time of the operation
2. Amortized cost: the money we actually pay for this operation; The amortized
   cost of an operation may not be the same as its actual cost;

If an operation $i$’s amortized cost $d_{i}$ exceeds its actual cost $c_{i}$, we
use the former to pay the actual cost first and store the difference in a bank
account

If an operation’s amortized cost is less than its actual cost, we can draw from
the bank account to cover the difference.

After $k$ operations, the balance is

$$
\sum_{i = 1}^{k} d_{i} - \sum_{i = 1}^{k} c_{i}
$$

We claim that if the bank account by the end (after all n operations) is
nonnegative, we have

$$
\sum_{i = 1}^{k} d_{i} \ge \sum_{i = 1}^{k} c_{i}
$$

Then the total amortized cost is an upper bound for the total actual cost (or
equivalently, the total running time)
