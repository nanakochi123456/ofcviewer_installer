@echo off
cls
echo ������ Microsoft Office Viewer �C���X�g�[�� ������

if not "%ProgramFiles(x86)%"=="" goto x64

:x86
echo Windows 32bit OS�ƔF������܂����B
set copydir=%windir%\system32
goto install

:x64
echo Windows 64bit OS�ƔF������܂����B
set copydir=%windir%\syswow64
goto install

:install
cd ofcview
call 0install.bat
cd ..

cd fmtconv
call 0install.bat
cd ..
