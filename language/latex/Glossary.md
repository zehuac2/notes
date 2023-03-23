# Glossary

```latex
\usepackage{hyperref}
\usepackage[toc]{glossaries}

\makeglossaries

\newglossaryentry{rasterization} {
  name={Rasterization},
  description={Definition}
}

\begin{document}
  \gls{rasterization}
  \printglossaries
\end{document}
```

- `toc` option is required for the glossary to show up in table of contents
- `hyperref` must used before `glossaries` for glossaries to show links
