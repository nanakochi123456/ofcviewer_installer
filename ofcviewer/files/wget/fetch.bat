@echo off
setlocal ENABLEDELAYEDEXPANSION
set TEST1=%2
set TEST2=!TEST1:"=!

if exist %3 (
  if not "%~z3"=="%5" (
    del %3 >nul 2>nul
  )
)
if not exist %3 (
  echo %TEST2% ���_�E�����[�h���Ă��܂��B�i%1�j
  ..\wget\curl --output %3 --progress-bar %4
)
