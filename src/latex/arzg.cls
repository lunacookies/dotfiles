\ProvidesClass{arzg}
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{xkeyval}
\RequirePackage{xifthen}
\newboolean{@arzg@twocolumn}\setboolean{@arzg@twocolumn}{false}
\DeclareOptionX[arzg]<common>{twocolumn}{\setboolean{@arzg@twocolumn}{true}}
\newboolean{@arzg@bibliography}\setboolean{@arzg@bibliography}{false}
\DeclareOptionX[arzg]<common>{bibliography}{\setboolean{@arzg@bibliography}{true}}
\ProcessOptionsX*[arzg]<common>

\ifthenelse{\boolean{@arzg@twocolumn}}{
      \PassOptionsToClass{twocolumn}{memoir}
}{}

\LoadClass[a4paper, oneside]{memoir}

\RequirePackage{amsmath}
\RequirePackage[version=4]{mhchem}
\RequirePackage[final]{graphicx}

\RequirePackage[final, tracking=true, letterspace=100]{microtype}
\frenchspacing

\ifthenelse{\boolean{@arzg@twocolumn}}{
    \renewcommand{\Large}{\@setfontsize\Large{15bp}{19bp}}
    \renewcommand{\large}{\@setfontsize\large{12bp}{15bp}}
    \newcommand{\slightlylarger}{\@setfontsize\slightlylarger{11bp}{13bp}}
    \renewcommand{\normalsize}{\@setfontsize\normalsize{10bp}{13bp}}
    \renewcommand{\small}{\@setfontsize\small{8bp}{10bp}}
}{
    \renewcommand{\Large}{\@setfontsize\Large{18bp}{22bp}}
    \renewcommand{\large}{\@setfontsize\large{14bp}{18bp}}
    \newcommand{\slightlylarger}{\@setfontsize\slightlylarger{13bp}{15bp}}
    \renewcommand{\normalsize}{\@setfontsize\normalsize{12bp}{15bp}}
    \renewcommand{\small}{\@setfontsize\small{10bp}{13bp}}
}

\normalsize

\newcommand{\bls}[3]{#1\baselineskip plus #2\baselineskip minus #3\baselineskip}

\setlength{\parindent}{\baselineskip}
\abnormalparskip{0bp}

\RequirePackage[osf, largesc]{newpxtext}
\RequirePackage[euler-digits]{eulervm}

\RequirePackage{calc}
\newcommand{\optimalline}{Cras dignissim nisi nec dolor blandit, ut varius ex pellentesque. Vestib-}
\newcommand{\optimallinewidth}{\widthof{\optimalline}}

\ifthenelse{\boolean{@arzg@twocolumn}}{
    \settypeblocksize{52\baselineskip}{\optimallinewidth * \real{1.618}}{*}
    \setlength\columnsep{1.5\baselineskip}
}{
    \settypeblocksize{42\baselineskip}{\optimallinewidth}{*}
}
\setlrmargins{*}{*}{1}
\setulmargins{*}{*}{2}

\setheadfoot{\baselineskip}{3\baselineskip}
\makepagestyle{arzg}
\makeevenfoot{arzg}{\normalfont\thepage}{}{}
\makeoddfoot{arzg}{}{}{\normalfont\thepage}
\pagestyle{arzg}

\checkandfixthelayout

\RequirePackage{cuted}
\setlength{\stripsep}{0bp}
\renewcommand{\maketitle}{
    \ifthenelse{\boolean{@arzg@twocolumn}}{
        \begin{strip}
    }{}
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
    \ifthenelse{\boolean{@arzg@twocolumn}}{
        \end{strip}
    }{}
}

\RequirePackage{environ}
\RenewEnviron{abstract}{
    \ifthenelse{\boolean{@arzg@twocolumn}}{
        \section*{Abstract}
        \BODY
    }{
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
}

% remove chapter numbers from
% footnotes, sections, tables and figures
\counterwithout{footnote}{chapter}
\counterwithout{section}{chapter}
\counterwithout{table}{chapter}
\counterwithout{figure}{chapter}

% number all document divisions
% up to and including subsubsections
\setsecnumdepth{subsubsection}

\setsecheadstyle{\large}
\setbeforesecskip{\bls{-4}{-1}{0}}
\setaftersecskip{\bls{2}{0.5}{0}}

\setsubsecheadstyle{\slightlylarger\itshape}
\setbeforesecskip{\bls{-3}{-0.5}{0}}
\setaftersecskip{\bls{1.5}{0.5}{0}}

\setsubsubsecheadstyle{\scshape\lowercase}
\setbeforesubsecskip{\bls{-2}{-0.5}{0}}
\setaftersubsecskip{\bls{1}{0.5}{0}}

\captionstyle{\small\itshape}
\captionnamefont{\small\scshape}
\ifthenelse{\NOT \boolean{@arzg@twocolumn}}{
    \newlength{\cw}
    \settowidth{\cw}{\small\itshape\optimalline}
    \captionwidth{\cw}
    \changecaptionwidth
}{}

\ifthenelse{\boolean{@arzg@bibliography}}{
    \usepackage[citestyle=authoryear,bibstyle=authortitle]{biblatex}
    \addbibresource{References.bib}
    \defbibheading{bibliography}[\bibname]{\section{#1}}
}{}

\RequirePackage{xcolor}
\definecolor{red}{HTML}{972f00}
\RequirePackage[
    final,
    colorlinks=true,
    allcolors=red,
    breaklinks,
]{hyperref}
