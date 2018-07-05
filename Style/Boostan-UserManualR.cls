%% Data: 2013/09/28    Time: 17:59:07 
%%% نام  قالب را تعیین می کند و همچنین بیان می کند که آخرین به روز رسانی  این قالب
%%% در چه زمانی بوده است. یک توصف مختصر هم از این بسته در اینجا امده است.
\ProvidesClass{Boostan-UserManual}
%%% تمام پارامترهای ورودی برای تنظیم متن را به کلاس زیر ارسال می‌کنیم.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions

\LoadClass[10pt,a4paper,oneside]{memoir}
%% وارد کردن یکسری دستورات ابتدایی و بسته‌های مورد نیاز به استایل.
\input{Style/Boostan-BasicStyleR}

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
%%%==================== تنظیمات بسته geometry
%%% تنظیمات مربوط به حاشیه صفحه
\geometry{top=2.8cm, bottom=3cm, left=2.2cm, right=2.3cm}

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%==================== تنظیمات listing
%%  در این قسمت تمام ابزارهای مورد نیاز در نوشتن برنامه ها اورده شده 
%%  است. با استفاده از این ابزارهای می‌توان برنامه های مورد نیاز را در مستند جای داد.
\definecolor{listinggray}{gray}{.98}

\lstset{% general command to set parameter(s)
	% زبان برنامه نویسی که به طور پیش فرض انتخاب می شود.
	language=Java,
	% رنگ پیش فرض برای پیش زمینه
	backgroundcolor=\color{listinggray},
	%% میزان طول محیط listings را مشخص می کند، به صورت پیش فرض \textwidth است. 
	%linewidth=\textwidth ,
	%% نوع قالب دور محیط listings را تعیین می کند. 
	frameround=fttt,
	frame=trBL,
	%% is selected at the beginning of each listing. You could use \footnotesize,
	%% \small, \itshape, \ttfamily, or something like that. The last token of
	%% basic style must not read any following characters.
	basicstyle=\ttfamily, % print whole listing small
	%%   با این دستور استایل keyword ها را مشخص می کنیم. مثلا در این حالت گفته ایم که keyword ها را با رنگ آبی مشخص کند، و آن ها را bold‌کند. دقت کنید که keyword های زبان‌هایی که این بسته پشتیبانی می‌کند، 
	%% در این بسته تعریف شده است. مثلا در JAVA کلمه main به صورت پیش فرض تعریف شده است و در صورت وجود آن در کد شما آن را Latex آبی رنگ می‌کند. 
	keywordstyle=\color{blue}\bfseries,
	% underlined bold black keywords
	%identifierstyle=, % nothing happens
	%framexleftmargin=5mm, frame=shadowbox, rulesepcolor=\color{red}
	%% استایل String را در متن مشخص می کند. مثلا در این جا گفته شده است که رشته ها را با رنگ قرمز و به صورت ایتالیک نمایش بده.
	stringstyle=\ttfamily\color{red}, % typewriter type for strings
	%% نحوه استایل comment را مشخص می کند. دقت کنید که رنگ انتخاب شده نوعی رنگ سبز است، برای این که این رنگ شناخته شود می بایست دو بسته color و xcolor به صورتی که فراخوانی شده است، فراخوانی شود. 
	commentstyle=\color{LimeGreen},
	lineskip = .5pt,
	%% سه دستور بعدی نحوه نمایش شماره خطوط را مشخص می کند. 
	numberstyle=\footnotesize, 
	%% تعیین فاصله بین شماره خطوط و محیط listings
	numbersep=10pt,
	%% محل قرارگیری شماره خطوط
	numbers=left,
	%% تعیین محل قرارگیری caption محیط. بطور پیش فرض در بالای محیط است که به پایین محیط تغییر داده شده است. 
	captionpos=b, 
	%% توسط breakline می توانید خاصیت شکسته شدن خطوط بلند را در محیط listings فعال و یا غیرفعال کنید.
	%% activates or deactivates automatic line breaking of long lines.
	breaklines=true,
	%% باعث می شود که فاصله های بین رشته های نمایان شود.
	%% lets blank spaces in strings appear  or as blank spaces
	showstringspaces=true
}% 

