@ echo off
echo «Î ‰»Î
set /p o= 
@ echo on
@ echo off
if "%o%"== "1" (goto p1) else (goto p2)


: p1
echo this is p1
goto end

: p2
echo this is p2
goto end

:end