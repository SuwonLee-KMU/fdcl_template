% Generated on: Dec. 24, 2020
% Last Modification: Dec. 24, 2020
% Author: Suwon Lee from Seoul National University

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fdclreport}[2020/12/24 FDCL report class]

% Preliminary declarations
\LoadClass{article}
\RequirePackage{kotex}                  % use korean language
\RequirePackage{tabularx}               % modify the table width
\RequirePackage[margin=2cm]{geometry}   % page margin
\RequirePackage{xcolor,colortbl}        % set colors
\RequirePackage{indentfirst}            % Indent first paragraph

\definecolor{Gray}{gray}{0.85}
\newcolumntype{a}{>{\columncolor{Gray}}c}               % Table cell with gray background color
\newcolumntype{Y}{>{\centering\arraybackslash}X}        % centered table contents
\newcommand\ChangeRT[1]{\noalign{\hrule height #1}}     % Table linewidth

% Body of the class
\renewcommand\maketitle{
% \begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  % \null\vfil
  % \vskip 60\p@
  \begin{center}\renewcommand{\arraystretch}{1.5}
    \begin{tabularx}{\columnwidth}{!{\vrule width 2pt}a|X|a|X!{\vrule width 2pt}}
    \ChangeRT{2pt}
    \textbf{과제명}     &\multicolumn{3}{l!{\vrule width 2pt}}{\@project}\\
    \hline
    \textbf{문서제목}   &\multicolumn{3}{l!{\vrule width 2pt}}{\@title}\\
    \hline
    \textbf{작성자}     &\@author &\textbf{회의일시} & \@date\\
    \hline
    \textbf{수신자}     &\@recipient &\textbf{회의차수} &\@reportnumber 차 회의\\
    \ChangeRT{2pt}
    \end{tabularx}
    \end{center}
  \@thanks
  % \vfil\null
  % \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@project\@empty
  \global\let\@recipient\@empty
  \global\let\@reportnumber\@empty
  \global\let\reportnumber\relax
  \global\let\recipient\relax
  \global\let\project\relax
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

\newcommand\makedetailedcontents{
    \clearpage
    \setcounter{section}{0}
    \setcounter{figure}{0}
    \setcounter{table}{0}
    \setcounter{equation}{0}
    \begin{center}
    \renewcommand{\arraystretch}{1.5}
    \begin{tabularx}{\columnwidth}{Y}
    \hline
    세부연구수행내용\\
    \hline
    \end{tabularx}
    \end{center}
}

% Define variables
\def\project#1{\def\@project{#1}}
\def\recipient#1{\def\@recipient{#1}}
\def\reportnumber#1{\def\@reportnumber{#1}}