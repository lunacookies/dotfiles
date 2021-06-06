\ProvidesClass{arzg}
\NeedsTeXFormat{LaTeX2e}

\LoadClass[a4paper, oneside]{memoir}

\RequirePackage{amsmath}

\RequirePackage[final, tracking=true, letterspace=100]{microtype}
\frenchspacing

\renewcommand{\Large}{\@setfontsize\Large{18bp}{22bp}}
\renewcommand{\large}{\@setfontsize\large{14bp}{18bp}}
\renewcommand{\normalsize}{\@setfontsize\normalsize{12bp}{15bp}}
\renewcommand{\small}{\@setfontsize\small{10bp}{13bp}}
\normalsize

\newcommand{\bls}[3]{#1\baselineskip plus #2\baselineskip minus #3\baselineskip}

\setlength{\parindent}{\baselineskip}
\abnormalparskip{0bp}

\RequirePackage[osf]{newpxtext}
\RequirePackage[euler-digits]{eulervm}

\RequirePackage{calc}
\newcommand{\optimalline}{Cras dignissim nisi nec dolor blandit, ut varius ex pellentesque. Vestib-}
\newcommand{\optimallinewidth}{\widthof{\optimalline}}

\settypeblocksize{42\baselineskip}{\optimallinewidth}{*}
\setlrmargins{*}{*}{1}
\setulmargins{*}{*}{2}

\setheadfoot{0bp}{3\baselineskip}
\makepagestyle{arzg}
\makeevenfoot{arzg}{\normalfont\thepage}{}{}
\makeoddfoot{arzg}{}{}{\normalfont\thepage}
\pagestyle{arzg}

\checkandfixthelayout

\renewcommand{\maketitle}{
    \normalfont\normalsize\noindent
    \vspace{\bls{2}{1}{0.5}}
    {
        \begin{center}
            {\Large\thetitle}\\
            \vspace{\bls{1}{0.5}{0}}
            \theauthor\\
            \thedate
        \end{center}
    }
    \vspace{\bls{2}{1}{0.5}}
    \@afterindentfalse\@afterheading
}

\RequirePackage{environ}
\RenewEnviron{abstract}{
    {
        \small
        \begin{center}
            \begin{minipage}[c]{\optimallinewidth}
                {
                    \centering
                    \textsc{abstract}\par
                }
                \vspace{\bls{0.5}{0.5}{0.5}}
                \BODY
            \end{minipage}
        \end{center}
    }
    \vspace{\bls{1}{0.5}{0.5}}
    \@afterindentfalse\@afterheading
}

% remove chapter numbers from
% footnotes, sections, tables and figures
\counterwithout{footnote}{chapter}
\counterwithout{section}{chapter}
\counterwithout{table}{chapter}
\counterwithout{figure}{chapter}

% number all document divisions
% up to and including subsections
\setsecnumdepth{subsection}

\setsecheadstyle{\large}
\setbeforesecskip{\bls{-3}{-0.5}{0}}
\setaftersecskip{\bls{1.5}{0.5}{0}}

\setsubsecheadstyle{\itshape}
\setbeforesubsecskip{\bls{-2}{-0.5}{0}}
\setaftersubsecskip{\bls{1}{0.5}{0}}

\RequirePackage{xcolor}
\definecolor{red}{HTML}{972f00}
\RequirePackage[
    final,
    colorlinks=true,
    allcolors=red,
    breaklinks,
]{hyperref}
