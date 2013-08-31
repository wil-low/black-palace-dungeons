@echo off
java -jar hephaestus.jar %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto error
goto end

:error
echo.
echo An error has occurred!
echo If the message says "'java' is not recognized", you do not have Java
echo installed - you can download it from http://java.sun.com/j2se/1.3/jre/
echo.
echo Otherwise, please report this problem to kamikaze@kuoi.asui.uidaho.edu
pause

:end
