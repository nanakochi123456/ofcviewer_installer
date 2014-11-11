@echo off

if not "%ProgramFiles(x86)%"=="" goto x64

:x86
:x64

echo Microsoft Office 2007 互換機能パックをインストールしています。

for /F "USEBACKQ TOKENS=1-6 DELIMS=," %%A IN (fmtconv.inf) DO (
  echo %%B をインストールしています。（%%A）
  %%C.exe %%E
)

goto end

pause

:end
