# Fonts with pdflatex

## Sans-serif

- **Helvetica**
  ```latex
  \usepackage[scaled]{helvet}
  \renewcommand{\familydefault}{\sfdefault}
  ```
  Helvetica is bigger than other fonts. `scaled` or `scaled=0.92` would shrink
  the font to a similar size as other fonts. `scaled=0.92` is preferred when
  Adobe Times / Times New Roman is used.

## Monospace

- **Inconsolata**: add `\usepackage{inconsolata}`; this package override
  `\ttfamily` with inconsolata font
