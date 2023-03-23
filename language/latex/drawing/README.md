- [Overview](#overview)
- [Common Commands](#common-commands)
  - [`\node`](#node)
  - [`\draw`](#draw)
- [Positioning](#positioning)
- [Resources](#resources)

# Overview

- Tikz libraries are referenced using `\usetikzlibrary{...}`

# Common Commands

## `\node`

```latex
\node[options] (identifier) {label};
```

## `\draw`

```latex
\draw[options] (from) -- (to);
\draw[options] (from) node[options] (identifier) {label} -- (to) node[options] (identifier) {label};
```

- `->`: draw a directed line

# Positioning

- `\usetikzlibrary{positioning}`
- Positions
  - `below = of <node>`

# Resources

- [LaTeX Graphics using TikZ: A Tutorial for Beginners (Part 1)—Basic Drawing](<https://www.overleaf.com/learn/latex/LaTeX_Graphics_using_TikZ:_A_Tutorial_for_Beginners_(Part_1)%E2%80%94Basic_Drawing>)
