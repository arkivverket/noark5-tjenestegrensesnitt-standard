\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{arkivverketbook}[]

%% Just use the original class and pass the options
\LoadClassWithOptions{book}
% report, book, memoir, scrreprt or scrbook ?

% Show frames, make it easier to debug borders
%\usepackage{showframe}% http://ctan.org/pkg/showframe

% Insert Arkivverket logo at the top of every page
%\usepackage{graphicx}
%\usepackage{fancyhdr}
%\pagestyle{fancy}
%\renewcommand{\headrulewidth}{0pt}
%\renewcommand{\footrulewidth}{0pt}
%\setlength\headheight{82.0pt}
%\addtolength{\textheight}{-82.0pt}
%\chead{\includegraphics[width=\headwidth]{media/arkivverket-logo.png}}

\makeatletter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% From
% https://amyrhoda.wordpress.com/2012/06/04/latex-to-lulu-the-making-of-aosa-other-useful-packages-and-settings/

% The microtype package provides the ability to micromanage your
% typography. When invoked without any options it does some nice things
% like protruding punctuation over the edge of the right margin to make
% the margin appear smoother. Basically it makes your book look more
% professional with very little effort. It also has a ton of options if
% you want to micromanage even more.
\usepackage{microtype}

% Use lineno to show the line numbers on each page
% The line numbers appear after the frontmatter
\usepackage{lineno}

\let\orgmainmatter=\mainmatter
\def\mainmatter{\orgmainmatter\linenumbers}

% By dafault, LaTeX will try and make all your pages the length that
% you set using the geometry setting. If a page has images, tables,
% headings or paragraph breaks which make it shorter than that page
% length, LaTeX will pad the page by adding whitespace between
% elements. We thought that looked sillier than having pages be
% different lengths, so we used the raggedbottom command.
\raggedbottom

% Use space to separate paragraphs, instead of indenting the first
% line of the paragraph.
\setlength{\parindent}{0cm} \hangindent=\parindent
\setlength{\parskip}{2ex}