%% البته شما می توانید این موارد پیش فرض را به ازای هر کد تغییر دهید. به عنوان مثال، ما یک کد در پوشه Code در شاخه فعلی قرار دادیم، می خواهیم آن را وارد متن کنیم، کافی است که خطوط زیر را در محل مناسبی که می خواهیم کد را قرار دهیم وارد کنیم. در این مثال یک فایل کد JAVA به نام myCode.java را می خواهیم وارد کنیم. 
%%\begin{latin}
%%\lstinputlisting[breaklines=true,numbers=left,language=Java, basicstyle=\ttfamily, numberstyle=\footnotesize, numbersep=10pt, captionpos=b, frame=single, breakatwhitespace=false]{Code/myCode.java}
%%\end{latin}

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
%%==================== تنظیمات hyperref

%%% برای وارد کردن کلمه (بخش) در فهرست مطالب بسته hyperref برای حالت فارسی یک مشکل دارد. بدین منظور این 
%%% مشکل را به صورت دستی حل شده است. برای این که رنگ keywordstyle که تعیین کننده رنگ کل قسمت فهرست مطالب
%%% نیز هست یکسان در آید یک پارامتر رنگ برای keywordstyle این جا تعریف می‌کنیم، و سپس از آن هم در تنظمیات hypperref 
%%% و هم در اون کدهایی که به صورت دستی وارد شده است، استفاده می‌شود. 
\newcommand{\keywordstyleColor}{blue}

\newsubfloat{figure}
%% در این قسمت تنظیمات بسته hyperref را قرار می دهیم.
%% این تنظیمات شامل موارد زیر است.
\hypersetup{
%% موقعی که فایل پی دی اف خروجی را باز می کنید صفحه به صورت عریض و بزرگ باز می شود.
	pdfmenubar=false, pdfstartview=FitH, 
	%% در قسمت مراجع شماره صفحه ای که به آن مرجع ارجاع داده است را وارد می کند،
	%% مواردی که برای فعال سازی این که شماره اشکال را به صورت ارجاعی نشان دهد
	%pagebackref =true,hyperfigures=true,
	%% به جای استفاده از مربع قرمز دور موارد ارجاعی از لینک های رنگی استفاده کند.
	colorlinks=true, 
	%% رنگ برخی از لینک ها در زیر تعریف شده است. 
	linkcolor=\keywordstyleColor, anchorcolor=green, citecolor=magenta, urlcolor=cyan, filecolor=magenta, pdftoolbar=true,bookmarkstype=toc
	%bookmarksopen = true,
	%bookmarksopenlevel = 1
	%%% اگر این option را true‌ بکنیم، آن‌گاه در کنار bookmark شماره فصل و بخش و زیربخش نیز می آید. مثلا می‌نویسد: ۱.۲ طراحی شبکه
	%bookmarksnumbered = true
} % M

%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%==================== تنظیمات tikz
\usetikzlibrary{mindmap,backgrounds,shadows,trees,arrows,shapes,positioning}

%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%==================== تنظیمات graphicx
% برای اضافه کردن تصاویر به متن این امکان وجود دارد که تصاویر را در پوشه‌های
% متفاوت قرار داد. با این کار از زیاد شدن پرونده‌ها در مسیر مستند جلوگیری می
% شود. علاوه بر این دسته‌ای از تصاویر وجود دارد که بین همه مستندها مشترک است
% برای نمونه نماد پژوهشکده که بین همه مشترک است.  از این رو تعداد مسیر به عنوان
% مسیرهای پیش فرض برای جستجوی تصاویر تعیین شده است.
\graphicspath{{./}{./Pic/}{./images/}{../}{../Pic/}}

%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%% تنظیم caption جداول و اشکال و ... توسط دستورات memoir
\captionnamefont{\small}
\captiontitlefont{\small}
%\captionstyle{}
%\captionwidth{\linewidth}
%\normalcaptionwidth
%\normalcaption
\captiondelim{: }

%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%==================== تنظیمات algorithm و algorithmic
%\floatname{algorithm}{الگوریتم}

%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%==================== تنظیمات مربوط به ایجاد watermarking

%% زاویه متن Watermark
\SetWatermarkAngle{45}
%% اندازه watermark
\SetWatermarkScale{1.5}

