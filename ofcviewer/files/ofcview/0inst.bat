@echo off

if not "%ProgramFiles(x86)%"=="" goto x64

:x86
:x64

echo Microsoft Office Viewer���C���X�g�[�����Ă��܂��B

for /F "USEBACKQ TOKENS=1-6 DELIMS=," %%A IN (ofcview.inf) DO (
  echo %%B ���C���X�g�[�����Ă��܂��B�i%%A�j
  %%C.exe %%E
)

goto end

pause

:end
