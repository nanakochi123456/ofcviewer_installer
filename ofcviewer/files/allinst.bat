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
echo システムの復元ポイントの生成中 (インストール前)
makesystemrestorepoint.exe /silent ofcview_before

makesystemrestorepoint.exe /silent /begin ofcview_installed
set OFCSEQ=%ERRORLEVEL%
cd ofcview
call 0install.bat
cd ..

echo システムの復元ポイントの生成中 (インストール後)
makesystemrestorepoint.exe /silent /end %OFCSEQ%

makesystemrestorepoint.exe /silent /begin ofc_fmtconv_installed
set FMTSEQ=%ERRORLEVEL%
cd fmtconv
call 0install.bat
cd ..

echo システムの復元ポイントの生成中 (互換機能パックインストール後)
makesystemrestorepoint.exe /silent /end %FMTSEQ%
