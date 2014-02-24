%%% نام  قالب را تعیین می کند و همچنین بیان می کند که آخرین به روز رسانی  این قالب
%%% در چه زمانی بوده است. یک توصف مختصر هم از این بسته در اینجا امده است.
\ProvidesClass{Boostan-Thesis}
%%% تمام پارامترهای ورودی برای تنظیم متن را به کلاس زیر ارسال می‌کنیم
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{Boostan-UserManual}}
\ProcessOptions 
\LoadClass[oneside]{Style/Boostan-UserManualR}


%%% AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA


%%% برای تنظیم حاشیه صفحات
%\geometry{top=3cm, bottom=2.5cm, left=2cm, right=2.5cm}

%%  با دستور زیر می توانید فونتی مخصوص عبارات فارسی تعیین کنید:
\settextfont[Scale=1.3]{B Nazanin} 
%%\settextfont[Scale=1.2]{XB Niloofar}
%% شما با دستور زیر بعد از فراخوانی بسته xepersian می توانید فونت انگلیسی را تعیین کنید
%% دقت کنید که عبارات انگلیسی شما باید در دستور \lr{} قرار گیرد تا xepersian بتواند بفمهد که این عبارات انگلیسی است
\setlatintextfont[Scale=1]{Times New Roman}
%%\setlatintextfont[Scale=1.1]{Linux Libertine}

% % تعریف برای فونت اعداد و ارقام
%\setdigitfont[Scale=1.1]{XB Zar}

%% توسط دستورات defpersianfont و deflatinfont به ترتیب می توان یکسری فونت فارسی و انگلیسی دیگر تعریف کرد که در جاهای دیگر متن بتوان از آن استفاده کرد. برای استفاده کافی است که عبارتی که می خواهیم فونت آن عوض شود را به صورت زیر به عنوان نمونه بنویسیم.
%% \versionfont{این یک مثال است. }

%% تعریف یکسری فونت برای قسمت عنوان پروژه و ما بقی قسمت ها فونت قسمت "موسسه " در صفحه عنوان

\defpersianfont\tablefont[Scale=.8]{B Nazanin}
\defpersianfont\pejoheshfont[Scale=1.4]{Titr Bold}
%%فونت اسم گروه XB Titre
\defpersianfont\groupfont[Scale=1.4]{Zar}
%%% فونت عنوان گزارش
\defpersianfont\titlefont[Scale=2.4]{Titr Bold}
%% فونت نسخه گزارش
\defpersianfont\versionfont[Scale=1.6]{Mitra}
\defpersianfont\payanFont[Scale=1.8]{XB Yas}
\defpersianfont\nastaliq[Scale=2]{IranNastaliq}
\defpersianfont\farsifontshafigh[Scale=1.3]{Adobe Arabic}
\defpersianfont\titrt[Scale=1]{XB Titre}
\defpersianfont\traffict[Scale=1]{B Traffic}
\defpersianfont\farsifontsayeh[Scale=1.5]{XB Kayhan Sayeh}
\defpersianfont\titlefont[Scale=2.4]{Titr}

%% فونت‌های مورد نیاز برای صفحه شروع 
\defpersianfont\logofontR[Scale=1.2]{Zar}
\defpersianfont\typefontR[Scale=1.3]{B Nazanin}
\defpersianfont\titlefontR[Scale=2]{Titr}
\defpersianfont\datafontR[Scale=1.4]{Zar}

\deflatinfont\tableFontEn[Scale=.9]{Adobe Arabic}

%%  با استفاده از این دستور می‌توان فونت و فارسی و یا انگلیسی بودن اعداد در فرمول‌ها را به حالت اولیه (یعنی پیش‌فرض لاتک) برگرداند.
\DefaultMathsDigits

%\DeclareMathSizes{textsize}{mathsize}{scriptsize}{scriptscriptsize}
% گزینه اول: این برای چه دسته فونتی است. پیش فرض استایل ما فونت 10pt است. 
% گزینه دوم: اندازه فونت توابع و موجودات ریاضی درون متن.
% گزینه سوم: برای اسکریپت ها، اندازه زیرنویس و بالانویس.
% گزینه چهارم: برای زیرنویس زیرنویس.

