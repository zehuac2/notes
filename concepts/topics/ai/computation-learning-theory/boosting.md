# Strong, Weak PAC Learning

## Strong PAC Learning

<!-- TODO: link from Notion (unresolved page alias) -->

## Weak PAC Learning

Algorithm A is weak PAC learner for C with advantage $\gamma$, if
$\forall c \in C, \forall D, \forall \delta > 0$, with probability
$\ge 1 - \delta$, A outputs a $h$ such that

$$
\operatorname{Pr}_{X \sim D}
\left\lbrack
  h(x) \ne c(x)
\right\rbrack \le \frac{1}{2} - \gamma
$$

Because of $\frac{1}{2} - \gamma$, this is better than random guessing.

- There is a
  $\operatorname{poly}\left( \frac{1}{\gamma}, \frac{1}{\epsilon}, \log \frac{1}{\delta}, T \right)$-time
  strong PAC learner A' for C (T is runtime of A to achieve $\frac{9}{10}$
  successful probability)
  - Achieved by running a boosting algorithm B over weak learner A
    $\operatorname{poly}\left( \log \frac{1}{\epsilon}, \frac{1}{\gamma} \right)$
    times

# Boosting

- Run A repeatedly using a sequence of different distributions
  $\operatorname{EX\left( c, D_{1} \right)}, \operatorname{EX\left( c, D_{2} \right)}, ...$
  to get hypothesis $h_{1}, h_{2}, ...$
  - Approaches
    - Filter examples to simulate new distributions
    - Maintain a fixed set of examples and maintain total control over them
- Combine $h_{1}, h_{2}, ...$ to make one final hypothesis
  - Ex. majority vote, weighted majority algorithm

# Boosting Over Fixed Sample

## Ada Boost

> It works by weighting the data points in a way that focuses the learning
> algorithm on the most difficult examples, which helps to improve the overall
> performance of the model. - ChatGPT

# Resources

- [Lecture 11/03/2022](https://cvn.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=22f9f8a9-6f67-49a9-8603-af03011c9161)
- [Lecture 11/10/2022](https://cvn.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=a4167a51-3e9e-43ea-9cda-af03011c919c)
