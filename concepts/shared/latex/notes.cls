\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[For taking notes]

\LoadClass{report}

% packages

\RequirePackage[utf8]{inputenc}
\RequirePackage{import}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{dirtytalk}
\RequirePackage{soul}
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{xcolor-material}
\RequirePackage[toc]{glossaries}
\RequirePackage{inconsolata}

% macros and styles

\setlength{\parindent}{0pt}

\newtheorem{definition}{Definition}
\newtheorem{theorem}{Theorem}

\newcommand{\code}[1]{{\ttfamily #1}}

% setup the styles of the main content, other styles are set in
% shared/config/styles.tex
%
% should be called after \tableofcontents
\NewCommandCopy{\oldtableofcontents}{\tableofcontents}
\renewcommand{\tableofcontents}{
  \oldtableofcontents
  \setlength{\parskip}{8px}
}

\renewcommand{\emph}[1]{{\color{GoogleRed} #1}}