\let\oldSetWatermarkText\SetWatermarkText
%% اگر بخواهید watermark شما یک رنگ دیگر داشته باشد، این دو خط را فعال کنید و رنگ مورد نظر خود را انتخاب کنید
%\definecolor{orange}{RGB}{229,252,219} 
%\renewcommand{\SetWatermarkText}[1]{\oldSetWatermarkText{\textcolor{orange}{#1}}}

\DeclareDocumentCommand{\SetWatermarkText}{m g}{
	\oldSetWatermarkText{#1}
	\IfValueTF{#2}{
		\SetWatermarkLightness{#2}
	}{%%
		\SetWatermarkLightness{.94}
	}%%
}%

%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
%%% تنظیم فونت
%%% تعریف یک دستور به عنوان فونت پیش فرض
\renewcommand{\defaultFont}{
	%%%  با دستور زیر می توانید فونتی مخصوص عبارات فارسی تعیین کنید:
	\settextfont[Scale=1.3]{B Nazanin} 
	%%\settextfont[Scale=1.2]{XB Niloofar}
	%%% شما با دستور زیر بعد از فراخوانی بسته xepersian می توانید فونت انگلیسی را تعیین کنید
	%%% دقت کنید که عبارات انگلیسی شما باید در دستور \lr{} قرار گیرد تا xepersian بتواند بفمهد که این عبارات انگلیسی است
	%%\setlatintextfont[Scale=1]{Times New Roman}
	\setlatintextfont[Scale=1.1]{Linux Libertine}
	%% % تعریف برای فونت اعداد و ارقام
	%\setdigitfont[Scale=1.1]{XB Zar}
} % M

\defaultFont

%% توسط دستورات defpersianfont و deflatinfont به ترتیب می توان یکسری فونت فارسی و انگلیسی دیگر تعریف کرد که در جاهای دیگر متن بتوان از آن استفاده کرد. برای استفاده کافی است که عبارتی که می خواهیم فونت آن عوض شود را به صورت زیر به عنوان نمونه بنویسیم.
%% \versionfont{این یک مثال است. }

%% تعریف یکسری فونت برای قسمت عنوان پروژه و ما بقی قسمت ها فونت قسمت "موسسه " در صفحه عنوان

\defpersianfont\pejoheshfont[Scale=1.4]{Titr}
%%فونت اسم گروه XB Titre
\defpersianfont\groupfont[Scale=1.4]{XB Zar}
%%% فونت عنوان گزارش
\defpersianfont\titlefont[Scale=2.4]{Titr}
%% فونت نسخه گزارش
\defpersianfont\versionfont[Scale=1.6]{B Mitra}
\defpersianfont\payanFont[Scale=1.8]{XB Yas}
\defpersianfont\nastaliq[Scale=2]{IranNastaliq}
\defpersianfont\farsifontshafigh[Scale=1.3]{XB Shafigh}
\defpersianfont\titrt[Scale=1]{XB Titre}
\defpersianfont\traffict[Scale=1]{XM Traffic}
\defpersianfont\farsifontsayeh[Scale=1.5]{XB Kayhan Sayeh}
\defpersianfont\titlefont[Scale=2.4]{Titr}
\defpersianfont\godFont[Scale=1]{B Nazanin}
\defpersianfont\titleFontEn[Scale=1]{Traffic}
%% فونت‌های مورد نیاز برای صفحه شروع 
%\defpersianfont\tablefont[Scale=.8]{XM Traffic}
\deflatinfont\tableFontEn[Scale=.9]{XB Shafigh}
%%  با استفاده از این دستور می‌توان فونت و فارسی و یا انگلیسی بودن اعداد در فرمول‌ها را به حالت اولیه (یعنی پیش‌فرض لاتک) برگرداند.
\DefaultMathsDigits

%% نحوه تغییر اندازه فونت عبارات ریاضی و فرمول‌ها. این کار توسط دستور زیر انجام می‌شود. 
%%\DeclareMathSizes{textsize}{mathsize}{scriptsize}{scriptscriptsize}
%% گزینه اول: این برای چه دسته فونتی است. پیش فرض استایل ما فونت 10pt است. 
%% گزینه دوم: اندازه فونت توابع و موجودات ریاضی درون متن.
%% گزینه سوم: برای اسکریپت ها، اندازه زیرنویس و بالانویس.
%% گزینه چهارم: برای زیرنویس زیرنویس.

%% در دستورات زیر ما برای سه حالت، اندازه‌های مورد نظر را تعریف کرده ایم. 
%%\DeclareMathSizes{10}{11}{9}{8}   % For size 10 text
%%\DeclareMathSizes{11}{12}{11}{10}   % For size 11 text
%%\DeclareMathSizes{12}{13}{12}{11}  % For size 12 text

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%% فایل  Environments  در برگیرنده تعریف یکسری محیط نوین است. 
\input{Style/Environments}

%% فایل  Environments  در برگیرنده تعریف یکسری استایل برای فصل‌ها است. 
\input{Style/ChapterStyle}

%%% تعریف یکسری استایل برای صفحه شروع 
\input{Style/titleStyle}

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
%% تنظیم فاصله خطوط در متن اصلی
\setlength{\baselineskipVar}{1cm}
%% تنظیم فاصله خطوط در فهرست‌ها
\setlength{\listlineskipVar}{0.9cm}
%%============================ پاورقی
%% تنظیم‌های مربوط به پاورقی: فاصله پاورقی با متن + فاصله بین خطوط در پاورقی
\setlength{\footnotesep}{0.5cm}
\setlength{\skip\footins}{2cm}

%%%% تعریف یکسری دستور به منظور حل مشکل قرار دادن part در متن و آمدن آن در فهرست مطالب. 
\makeatletter
\renewcommand*\l@part[2]{
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}
    \addvspace{2.25em \@plus\p@}
    \setlength\@tempdima{3em}
    \begingroup
      \parindent \z@ \if@RTL\leftskip\else\rightskip\fi \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries\textcolor{\keywordstyleColor}{بخش} #1
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
  \fi}
\makeatother

%%\part{part}	     				        -1	not in letters
%%\chapter{chapter}		 	                   0	only books and reports
%%\section{section}		 	                   1	not in letters
%%\subsection{subsection}		         2	not in letters
%%\subsubsection{subsubsection}	         3	not in letters
%%\paragraph{paragraph}		                   4	not in letters
%%\subparagraph{subparagraph}	         5	not in letters

%% این دستور تعیین می‌کند که در متن تا چه عمقی شماره‌گذاری انجام شود. 
\setcounter{secnumdepth}{3}

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
%% باز تعریف محیط شکل

\makeatletter
\renewenvironment{figure}[1][]{
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip = .8cm
	 \ifthenelse{\equal{#1}{}}{
		   \@float{figure}
	 }{%%
		   \@float{figure}[#1]
	 }%%
%% این دستور centering در این قسمت موجب می‌شود که عکس شما در وسط متن قرار گیرد. 
	 \centering
}{%
	 \end@float
}%
\makeatother

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
%%============================ تنظیمات مربوط به فونت و اندازه جداول
%% بازنویسی محیط جدول
\makeatletter
\renewenvironment{table}[1][]{
	\ifthenelse{\equal{#1}{}}{\@float{table}}{\@float{table}[#1]}
	\centering
}{%
	\end@float
}%
\makeatother
	
%% بازنویسی محیط tabular به منظور تنظیم فونت‌های جدول
\let\oldtabular\tabular
\let\endoldtabular\endtabular
\renewenvironment{tabular}{
	\bgroup
	\settextfont[Scale=.8]{XM Traffic}
	\setlatintextfont[Scale=.9]{Linux Libertine}
	\oldtabular
}{%
	\endoldtabular 
	\egroup
}%

%% تنظیم کننده فاصله بین خطوط (ردیف‌ها) در یک جدول
\renewcommand{\arraystretch}{1.3}
%% تنظیم کننده ضخامت خطوط جدول
%%\renewcommand{\arrayrulewidth}{.55pt}
%% تنظیم فاصله بین خطوط دو خطه (||) و یا (حالت افقی ||)
%%\renewcommand{\doublerulesep}{1pt}

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

%% دستوری برای سیاه و سفید کردن متن برای گرفتن پرینت. در این دستور در اولین گام رنگ تمامی ارجاعات که توسط hyperref فعال می‌شوند، سیاه می‌شود. 
\newcommand{\printver}{
	\renewcommand{\keywordstyleColor}{black}
	\hypersetup{linkcolor=black, anchorcolor=black, citecolor=black, urlcolor=black, filecolor=black, pdftoolbar=true}
}%

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

%% باز تعریف محیط document، هر دستوری که می خواهید در ابتدای برنامه اجرا شود را در این قسمت بنویسید.

%% بازنویسی محیط \begin{document}
\let\olddocument\document
\let\endolddocument\enddocument

\makeatletter
\renewenvironment{document}{
	\olddocument
	%% تنظیم استایل سرفصل
	\chapterstyle{BlueBox}
	\pagestyle{plain}
	%% تنظیم فاصله بین خطوط با دستور \baselineskip
	\baselineskip = \baselineskipVar
	\pagenumbering{arabic}
	\SetWatermarkText{}
}{%
	\endolddocument
}%
\makeatother

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 


%% محیطی برای قرار دادن abstract در گزارش و یا  در ابتدای هر فصل. در صورت استفاده از این محیط، متون داخل آن با فونتی متفاوت با فونت متن نوشته شده و در ابتدای متن نیز یک کلمه چکیده اضافه می شود. 
\renewenvironment{abstract}{%
	\section*{چکیده}
	\settextfont[Scale=1]{XB Niloofar} 
	% \setlatintextfont[Scale=1]{Times New Roman}
	\setlatintextfont[Scale=1]{Linux Libertine}
}{%
	\bigskip
} % M

%% این دستور تعیین می‌کند که چه تا چه عمقی شماره‌گذاری شود. در خود متن نه در فهرست مطالب دقت کنید که برای تعیین این که در فهرست مطالب تا چه عمقی شماره گذاری صورت بگیرد باید از دستور
%% \setcounter{tocdepth}{....}
%% استفاده کرد که در ادامه می آید. 

\setcounter{tocdepth}{2}
%%  تنظیمات مربوط به فهرست مطالب، بازنویسی محیط فهرست مطالب برای تعیین فاصله خطوط، قرار دادن در bookmark ها
\let\Oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{
%% این دستور مشخص می‌کند که نحوه شماره‌گذاری این قسمت به صورت یاد شده باشد. 
	\pagenumbering{alph}‎
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip = \listlineskipVar
	\Oldtableofcontents\clearpage
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip = \baselineskipVar
	\savepagenumber
	\pagenumbering{arabic}
}%

% با این دستور در فهرست مطالب در هنگام آوردن شماره و عنوان فصل در ابتدای آن یک کلمه فصل می گذارد یعنی مثلا می نویسد: (فصل اول: مقدمه ای بر شبکه ..................... ۱)
\renewcommand*{\cftchaptername}{
فصل
\space}%


%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%=========================== تنظمیات محیط فهرست اشکال

%% این دستورات موجب می‌شود که یک تصویر بند انگشتی در فهرست مطالب ظاهر شود. برای این کار می‌بایست در قسمت caption به صورت زیر فایل تصویر نیز وارد شود. 
%% ٍExample: \caption{\lofimage{/Introduction/Person/Shannon} \lr{Claude Shannon}}

\newlength{\lofthumbsize}
\setlength{\lofthumbsize}{2em}

\newif\iflofimage
\DeclareRobustCommand*{\lofimage}[2][]{%
  \iflofimage
    $\vcenter to \lofthumbsize{\vss%
      \hbox to \lofthumbsize{\hss\includegraphics[{width=\lofthumbsize,height=\lofthumbsize,keepaspectratio=true,#1}]{#2}\hss}%
    \vss}$%
    \quad
  \fi
  \ignorespaces
}


%% در دستورات زیر محیط فهرست اشکال باز تعریف شده و اولا این محیط به bookmark اضافه شده و ثانیا مشکل صفحات اضافی حل شده است. ثالثا فاصله خطوط برای زیبایی در این 
%% محیط اندکی کم شده است، ولی دوباره بعد از آوردن این محیط به حالت اولیه برگشته است. در ضمن از شماره گذاری حرفی برای این محیط استفاده شده است. 
\let\Oldlistoffigures\listoffigures
\renewcommand{\listoffigures}{
%% این دستور مشخص می‌کند که نحوه شماره‌گذاری این قسمت به صورت یاد شده باشد. 
	\pagenumbering{alph}
	\restorepagenumber
	\baselineskip = \listlineskipVar
	\cleardoublepage
	\phantomsection
	\lofimagetrue
	\Oldlistoffigures\clearpage
	\lofimagefalse
	\baselineskip = \baselineskipVar
	\savepagenumber
%% با این دستور نحوه شماره‌گذاری به حالت اولیه یعنی (arabic) باز می‌گردد. 
	\pagenumbering{arabic}
}%

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%% در دستورات زیر محیط فهرست جداول باز تعریف شده و اولا این محیط به bookmark اضافه شده و ثانیا مشکل صفحات اضافی حل شده است. ثالثا فاصله خطوط برای زیبایی در این 
%% محیط اندکی کم شده است، ولی دوباره بعد از آوردن این محیط به حالت اولیه برگشته است. در ضمن از شماره گذاری حرفی برای این محیط استفاده شده است. 
\let\Oldlistoftables\listoftables
\renewcommand{\listoftables}{
%% این دستور مشخص می‌کند که نحوه شماره‌گذاری این قسمت به صورت یاد شده باشد. 
	\pagenumbering{alph}
	\restorepagenumber
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip = \listlineskipVar
	\cleardoublepage
	\phantomsection
	\Oldlistoftables\clearpage
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip = \baselineskipVar
	\savepagenumber
%% با این دستور نحوه شماره‌گذاری به حالت اولیه یعنی (arabic) باز می‌گردد. 
	\pagenumbering{arabic}
}%

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%% دستورات لازم برای واژه‌نامه‌ها، فهرست اختصارات و فهرست نمادها در  فایل (Gloss) آورده شده است.
\input{Style/Gloss}

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%============================ دستور برای قرار دادن فهرست اختصارات 
\newcommand{\printabbreviation}{
%% این دستور مشخص می‌کند که نحوه شماره‌گذاری این قسمت به صورت یاد شده باشد. 
	\pagenumbering{alph}
	\restorepagenumber
	\baselineskip=.75cm
	\glossarystyle{mylistAbbr}
	\cleardoublepage
	\phantomsection
%% با این دستور عنوان فهرست اختصارات به فهرست مطالب اضافه می‌شود. 
	\addcontentsline{toc}{chapter}{فهرست اختصارات}
	\Oldprintglossary[type=abrr]	
	\clearpage
	\baselineskip = \baselineskipVar
	\savepagenumber
%% با این دستور نحوه شماره‌گذاری به حالت اولیه یعنی (arabic) باز می‌گردد. 
	\pagenumbering{arabic}
}%

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

\newcommand{\printnotation}{
	\pagenumbering{harfi}
	\restorepagenumber
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip = \listlineskipVar
	\cleardoublepage
	\phantomsection
%% با این دستور عنوان فهرست نمادها به فهرست مطالب اضافه می‌شود. 
	\addcontentsline{toc}{chapter}{فهرست نمادها}
	\glossarystyle{mylistNotation}
	\Oldprintglossary[type=symbols]
	\clearpage
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip = \baselineskipVar
	\savepagenumber
%% با این دستور نحوه شماره‌گذاری به حالت اولیه یعنی (arabic) باز می‌گردد. 
	\pagenumbering{arabic}
}%

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

\let\Oldbibliography\bibliography
\RenewDocumentCommand{\bibliography}{g g}{
	\let\appendix\relax
	%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip=.5cm
%% با این دستور عنوان این قسمت به (مراجع) تغییر پیدا می‌کند. 
	\renewcommand{\bibname}{مراجع}
	\clearpage
	\phantomsection
	\IfValueTF{#2}{
			\bibliographystyle{#2}
			\Oldbibliography{#1}
	}{%%
			\bibliographystyle{ieeetr-fa}
			\Oldbibliography{#1}
	}%%
}%

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

%%% در این جا محیط هر دو واژه نامه را باز تعریف کرده ایم، تا اولا مشکل قرار دادن صفحه اضافی را حل کنیم، ثانیا عنوان واژه نامه ها را با دستور addcontentlist وارد فهرست مطالب کرده ایم.

\renewcommand{\printglossary}{
	\let\appendix\relax
%% تنظیم کننده فاصله بین خطوط در این قسمت
	\baselineskip=.75cm
	\clearpage
	\phantomsection
%% این دستور موجب این می‌شود که واژه‌نامه‌ها در  حالت دو ستونی نوشته شود. 
	\twocolumn{}
%% با این دستور عنوان واژه‌نامه به فهرست مطالب اضافه می‌شود. 
	\addcontentsline{toc}{chapter}{واژه نامه انگلیسی به فارسی}
	\glossarystyle{mylistEn}
	\Oldprintglossary[type=english]
	
	\clearpage
	\phantomsection
%% با این دستور عنوان واژه‌نامه به فهرست مطالب اضافه می‌شود. 
	\addcontentsline{toc}{chapter}{واژه نامه فارسی به انگلیسی}
	\glossarystyle{mylistFa}
	\Oldprintglossary[type=persian]
	\onecolumn{}
	\baselineskip = \baselineskipVar
}%

%%% 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 

% دستوری برای رنگ‌آمیزی محیط  Item در dinglist
\newcommand{\itemcolor}[1]{\renewcommand{\makelabel}[1]{\color{#1}\hfil ##1}}





