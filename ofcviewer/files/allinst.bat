@echo off
cls
echo ■■■ Microsoft Office Viewer インストーラ ■■■

if not "%ProgramFiles(x86)%"=="" goto x64

:x86
echo Windows 32bit OSと認識されました。
set copydir=%windir%\system32
goto install

:x64
echo Windows 64bit OSと認識されました。
set copydir=%windir%\syswow64
goto install

:install
cd ofcview
call 0install.bat
cd ..

cd fmtconv
call 0install.bat
cd ..
