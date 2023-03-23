# Packages

- Fonts:
  - `newtxmath`: use Times font in math mode
- Environments
  - `amsthm`: provide theorems, lemmas and proof environments
    - Must be put before `newtx` packages to avoid compiler errors

# Operators

```latex
% method 1
\DeclareMathOperator{\foo}{foo}

$ \foo $

% method 2
$ \operatorname{foo} $
```

# `multiline` Environment

Multiline environment breaks an equation into two parts

- The first part is flushed to the left and placed on the first line
- The second part is flushed to the right and placed on any lines after the
  first line

```latex
\begin{multline}
  a + b \\
  + c + d
\end{multline}
```
