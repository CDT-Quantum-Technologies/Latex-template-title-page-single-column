% --- identification
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{standard-doc}[2001/03/03 UoBnote class]

% --- using pkgs
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}


% --- define options
\newif\if@color\@colorfalse
\newif\if@pdf\@pdffalse
\DeclareOption{color}{\@colortrue}
\DeclareOption{pdftex}{\@pdftrue}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\if@pdf
\RequirePackage[pdftex]{graphicx}
\else
\RequirePackage{graphicx}
\fi

\LoadClass[a4paper]{article}

\topmargin -15mm
\headsep 10mm
\headheight 23mm

%%\footheight 0mm

\textheight230mm 
\textwidth170mm

\hoffset 0mm
\voffset 0mm
%  modif centrage Coulon (papier A4, pas Letter) :
\oddsidemargin  -5mm
\evensidemargin -5mm

\leftmargin 20mm
\rightmargin 20mm


% --- load class


% color is switched on, use the color package
\if@color
\RequirePackage{color}
\fi%color

\def\id#1{\gdef\@id{#1}}
\def\@id{\@latex@error{No \noexpand\issue given}\@ehc}
\def\shorttitle#1{\gdef\@shorttitle{#1}}
\def\@shorttitle{\@latex@error{No \noexpand\shorttitle given}\@ehc}

\renewcommand\maketitle{
\begin{titlepage}\begin{center}
 {\includegraphics[scale=.25]{UCLlogo.png}} 

\vskip2cm
   {\LARGE \bf \@title \par}%
   \vskip 3em%
   {\large
     \lineskip .75em%
     \begin{tabular}[t]{c}%
       \@author
     \end{tabular}\par}%
   \vskip 1.5em%
   {\normalsize \textit{Module:}~ MPHYG001 \par}%
   \vspace{5 mm}
   {\normalsize \textit{ID:}~ \@id \par}%
   {\normalsize \textit{Date:}~ \@date \par}%
   %{\normalsize \textit{Word Count:}~ 8227 \par}%
   \vspace{90 mm}
   
{\small
School of Physics and Astronomy \\
University College London, \\
Gower Street, \\
London, WC1E 6BT\\
%E-Mail: Username[at]star.sr.bham.ac.uk
} \end{center}
\end{titlepage}
}


\pagestyle{fancy}
%\lhead{\setlength{\unitlength}{1mm}
%{\includegraphics[height=10mm]{bhamlogo.pdf}}}

\chead{\@shorttitle}
\rhead{}

\lfoot{} 
\cfoot{{\footnotesize \textit{page} \thepage\ of \pageref{LastPage}}} 
\rfoot{}


\message{note completed OK}