@ECHO OFF

:MOVING_STATE
set CUR_PATH=%~dp0

for /f %%f in ('dir "%CUR_PATH%\*" /AD /B') do (
  echo %%f

  echo %CUR_PATH%%%f\assets\buildplate\
  copy %CUR_PATH%%%f\assets\buildplate\*.* %CUR_PATH%%%f\
  echo %CUR_PATH%%%f\assets\cover\
  copy %CUR_PATH%%%f\assets\cover\*.* %CUR_PATH%%%f\ 
  rmdir /Q /S %CUR_PATH%%%f\assets
)
PAUSE