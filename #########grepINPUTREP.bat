::OEM850


::# convert from ISO-8859-1 to the environmental locale before grepping
::grep -c dizai1ne *.txt



::chcp 1252
::chcp 65001 > nul


 set /p name=Entrez une chaine de recherche:



set name=%name:‚=Ç¸%
set name=%name:Š=Çù%
set name=%name:‡=Çõ%
set name=%name:—=Çû%
set name=%name:ˆ=Ç¦%


::echo "%name%"
echo %name%
echo off

::grep -q dizaine *.txt
::if %errorlevel% equ 0 echo sample
::if grep -q dizaine *.txt (echo "3TROUVE")

::Echo "Hello World" | findstr /C:"World">nul && (Echo.TRUE) || (Echo.FALSE)
::echo "Hello World" | findstr /C:"World">nul && ( echo.TRUE) || ( echo.FALSE)

::echo "Hello World" | findstr /c:"Worl1d">nul && ( echo "3TROUVE" ) || ( echo  "NON3TROUVE" )
::find /c "semaine" semaine.txt  && ( echo foundGRO  pause) || ( echo not foundGRO )

::for %%1 in ("*.txt") do  find /c "semaine"   "%%1" && ( echo %%1) || ( echo not foundGRO )

::for %%1 in ("*.txt") do  find /c "semaine" >nul  "%%1" && ( echo %%1) 

::for %%1 in ("*.txt") do  find /c "%name%" "%%1" >nul  && ( echo %%1) || ( echo not foundGRO )

::for %%1 in ("*.txt") do  find /c "%name%" "%%1" >nul  && ( echo %%~n1) 

::for %%1 in ("*.txt") do  grep "%name%" "%%1" >nul  && ( echo %%~n1) 
for /R %%1 in ("*.txt") do grep "%name%" "%%1" >nul  && ( echo %%~n1) 
pause

 
 