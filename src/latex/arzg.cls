% vim: set filetype=tex nomodeline:

\ProvidesClass{arzg}
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{xkeyval}
\RequirePackage{xifthen}
\newboolean{@arzg@twocolumn}\setboolean{@arzg@twocolumn}{false}
\DeclareOptionX[arzg]<common>{twocolumn}{\setboolean{@arzg@twocolumn}{true}}
\newboolean{@arzg@doublespace}\setboolean{@arzg@doublespace}{false}
\DeclareOptionX[arzg]<common>{doublespace}{\setboolean{@arzg@doublespace}{true}}
\newboolean{@arzg@bibliography}\setboolean{@arzg@bibliography}{false}
\DeclareOptionX[arzg]<common>{bibliography}{\setboolean{@arzg@bibliography}{true}}
\newboolean{@arzg@darkmode}\setboolean{@arzg@darkmode}{false}
\DeclareOptionX[arzg]<common>{darkmode}{\setboolean{@arzg@darkmode}{true}}
\newboolean{@arzg@sans}\setboolean{@arzg@sans}{false}
\DeclareOptionX[arzg]<common>{sans}{\setboolean{@arzg@sans}{true}}
\ProcessOptionsX*[arzg]<common>

\ifthenelse{\boolean{@arzg@twocolumn}}{
    \PassOptionsToClass{twocolumn}{memoir}
}{}

\LoadClass[a4paper, oneside]{memoir}

\RequirePackage{amsmath}
\allowdisplaybreaks % allow page breaks in display math

\RequirePackage[version=4]{mhchem}
\RequirePackage[final]{graphicx}
\RequirePackage{pdfpages}

\RequirePackage[
    % match siunitx output to surrounding context,
    % i.e. font, italics, etc.
    detect-all,
    % separate digit groups with comma
    group-separator={,},
    % don’t group digits after the decimal point
    group-digits=integer,
    % show digit group separator with four digits (e.g. 1,000)
    group-minimum-digits=4,
    % J/kg/°C instead of J kg⁻¹ °C⁻¹
    per-mode=repeated-symbol,
]{siunitx}
\DeclareSIUnit{\atm}{atm}
\DeclareSIUnit{\M}{M}

\RequirePackage[final]{microtype}
\frenchspacing

\ifthenelse{\boolean{@arzg@twocolumn}}{
    \renewcommand{\Large}{\@setfontsize\Large{22bp}{29bp}}
    \renewcommand{\large}{\@setfontsize\large{12bp}{15bp}}
    \newcommand{\slightlylarger}{\@setfontsize\slightlylarger{11bp}{14bp}}
    \renewcommand{\normalsize}{\@setfontsize\normalsize{10bp}{13bp}}
    \renewcommand{\small}{\@setfontsize\small{8bp}{10bp}}
}{
    \ifthenelse{\boolean{@arzg@doublespace}}{
        \renewcommand{\Large}{\@setfontsize\Large{22bp}{44bp}}
        \renewcommand{\large}{\@setfontsize\large{14bp}{28bp}}
        \newcommand{\slightlylarger}{\@setfontsize\slightlylarger{13bp}{26bp}}
        \renewcommand{\normalsize}{\@setfontsize\normalsize{12bp}{24bp}}
        \renewcommand{\small}{\@setfontsize\small{10bp}{20bp}}
    }{
        \renewcommand{\Large}{\@setfontsize\Large{22bp}{29bp}}
        \renewcommand{\large}{\@setfontsize\large{14bp}{18bp}}
        \newcommand{\slightlylarger}{\@setfontsize\slightlylarger{13bp}{17bp}}
        \renewcommand{\normalsize}{\@setfontsize\normalsize{12bp}{16bp}}
        \renewcommand{\small}{\@setfontsize\small{10bp}{13bp}}
    }
}

\normalsize

\newlength{\spaceinc}
\ifthenelse{\boolean{@arzg@doublespace}}{
    \setlength{\spaceinc}{16bp}
}{
    \setlength{\spaceinc}{\baselineskip}
}

