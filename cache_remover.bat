@echo off
cls
IF NOT EXIST "..\..\hl2.exe" (goto :WAIT)
goto :DOIT

:WAIT
color c
echo Error Code : E01 (not in custom folder)
goto :ASK

:ASK
set /P c=continue? [yes or no]
if /I %c% EQU yes goto :DOIT
if /I %c% EQU no goto :EXIT2

:DOIT
echo Removing cache files.
del /F /S *.cache
goto EXIT

:EXIT2
exit

:EXIT
color a
echo done!
echo cache remover by Panic Civilian
exit