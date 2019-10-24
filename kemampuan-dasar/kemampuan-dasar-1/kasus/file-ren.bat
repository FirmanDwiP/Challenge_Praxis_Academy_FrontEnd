dir *java*
pause


@ECHO OFF

:choice
set /P c=Nama File Java ada, mau ganti nama?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere

ren "tumbal.java" "nama-file.java"
echo "Nama Dirubah"
pause
exit

:somewhere_else

echo "Tidak Diubah"
pause
exit