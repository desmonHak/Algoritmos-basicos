@echo off
set "key=5"
set "plaintext=%~1"
setlocal ENABLEDELAYEDEXPANSION

rem Es necesario hacer llamadas anidadas al espacio de nombres sintaxis variable de entorno
for /f %%x in ("!plaintext!") do (
  set ciphertext=
  for /l %%i in (1,1,LEN("%%x")) do (
    set /a n=~n%%i+!key!
    if !n! GTR 95 (
      set /a n-=95
    )
    
    call set /a var="%%x:~%%i,1"
    set ciphertext=!ciphertext!!chr[!n!]!
  )
)
echo %ciphertext%
endlocal