\newcommand{\bls}[3]{#1\spaceinc plus #2\spaceinc minus #3\spaceinc}

\setlength{\parindent}{\baselineskip}
\abnormalparskip{0bp}

\RequirePackage{fontspec}
\setmainfont[
    Scale=1.1,
    Numbers={OldStyle, Proportional},
    StylisticSet={1},
    SmallCapsFeatures={LetterSpace=5},
    SizeFeatures={
        {Size={-8.5}, OpticalSize=8},
        {Size={8.5-11}, OpticalSize=10},
        {Size={11-14}, OpticalSize=12},
        {Size={14-21.5}, OpticalSize=18},
        {Size={21.5-}, OpticalSize=36}
    }
]{Arno Pro}
\setsansfont[
    Scale=MatchLowercase,
    Numbers={OldStyle, Proportional},
    SmallCapsFeatures={LetterSpace=5},
    SizeFeatures={
        {Size={-8.4}, OpticalSize=8},
        {Size={8.4-13}, OpticalSize=11},
        {Size={13-19.9}, OpticalSize=19},
        {Size={19.9-}, OpticalSize=72}
    }
]{Cronos Pro}
\setmonofont[
    Scale=MatchLowercase,
    Numbers=OldStyle
]{Fira Mono}
\RequirePackage[euler-digits]{eulervm}

\ifthenelse{\boolean{@arzg@sans}}{
    \renewcommand{\familydefault}{\sfdefault}
}{}

\RequirePackage{calc}
\newcommand{\optimalline}{Cras dignissim nisi nec dolor blandit, ut varius ex pellentesque. Vestib-}
\newcommand{\optimallinewidth}{\widthof{\optimalline}}

\ifthenelse{\boolean{@arzg@twocolumn}}{
    \settypeblocksize{52\baselineskip}{\optimallinewidth * \real{1.618}}{*}
    \setlength\columnsep{1.5\baselineskip}
}{
    \ifthenelse{\boolean{@arzg@doublespace}}{
        \settypeblocksize{28\baselineskip}{\optimallinewidth}{*}
    }{
        \settypeblocksize{42\baselineskip}{\optimallinewidth}{*}
    }
}
\setlrmargins{*}{*}{1}
\setulmargins{*}{*}{2}

\setheadfoot{\baselineskip}{3\spaceinc}
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
                \Large
                \thetitle\\
                \vspace{\bls{1}{0.5}{0}}
                \large
                \theauthor\\
                \vspace{\bls{0.5}{0.25}{0.25}}
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
\setbeforesubsecskip{\bls{-2}{-0.5}{0}}
\setaftersubsecskip{\bls{1}{0.5}{0}}

\setsubsubsecheadstyle{\scshape\addfontfeature{Letters=UppercaseSmallCaps}}
\setbeforesubsubsecskip{\bls{-0.5}{-0.25}{0}}
\setaftersubsubsecskip{\bls{0.5}{0.25}{0}}

\captionstyle{\small\sffamily}
\captionnamefont{\small\sffamily\scshape\addfontfeature{Letters=UppercaseSmallCaps}}
\ifthenelse{\NOT \boolean{@arzg@twocolumn}}{
    \newlength{\cw}
    \settowidth{\cw}{\small\itshape\optimalline}
    \captionwidth{\cw}
    \changecaptionwidth
}{}

\RequirePackage[british]{babel}
\RequirePackage{csquotes}

\RequirePackage[noEnd=false]{algpseudocodex}
\tikzset{algpxIndentLine/.style={draw=gray,very thin,dashed}}

\algrenewcommand\algorithmicif{}
\algrenewcommand\algorithmicthen{}
\algrenewcommand\algorithmicend{}

\newcommand{\keyword}[1]{\textsc{#1}}
\newcommand{\function}[1]{\textnormal{\underline{\smash{#1}}}}

\ifthenelse{\boolean{@arzg@sans}}{
    \newcommand{\fakenest}{\If{}\hspace{-0.36em}}
    \newcommand{\fakeunnest}{\EndIf\hspace{-0.2em}}
}{
    \newcommand{\fakenest}{\If{}\hspace{-0.55em}}
    \newcommand{\fakeunnest}{\EndIf\hspace{-0.3em}}
}

\newcommand{\TEXT}[1]{\textnormal{#1}}
\newcommand{\STRING}[1]{\texttt{"#1"}}
\newcommand{\V}[1]{\textit{#1}}
\newcommand{\CALL}[2]{\function{#1}(#2)}
\newcommand{\RETURN}[1]{\keyword{return}\ #1}
\newcommand{\TRUE}{\keyword{true}\ }
\newcommand{\FALSE}{\keyword{false}\ }
\newcommand{\AND}{\keyword{and}\ }
\newcommand{\OR}{\keyword{or}\ }
\newcommand{\NOT}{\keyword{not}\ }
\newcommand{\FN}[3]{
    \fakenest\keyword{begin} \function{#1}(#2)
    #3
    \fakeunnest\keyword{end} \function{#1}
}
\newcommand{\IF}[2]{
    \fakenest\keyword{if} $#1$ \keyword{then}
    #2
    \fakeunnest\keyword{endif}
}
\newcommand{\IFELSE}[3]{
    \fakenest\keyword{if} $#1$ \keyword{then}
    #2
    \fakeunnest\fakenest\keyword{else}
    #3
    \fakeunnest\keyword{endif}
}
\newcommand{\WHILE}[2]{
    \fakenest\keyword{while} $#1$
    #2
    \fakeunnest\keyword{endwhile}
}
\newcommand{\FOR}[4]{
    \fakenest\keyword{for} $#2$ \keyword{to} $#3$
    #4
    \fakeunnest\keyword{next} \V{#1}
}
\newcommand{\REPEAT}[2]{
    \fakenest\keyword{repeat}
    #1
    \fakeunnest\keyword{until} $#2$
}
\newcommand{\CASE}[2]{
    \fakenest\keyword{casewhere} $#1$ is
    #2
    \fakeunnest\keyword{endcase}
}
\newcommand{\CHOICE}[2] {
    \STATE{#1 : #2}
}
\newcommand{\STATE}[1]{\State $#1$}

\newfloat{program}{lop}{Program}

\ifthenelse{\boolean{@arzg@bibliography}}{
    \RequirePackage[
        giveninits=true,
        backref,
        maxcitenames=2,
        maxbibnames=10,
        %
        % still truncate authors
        % even if this would make two sources
        % appear to have the same author
        % when they do not
        uniquelist=false,
        %
        % sort author, year, title
        sorting=nyt,
        sortcites=true,
    ]{biblatex}

    % always put given name before family name
    \DeclareNameAlias{sortname}{given-family}
    \DeclareNameAlias{default}{given-family}

    \addbibresource{References.bib}
    \defbibheading{bibliography}[\bibname]{\section*{#1}}

    % make bibliography smaller than body text
    \renewcommand*{\bibfont}{\small}
}{}

\RequirePackage{xcolor}
\ifthenelse{\boolean{@arzg@darkmode}}{
    \definecolor{blue}{HTML}{6699FF}
    \colorlet{links}{blue}
    \colorlet{computed}{blue}

    \definecolor{bg}{HTML}{292A30}
    \definecolor{fg}{HTML}{DFDFE0}
    \pagecolor{bg}
    \color{fg}
}{
    \definecolor{red}{HTML}{972f00}
    \colorlet{links}{red}
    \colorlet{computed}{red}
}

\RequirePackage[
    final,
    colorlinks=true,
    allcolors=links,
    breaklinks,
]{hyperref}

% sans serif URLs
\urlstyle{sf}

\RequirePackage[noabbrev]{cleveref}
\crefname{program}{program}{programs}
\Crefname{program}{Program}{Programs}

% custom quote environment that allows microtype protrusion
% (quotes often start with an opening quote character,
% which can now be hung in the margin)
\renewenvironment{quote}{
    \par
    \begingroup
    \vspace{\bls{1}{0.25}{0.25}}
    \leftskip=\spaceinc
    \rightskip=\spaceinc
    \noindent
    \ignorespaces
}{
    \vspace{\bls{1}{0.25}{0.25}}
    \par
    \endgroup
    \noindent
    \ignorespacesafterend
}

\newcommand{\abbr}[1]{\textsc{\addfontfeature{Letters=UppercaseSmallCaps}#1}}

\RequirePackage{enumitem}
\setlist{nosep}
\setlist[1]{
    leftmargin=0em,
    topsep=\bls{1}{0.5}{0.5},
    itemsep=\bls{0.5}{0.25}{0.25}
}
\setlist[2]{leftmargin=1em}
\setlist[3]{leftmargin=2em}
\setlist[4]{leftmargin=3em}
\setlist[5]{leftmargin=4em}

\RequirePackage{multicol}
\RequirePackage{changepage}
\newenvironment{datadictionary}{
    \ifthenelse{\boolean{@arzg@twocolumn}}{}{
        \begin{adjustwidth}{-5\baselineskip}{-5\baselineskip}
        \begin{multicols}{2}
        \raggedcolumns
    }
    \begin{itemize}[label={}, itemsep=\bls{1}{0.5}{0.5}]
}{
    \end{itemize}
    \ifthenelse{\boolean{@arzg@twocolumn}}{}{
        \end{multicols}
        \end{adjustwidth}
    }
}

\newcommand{\ddentry}[5]{
    \item {
        \begin{samepage}
            \begin{description}[
                font=\color{links}\normalfont\itshape,
                align=right,
                leftmargin=!,
                labelwidth=3.5em
            ]
                \raggedright
                \small
                \item[name] \texttt{#1}
                \item[type] #2
                \item[length] #3
                \item[description] #4
                \item[example] #5
            \end{description}
        \end{samepage}
    }
}

\RequirePackage{tabulary}
\RequirePackage[toc, eqno, enum, bib, lineno]{tabfigures}

\cftsetindents{section}{0em}{1em}
\renewcommand{\cftsectionleader}{\hfill}
\renewcommand\@tocmaketitle{\section*{\contentsname}}

\newcommand{\toc}{
    \begingroup
    \let\onecolumn\twocolumn
    \let\clearpage\relax
    \tableofcontents*
    \endgroup
}
