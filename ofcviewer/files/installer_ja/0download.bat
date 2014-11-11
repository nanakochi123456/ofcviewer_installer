@echo off

if "%1" == "" goto all

:dl
..\wget\fetch.bat %1 %2 %3 %4 %6
goto end

:all

if not "%ProgramFiles(x86)%"=="" goto x64


:x86
:x64

for /F "USEBACKQ TOKENS=1-6 DELIMS=," %%A IN (ofcview.inf) DO (
  call %0 %%A "%%B" %%C.exe %%D "%%E" %%F
)
:end
