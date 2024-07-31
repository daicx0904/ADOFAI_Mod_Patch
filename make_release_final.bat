SETLOCAL ENABLEDELAYEDEXPANSION
set /p version=<VERSION.txt
mkdir tmp
cd tmp
mkdir MyAdofaiMod
copy ..\Info.json MyAdofaiMod
copy ..\MyAdofaiMod\bin\Release\MyAdofaiMod.dll MyAdofaiMod

cd MyAdofaiMod
for /f "delims=" %%a in (Info.json) do (
    SET s=%%a
    SET s=!s:$VERSION=%version%!
    echo !s!
)>>"InfoChanged.json"
del Info.json
rename InfoChanged.json Info.json
cd ..

tar -a -c -f MyAdofaiMod-%version%.zip MyAdofaiMod
move MyAdofaiMod-%version%.zip ..
cd ..
rmdir /s /q tmp
pause
