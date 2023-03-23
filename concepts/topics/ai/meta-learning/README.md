# Overview

Meta learning aims to learn a $\theta$, meta model parameter, to help learning
using few samples

- **way**: number of classes
- **shot**: number of samples in each class

For each task $i$ with training dataset $D_{i} = Ds_{i} \cup Dq_{i}$

- $Ds_{i}$: **support set**, aka. training set
- $Dq_{i}$: **query set**, aka. test set

Compute $\phi_{i} = f_{\theta}\left( Ds_{i} \right)$. Update $\theta$ by
$\nabla L\left( \phi_{i}, Dq_{i} \right)$

- $f$ is an embedding function

# Models

- [Matching Network](TODO:)
