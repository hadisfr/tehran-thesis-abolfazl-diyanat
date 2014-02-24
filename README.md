پاسخ: ابوالفضل دیانت
## [الگوی مناسب برای دانشگاه تهران](http://www.parsilatex.com/forum/SMF/index.php?topic=6023.msg30845#msg30845)

با سلام

نه برخی دوستان قرار بود با همین xepersian بنویسند. در گروه کامپیوتر دانشگاه تهران که خیلی‌ها از xepersian استفاده می کنند. اتفاقا امسال برای درس سمینار کامپیوتر حدود یک ماه، حدود سه یا چهار جلسه xepersian‌ و latex تدریس شد. بهتر است این پیشنهاد را به اساتید بدهید که کار با latex و xepersian‌ را به درس سمینار اضافه کنند.  
در هر صورت استایل تز دانشگاه تهران را می‌توانید از لینک زیر دریافت کنید.  
    <http://parsilatex.com/users/diyanat/thesis.zip>

### قابلیت‌ها
1. در استایل دانشگاه تهران عنوان فصل باید از وسط صفحه شروع شود. فونت‌ها و حاشیه‌ها مقادیر خاص خود را دارند و صفحه شروع باید دو لوگو داشته باشد.  
2. این استایل به گونه ای است که واژه‌نامه‌ها و فهرست اختصارات را می‌توانید تعریف کنید، و به صورت خودکار در اولین مکان پاورقی زده می‌شود و به صورت مرتب شده به واژه نامه و فهرست اختصارات اضافه می‌شود.  
3. محیط‌های ریاضی آن تقریبا کامل است. علاوه بر این یکسری محیط جدید نیز تعریف شده است.  
و ...

### نکات
1. حتما Texlive 2013 نصب کنید. آن را حتما بروز کنید.  
2. فونت‌های زیر را نصب کنید.  

```tex
\settextfont[Scale=1.3]{B Nazanin}
\setlatintextfont[Scale=1]{Times New Roman}

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
```
با تشکر