% در دستورات زیر ما برای سه حالت، اندازه‌های مورد نظر را تعریف کرده ایم. 
\DeclareMathSizes{10}{11}{9}{8}   % For size 10 text
\DeclareMathSizes{11}{12}{11}{10}   % For size 11 text
\DeclareMathSizes{12}{13}{12}{11}  % For size 12 text

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% قالب صفحه و انتخاب حاشیه ها

%%% برای تعیین اندازه صفحه ابتدا باید اندازه stock و page را با دو دستور زیر تعیین کنیم. برای کارهای ما که هر صفحه ی خروجی در یک صفحه پرینت می شود، این دو مقدار به صورت مساوی مقدار دهی می شود. 
%%% در دو دستور زیر ما مقادیر استاندارد برای کاغذ A4 را قرار داده ایم.
\setlength{\headsep}{30pt}
%%%%\setstocksize{29.7cm}{21cm}
%%%%\settrimmedsize{29.7cm}{21cm}{*}
%%%\setlength{\trimtop}{0pt}
%%%\setlength{\trimedge}{\stockwidth}
%%%\addtolength{\trimedge}{-\paperwidth}
%%% در مرحله ی بعدی باید ابعادمتن در کاغذ را مشخص کنیم. 
%%%%\settypeblocksize{24.2cm}{16cm}{*}
%%% تعیین کننده حاشیه از بالا (آرگومان اول) و یا از پایین (آرگومان دوم) و یا نسبی (آرگومان سوم)
%%% دقت شود برای جلوگیری از ابهام تنها باید یکی از موارد فوق داده شود.
%%%%\setulmargins{2.5cm}{*}{*}
%%% به مانند دستور بالا، حاشیه از سمت چپ (آرگومان اول) و ...
%%%%\setlrmargins{2cm}{*}{*}
%%%\setmarginnotes{10pt}{10pt}{\onelineskip}
%%%%\setheadfoot{\onelineskip}{2\onelineskip}
%%%\setheaderspaces{*}{2\onelineskip}{*}
%%%%\checkandfixthelayout



%% محیطی برای قرار دادن abstract در گزارش و یا  در ابتدای هر فصل. در صورت استفاده از این محیط، متون داخل آن با فونتی متفاوت با فونت متن نوشته شده و در ابتدای متن نیز یک کلمه چکیده اضافه می شود. 


\let\oldabstract\abstract
\let\endoldabstract\endabstract

\renewenvironment{abstract}{
\section*{چکیده}
\settextfont[Scale=1.2]{Adobe Arabic} 
\setlatintextfont[Scale=1]{Times New Roman}
}{\\*[8pt]}





\newcommand{\entitle}{Fullerene graphs with exponentially many perfect matchings}
\newcommand{\enAuthor}{Farhad Mehrvarzi}
\newcommand{\ensupervisor}{Prof. H. Yousefi Azari}
\newcommand{\engdate}{February 2011}
\newcommand{\enlevel}{{A thesis submitted to the Graduate Studies Office
\\In partical fulfillment of the requirements for}}
\newcommand{\enmajor}{ The degree of Master in thesis \\Applied Mathematics}
\newcommand{\enDep}{University College of Science\\ School of Mathematics, Statistics and\\ Computer Science}



\gdef\@englishtitle{Your Thesis Title} 
\def\englishtitle#1{\gdef\@englishtitle{#1}}


\gdef\@englishAuthor{Moh Da} 
\def\englishAuthor#1{\gdef\@englishAuthor{#1}}


\gdef\@englishsupervisor{Dr} 
\def\englishsupervisor#1{\gdef\@englishsupervisor{#1}}

\gdef\@englishadvisor{Dr} 
\def\englishadvisor#1{\gdef\@englishadvisor{#1}}



\gdef\@englishDate{Aug 2012} 
\def\englishDate#1{\gdef\@englishDate{#1}}




