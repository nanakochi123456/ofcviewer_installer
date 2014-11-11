@echo off

if not "%ProgramFiles(x86)%"=="" goto x64

:x86
:x64

echo Microsoft Office Viewerをインストールしています。

for /F "USEBACKQ TOKENS=1-6 DELIMS=," %%A IN (ofcview.inf) DO (
  echo %%B をインストールしています。（%%A）
  %%C.exe %%E
)

goto end

pause

:end
