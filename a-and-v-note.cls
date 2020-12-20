
%%% a-and-v-note.cls
%%% Base style for A&V notes.
%%% Louise D 16/12/2020
%%% Based on a class by
%%% AlanS 29/7/96
%%%
%%% Revision 1.1  1996/07/29
%%% Initial revision
%%%


% ----------------------------------
%    Identification   
% ----------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{a-and-v-note}[A and V note class]

% ----------------------------------
%    Initial code   
% ----------------------------------

\def\NoteFamily#1{\def\@NoteFamily{#1}}
\def\@NoteFamily{Note}
\def\NoteNumber#1{\def\@NoteNumber{#1}}
\def\@NoteNumber{?}
\def\NoteFootnote#1{\def\@NoteFootnote{#1}}
\def\@NoteFootnote{?}
\def\NoteNumPrefix#1{\def\@NoteNumPrefix{#1}}
\def\@NoteNumPrefix{}


% ----------------------------------
%    Declaration of options   
% ----------------------------------

\DeclareOption{NotWide}{\AtEndOfClass{\setlength{\textwidth}{17 cm}}} 
\DeclareOption{ColouredAnnotations}%
  {\PassOptionsToPackage{ColouredAnnotations}{dream}}
\DeclareOption{Mono}%
  {\PassOptionsToPackage{Mono}{dream}}
\DeclareOption{BoxAndHoleAnnotations}%
  {\PassOptionsToPackage{BoxAndHoleAnnotations}{dream}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% ----------------------------------
%    Execution of options   
% ----------------------------------

\ProcessOptions

% ----------------------------------
%    Package Loading   
% ----------------------------------

\LoadClass{article}
%% \RequirePackage{aandv}

% ----------------------------------
%    Main code
% ----------------------------------
\setlength{\oddsidemargin}{0in}
\setlength{\evensidemargin}{-50pt}
\setlength{\textheight}{25 cm}  
\setlength{\headsep}{.1in}      % headline gets depth shaved off
\setlength{\textwidth}{17.5cm}
\setlength{\headheight}{0pt}
\setlength{\topmargin}{-.55in}  % DR -.5

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{\newpage
 \null
\vbox{\hbox to \textwidth{\hbox %
        {\@NoteFamily \thanks{\@NoteFootnote} {\ }\@NoteNumPrefix\@NoteNumber}%
        \hfill \hbox{\@author}}%
      \hfill\@date }
  \begin{center}
       \begin{LARGE}
          \textbf{\@title}
       \end{LARGE}
  \end{center}}