\newcommand{\thesisInfo}{

 \clearpage\newpage
 \thispagestyle{empty}
\begin{center}
\large\bfseries به نام او
\end{center}
\vspace*{\stretch{3}}
\noindent 
پایان نامه جهت دریافت \@farsilevel
 \\*[20pt] 
عنوان: \@farsititle
 \\*[20pt] 
نگارش: \@farsiAuthor  
 \\*[20pt]
استاد راهنما:  \@farsisupervisor
 \\*[20pt]

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\makeatletter
\defpersianfont\chaptertitlefont[Scale=1.6]{B Titr}

\newcommand\mycustomraggedright{%
 \if@RTL\raggedleft%
 \else\raggedright%
 \fi}
\def\@part[#1]#2{%
\ifnum \c@secnumdepth >-2\relax
\refstepcounter{part}%
\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
\else
\addcontentsline{toc}{part}{#1}%
\fi
\markboth{}{}%
{\centering
\interlinepenalty \@M
\ifnum \c@secnumdepth >-2\relax
 \huge\bfseries \partname\nobreakspace\thepart
\par
\vskip 20\p@
\fi
\LARGE\bfseries #2\par}%
\@endpart}
\def\@makechapterhead#1{%
  \vspace*{200\p@}%
  {\parindent \z@ \raggedleft \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \Huge \bfseries \raggedleft{ #1}\par\nobreak
    \vskip 50\p@
  }}

%اگه می‌خواین که کلمه «فصل» رو هم داشته باشین، خط پایین رو غیرفعال کنین.
%\renewcommand{\chaptername}{}
%  نکته جانبی و بی‌ربط به این بحث: اگه می‌خواین که صفحات اول هر فصل، شماره صفحه نداشته باشن، ۹ خط پایین رو فعال کنین.
%\let\origchapter\chapter
%\renewcommand*{\chapter}{% 
%  \fancypagestyle{plain}{%
%    %\fancyhf{}%
%    \renewcommand{\headrulewidth}{0pt}%
%    \renewcommand{\footrulewidth}{0pt}%
%  }%
%\origchapter
%}

\makeatother

\nouppercaseheads
\makepagestyle{mystyle}
\makeevenhead{mystyle}{}{}{\itshape\leftmark\vskip -2mm}
\makeoddhead{mystyle}{}{}{\itshape\leftmark\vskip -2mm}
\makeheadrule{mystyle}{ \textwidth }{.8pt}
\makeevenfoot{mystyle}{}{\thepage}{}
\makeoddfoot{mystyle}{}{\thepage}{}
%\makepsmarks{mystyle}{%
%  \createmark{chapter}{left}{nonumber}{}{}}






\makeatletter
\newcommand{\englishcover}{
\clearpage
\thispagestyle{empty}

\begin{latin}
	\begin{center}
	\begin{table}
	\begin{tabular}{ccc}
	\includegraphics[width=.15\textwidth]{Pic/logo}&
	\begin{minipage}{0.55\linewidth}
	\vskip 0.5cm
	\begin{center}\Large
	{\Large
	University of Tehran}\\* [0.2cm]
	Faculity of Engineering\\*[0.2cm]
	Epartment of Electical and\\*[0.2cm]
	Computer Engineering\\*[0.2cm]
	\end{center}
	\end{minipage}
	&
	\includegraphics[width=.18\textwidth]{Pic/logo2}
	\end{tabular}
	\end{table}
		\vskip 10cm
		\huge{\@englishtitle}
		\vskip 2cm
		\Large{By :}         \\ \Large\textit{{\@englishAuthor}}
		\vskip 1.5cm
		\Large{Supervisor :} \\ \Large\textit{{\@englishsupervisor}}
		\vskip 1.5cm
		\Large{Consulating Advisor :} \\ \Large\textit{{\@englishadvisor}}
		\vskip 1.5cm
		\large{Thesis submitted to the Graduate Studies Office in partial fulfillment of the}\\*[5pt]
		\large{requirements for the degree of }\\*[5pt]
		\large{Master of Science in Computer Engineering - Master Intelligence and Robotics,}
		\vskip 1cm
		\Large{\@englishDate}
\end{center}
\end{latin}
}
\makeatother


