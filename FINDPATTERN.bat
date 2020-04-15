



::chcp 65001
chcp 1252
echo on
echo "école"
for /F %%i in (pattern.txt) do (
echo Files containing %%i
::findstr /M /C:%%i /S *.txt
findstr /R /M /C:%%i /S *.txt
)
echo "=====école===="
pause

::FINDSTR /g:pattern.txt  /R /S *.txt


for /F %%i in (pattern.ptx) do (

echo =======Files containing===== %%i

::grep  "%%i"  -r --include="*.txt" CORRECTION
:: AFFICAHGE LIGNE UNIQUEMENT -l WORD -iw
grep  "%%i" -iw -r --include="*.txt" CORRECTION

)
pause
echo "=====00000école===="
grep -f  pattern.ptx -r --include="*.txt" CORRECTION
pause