% update by LouiseD, 16/12/202
% update by AlanS, 29/7/96



% ----------------------------------
%    Identification   
% ----------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{blue-book}
              [2020/12/16 v1.e
 A and V Group LaTeX document class]

% ----------------------------------
%    Initial code   
% ----------------------------------

% ----------------------------------
%    Declaration of options   
% ----------------------------------

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{a-and-v-note}}

% ----------------------------------
%    Execution of options   
% ----------------------------------

\ProcessOptions

% ----------------------------------
%    Package Loading   
% ----------------------------------

\LoadClass{a-and-v-note}


% ----------------------------------
%    Main code
% ----------------------------------

\NoteFamily{Louise's Blue Book Note}

\NoteFootnote{%
         Notes in this series are for $\epsilon$-baked ideas, 
         for \hbox{$1\geq\epsilon\geq 0$}. Only exceptionally should they be 
	 cited.}

