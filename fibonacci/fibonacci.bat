@echo off
setlocal enabledelayedexpansion

echo [ enter a number ]
set /p num=

call :start Fibonacci !num! 0 1 
pause >nul
goto :eof 

:: Recursive subroutine
:: Args: n x y
:start
if "%~1" == "0" (
    set /a "result=%~2"
    echo %result%
) else (
    set /a "tmp=%~3"  
    call :start "%%~1-1" !tmp! "%%~2+%%~3"
)
goto :eof
