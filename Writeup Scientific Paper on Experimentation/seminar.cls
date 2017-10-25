\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{seminar}[2014/01/31 v0.2 TECO Standard Seminar Contribution]

\if@compatibility\else
\newif\ifgerman\germanfalse
\DeclareOption{german}{\germantrue}
\fi

\ProcessOptions

\LoadClass[a4paper]{llncs}


%% -------------------------------
%% |          Packages           |
%% -------------------------------

\ifgerman%
\usepackage[english,ngerman]{babel}%
\else%
\usepackage[ngerman,english]{babel}%
\fi

\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

\usepackage{url}

%% --- End of Packages ---


%% -------------------------------
%% |         New commands        |
%% -------------------------------

\newcommand{\keywords}[1]{\par\addvspace\baselineskip
\noindent\keywordname\enspace\ignorespaces#1}

\newcommand{\semcover}[5]{%
\mainmatter%
\title{#1}%
\ifgerman%
\author{#2$^{*}$\\ \vspace*{.5em} \small{Betreuer:~#4$^{\dag}$}}%
\institute{Karlsruher Institut für Technologie (KIT)\\ Pervasive Computing Systems -- TECO\\ $^{*}$\url{#3}\\ $^{\dag}$\url{#5}}%
\else%
\author{#2$^{*}$\\ \vspace*{.5em} \small{Advisor:~#4$^{\dag}$}}%
\institute{Karlsruhe Institute of Technology (KIT)\\ Pervasive Computing Systems -- TECO\\ $^{*}$\url{#3}\\ $^{\dag}$\url{#5}}%
\fi%
\maketitle%
}

\newcommand{\sembib}[1]{%
\bibliographystyle{splncs03}%
\bibliography{#1}%
}

\newcommand{\semkeywords}[1]{%
\keywords{#1}%
}

%% --- End of New Commands ---


%% **** END OF CLASS ****
