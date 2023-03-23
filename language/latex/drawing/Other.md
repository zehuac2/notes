```latex
\begin{tikzpicture}
  \filldraw (0, 0) circle (1pt) node[label={[yshift=-1cm]Eye}] (eye) {};
  \filldraw (4, 0) circle (1pt) node[label={[yshift=-1cm]$ z_{near} $}] (z_near) {};
  \filldraw (8, 0) circle (1pt) node[label={[yshift=-1cm]$ z_{world} $}] (z_world) {};
  \filldraw (8, 4) circle (1pt) node[label={$ y_{world} $}] (y_world) {};
  \filldraw (4, 2) circle (1pt) node[label={[yshift=-1cm]$ y_{clip} $}] (y_clip) {};

  \draw (eye) -- (z_near) -- (z_world);
  \draw (z_world) -- (y_world) -- (y_clip) -- (eye);
\end{tikzpicture}
```
