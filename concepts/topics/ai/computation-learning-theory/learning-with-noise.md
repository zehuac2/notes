# Overview

Oracle is noisy. Noises are independent.

- For probability $\eta$, noisy ($\hat{x}, b$)
  - Different specification of ($\hat{x}, b$) determines different models
- For probability $1- \eta$, not noisy ($x, c(x)$)
- (Strong) PAC learning requirement does not change

# Noises

## Malicious Noise

- Could be chosen by all-knowing malicious adversary

## Random Classification Noise

- $\eta$: noise ($x, \overline{c(x)}$)
- $1 - \eta$: non noise ($x, c(x)$)

# Determine Learnability

- Malicious noise not possible to PAC learn, but we can still do something
- Random Classification Noise much easier. General method lets us transfer many
  known PAC algorithms into RCN tolerant PAC learning algorithms.
  - Can be done for any $\eta < \frac{1}{2}$, at the cost of
    $\operatorname{poly}\left( \frac{1}{1 - 2\eta} \right)$

## Malicious Noise

Let C be distinct concept class. If malicious noise rate $\eta$

$$
\eta \ge \frac{2\tau}{1 + 2\tau}
$$

then no PAC algorithm is able to learn with error $< \tau$, confidence
$> \frac{1}{2}$.

## RCN

- Hypothesis testing: hypothesis that are right will look better than those that
  are wrong
- Good hypothesis will appear better even in the presence of noises

# Learning

## RCN

- Estimate $p_{i}$ in noiseless and noisy word

# Lectures

<!-- TODO: link from Notion (unresolved bookmark) -->
<!-- TODO: link from Notion (unresolved bookmark) -->
<!-- TODO: link from Notion (unresolved bookmark) -->
