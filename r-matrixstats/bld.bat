if "%r_impl%" == "mro-base" goto copy_binary
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
exit 0
:copy_binary
mkdir %PREFIX%\lib\R\library
robocopy /E . "%PREFIX%\lib\R\library\matrixStats"
IF %ERRORLEVEL% NEQ 1 exit 1
exit 0