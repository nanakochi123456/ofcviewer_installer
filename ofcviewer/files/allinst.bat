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
echo �V�X�e���̕����|�C���g�̐����� (�C���X�g�[���O)
makesystemrestorepoint.exe /silent ofcview_before

makesystemrestorepoint.exe /silent /begin ofcview_installed
set OFCSEQ=%ERRORLEVEL%
cd ofcview
call 0install.bat
cd ..

echo �V�X�e���̕����|�C���g�̐����� (�C���X�g�[����)
makesystemrestorepoint.exe /silent /end %OFCSEQ%

makesystemrestorepoint.exe /silent /begin ofc_fmtconv_installed
set FMTSEQ=%ERRORLEVEL%
cd fmtconv
call 0install.bat
cd ..

echo �V�X�e���̕����|�C���g�̐����� (�݊��@�\�p�b�N�C���X�g�[����)
makesystemrestorepoint.exe /silent /end %FMTSEQ%
