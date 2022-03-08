echo off
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

rem set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%
set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%
rem mkdir %SUBFILENAME%
rem echo "Welcome Here!" > access_%SUBFILENAME%.log
rem cd C:\Users\troy.pells\Documents\GitHub\xbed
rem curl -Lk https://gitlab.com/Xenbase/xenbase-experimental-data-ontology/-/raw/master/xenbase_experimental_data.obo -o C:\Users\troy.pells\Documents\GitHub\xbed\xbed_update_%SUBFILENAME%.obo
rem curl -Lk https://gitlab.com/Xenbase/xenbase-experimental-data-ontology/-/raw/master/xenbase_experimental_data.owl -o C:\Users\troy.pells\Documents\GitHub\xbed\xbed_update_%SUBFILENAME%.owl

cd C:\Users\troy.pells\Documents\GitHub\xsmo
curl -Lk https://gitlab.com/Xenbase/Small-molecules/-/raw/master/xsmo.obo -o C:\Users\troy.pells\Documents\GitHub\xsmo\xsmo_update_%SUBFILENAME%.obo
curl -Lk https://gitlab.com/Xenbase/Small-molecules/-/raw/master/xsmo.owl -o C:\Users\troy.pells\Documents\GitHub\xsmo\xsmo_update_%SUBFILENAME%.owl

