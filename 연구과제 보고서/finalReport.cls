% Generated on: Dec. 24, 2020
% Last Modification: Jan. 28, 2021
% Author: Suwon Lee from Seoul National University

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{finalReport}[2021/01/28 FDCL final report class]

% Preliminary declarations
\LoadClass{article}
\RequirePackage{kotex}                  % use korean language
\RequirePackage{tabularx}               % modify the table width
\RequirePackage[margin=2cm]{geometry}   % page margin
\RequirePackage{xcolor,colortbl}        % set colors
\RequirePackage{indentfirst}            % Indent first paragraph

\RequirePackage{amsmath}
\RequirePackage{amssymb}

% \definecolor{Gray}{gray}{0.85}
% \newcolumntype{a}{>{\columncolor{Gray}}c}               % Table cell with gray background color
% \newcolumntype{Y}{>{\centering\arraybackslash}X}        % centered table contents
% \newcommand\ChangeRT[1]{\noalign{\hrule height #1}}     % Table linewidth

% Body of the class
\renewcommand\maketitle{
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  [\@reportname]
  % \null\vfil
  \vskip 10em
\begin{center}\renewcommand{\arraystretch}{1.5}
    {\Huge \@title \par \vspace{1cm} \huge -\@subtitle- \par}%
    \vskip 30mm%
    {\huge \@yearmonth \par}
    \vskip 20mm%
\end{center}
\begin{flushright}
    {\Large
     \lineskip .75em%
      \begin{tabular}[t]{rrl}%
      % \rule{0pt}{10cm}
        과제책임자:  & \@authorFirst & \@authorFirstTitle\\
        참여연구원:  & \@authorSecond & \@authorSecondTitle\\
                    & \@authorThird & \@authorThirdTitle\\
                    & \@authorFourth & \@authorFourthTitle\\
      \end{tabular}\par}%
\end{flushright}
\vspace{1cm}
\begin{center}
    {\huge 서 울 대 학 교}
\end{center}
  \par
  \@thanks
  \vfil\null
  \setcounter{footnote}{0}%
  \setcounter{page}{0}
  \pagestyle{empty}
  \@thanks
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@reportname\@empty
  \global\let\@recipient\@empty
  \global\let\@reportnumber\@empty
  \global\let\@authorFirst\@empty
  \global\let\@authorSecond\@empty
  \global\let\@authorThird\@empty
  \global\let\@subtitle\@empty
  \global\let\subtitle\relax
  \global\let\authorThird\relax
  \global\let\authorSecond\relax
  \global\let\authorFirst\relax
  \global\let\reportnumber\relax
  \global\let\recipient\relax
  \global\let\reportname\relax
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \clearpage
  \pagestyle{plain}
}


% \newcommand\makedetailedcontents{
%     \clearpage
%     \setcounter{section}{0}
%     \setcounter{figure}{0}
%     \setcounter{table}{0}
%     \setcounter{equation}{0}
%     \begin{center}
%     \renewcommand{\arraystretch}{1.5}
%     \begin{tabularx}{\columnwidth}{Y}
%     \hline
%     세부연구수행내용\\
%     \hline
%     \end{tabularx}
%     \end{center}
% }

% Renew commands
\renewcommand{\baselinestretch}{1.7}
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}
\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
\renewcommand{\contentsname}{목 차}
\renewcommand{\listfigurename}{그림목차}
\renewcommand{\listtablename}{표목차}
\renewcommand{\refname}{참고문헌}

\makeatletter
\renewcommand{\tableofcontents}{%
    \section*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}
           }%
    \@starttoc{toc}%
    }

\renewcommand{\section}{%
\@startsection
    {section}{1}{\z@}
    {-3.5ex \@plus -1ex \@minus -.2ex}
    {8ex \@plus.2ex}
    {\clearpage\normalfont\huge\bfseries\centering
    \setcounter{figure}{0}}%
    }

\renewcommand\subsection{%
  \@startsection{subsection}%  name
    {2}% level
    {0em}% indent
    {5ex plus 0.1ex minus -0.05ex}% beforeskip
    {1em plus 0.2em}% afterskip
    {\normalfont\large\bfseries}% style
  }

\renewcommand\subsubsection{%
  \@startsection{subsubsection}%  name
    {3}% level
    {0em}% indent
    {5ex plus 0.1ex minus -0.05ex}% beforeskip
    {1em plus 0.2em}% afterskip
    {\normalfont\normalsize\bfseries}% style
  }

% \newcommand\section{\@startsection {section}{1}{\z@}%
%        {-3.5ex \@plus -1ex \@minus -.2ex}%
%        {2.3ex \@plus.2ex}%
%        {\normalfont\Large\bfseries}}
% Define variables
\def\reportname#1{\def\@reportname{#1}}
\def\authorFirst#1{\def\@authorFirst{#1}}
\def\authorSecond#1{\def\@authorSecond{#1}}
\def\authorThird#1{\def\@authorThird{#1}}
\def\authorFourth#1{\def\@authorFourth{#1}}
\def\authorFirstTitle#1{\def\@authorFirstTitle{#1}}
\def\authorSecondTitle#1{\def\@authorSecondTitle{#1}}
\def\authorThirdTitle#1{\def\@authorThirdTitle{#1}}
\def\authorFourthTitle#1{\def\@authorFourthTitle{#1}}
\def\subtitle#1{\def\@subtitle{#1}}
\def\yearmonth#1{\def\@yearmonth{#1}}
% \def\recipient#1{\def\@recipient{#1}}
% \def\reportnumber#1{\def\@reportnumber{#1}}