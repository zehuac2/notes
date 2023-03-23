- [Overview](#overview)
  - [Simple Path](#simple-path)
  - [Shortest Path](#shortest-path)
  - [Tree Edge](#tree-edge)

# Overview

A graph is represented as $G=\left(V, E\right)$

- $V$: a set of vertices
  - $n = \left| V \right|$
- $E$: a set of edges; each edge is $\{u, v\}$ where $u, v$ are in $V$
  - $m = \left| E \right|$
  - $u = v$: self loop
  - We usually use $\left(u, v\right)$
  - $v$ is **adjacent to** $u$ and vice versa
  - $v$ is a **neighbor of** $u$ and vice versa
  - $\left(u, v\right)$ is **incident on** $u, v$

## Simple Path

A simple path is a path in a graph which does not have repeating vertices

## Shortest Path

$\delta\left(u, v\right)$ is the shortest path distance from u to v

- if there **is no path** from $u$ to $v$, then $\delta = \infty$

## Tree Edge

Tree edge is an edge which is present in the tree obtained after applying
BFS/DFS on the graph

- Edge goes from the node just dequeued to fresh neighbors
