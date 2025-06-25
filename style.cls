\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style}[2024/03/31]
\LoadClass{article}

\def\title#1{\gdef\@title{#1}}
\def\@title{\@latex@error{No \noexpand\title given}\@ehc}
\def\author#1{\gdef\@author{#1}}
\def\@author{\@latex@error{No \noexpand\author given}\@ehc}
\def\unit#1{\gdef\@unit{#1}}
\def\@unit{\@latex@error{No \noexpand\unit given}\@ehc}
\def\id#1{\gdef\@id{#1}}
\def\@id{\@latex@error{No Student ID (\noexpand\id) given}\@ehc}

\renewcommand\maketitle{
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let\footnote\thanks
    \null\vfil
    \begin{center}%
      % Title (Bold, Larger Size)
      {\Huge \bfseries \@title \par}%
      \vskip 4em%
      
      % Horizontal Line Separator
      \rule{\textwidth}{0.4pt}
      \vskip 2em%
      
      % Unit Code and Unit Name
      {\LARGE \textbf{\@unit} \@course \par}%
      \vskip 1em%
      
      % Date (smaller font)
      {\large \@date \par}%
      \vskip 3em%
      
      % Student Name and ID (Name bolded)
      {\large
        \textbf{\@author} \\  % Bold name
      }%
      \vfill%
    \end{center}\par
    \@thanks
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@id\@empty
  \global\let\@unit\@empty
  \global\let\@course\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

% Load fancyhdr package and configure page style
\RequirePackage{fancyhdr}
\def\title#1{\gdef\@title{#1}\gdef\fancytitle{#1}}
\def\author#1{\gdef\@author{#1}\gdef\fancyauthor{#1}}
\let\fancytitle\@empty
\let\fancyauthor\@empty

\newcommand{\setupthefancyhdr}{
  \fancyhf{}
  \fancyhead[L]{\fancytitle}
  \fancyhead[R]{\fancyauthor}
  \renewcommand{\headrulewidth}{0.4pt}
  \fancyfoot[R]{\thepage}
  \setlength{\headheight}{15pt}
}

\AtBeginDocument{
  \pagestyle{fancy}
  \setupthefancyhdr
}

\RequirePackage{xcolor} % Added this line to load xcolor package


\definecolor{ttgrey}{RGB}{61, 147, 157} % Define custom color for texttt

\let\oldtexttt\texttt
\renewcommand{\texttt}[1]{{\color{ttgrey}\oldtexttt{#1}}}


\RequirePackage{setspace}
\RequirePackage{geometry}

\geometry{
	a4paper,
	left=2cm,
	right=2cm,
	top=2.8cm,
}

\RequirePackage[T1]{fontenc}
\RequirePackage{newpxtext,newtxmath}


