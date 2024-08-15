SETLOCAL ENABLEDELAYEDEXPANSION
set /p version=<VERSION.txt
set /p adofaipath=<ADOFAIPath.txt
set /p modname=<MODNAME.txt
mkdir tmp
cd tmp
mkdir %modname%
copy ..\Info.json %modname%
copy ..\%modname%\bin\Release\%modname%.dll %modname%

cd %modname%
for /f "delims=" %%a in (Info.json) do (
    SET s=%%a
    SET s=!s:$VERSION=%version%!
    echo !s!
)>>"InfoChanged.json"
del Info.json
rename InfoChanged.json Info.json
cd ..

tar -a -c -f MyAdofaiMod-%version%.zip MyAdofaiMod

REM mkdir "%adofaipath%\Mods\%modname%"
xcopy "%~dp0tmp\%modname%\" "%adofaipath%\Mods\%modname%\" /S /E /Q /Y
move %modname%-%version%.zip ..
cd ..
rmdir /s /q tmp
pause
