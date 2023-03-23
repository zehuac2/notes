# Packages

```latex
\usepackage{tikz}
\usetikzlibrary{automata, positioning, arrows}
```

# Environment

```latex
\begin{tikzpicture} [
  % options
]
  % drawings
\end{tikzpicture}
```

- To resize the environment, wrap it inside an `\resizebox{width}{height}{...}`
  - Substitue `height` with `!` to infer heights

# Drawing Graphs

```latex
\begin{tikzpicture}
  \node[state, initial] (prepare) {Prepare};
  \node[state, right of=prepare] (start) {Start};
  \node[state, accepting, right of=start] (over) {Over};
  \node[state, below of=start] (event) {Event};
  \node[state, below left of=event] (action) {Action};
  \node[state, below right of=event] (no_action) {No Action};

  \draw (prepare) edge node[above]{Prepare} (start);
  \draw (start) edge node[above]{Found Winner} (over);

  \draw (start) edge node[right]{Draw Event} (event);
  \draw (event) edge[orange] node[above left]{Perform Action} (action);
  \draw (event) edge[orange] node[above right]{Do Nothing} (no_action);
  \draw (action) edge[bend left] node[above left]{Change Players} (start);
  \draw (no_action) edge[bend right] node[above right]{Change Players} (start);
\end{tikzpicture}
```

## Edges

```latex
% undirected
\draw (start) edge (end);

% directed from start to end
\draw[->] (start) edge (end);
```

# Styling

```latex
\tikzset{
  ->,
  line width=1.8pt,
  every state/.style={thick, fill=gray!10},
  every edge/.append style={thick},
  node distance=5cm,
  initial text=$  $
}
```
