@Echo Off

:DISABLED
cls
start refreshtimer.lnk
start disable.bat
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho 0a "====================="
echo.
call :colorEcho a0 "{AntiAFKDisconnectKey}"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho e0 "[You will need to press F5 to tab out on Roblox to prevent you getting disconnected from afking]" 
echo.
call :colorEcho e0 "[Will notify you to press it if you haven't pressed it for about 16 minutes and will tell you when it's about for you to get disconnected]"
echo.
call :colorEcho e0 "[Just use another macro if you want to automatically afk grind of course]"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho c4 "CURRENTLY DISABLED"
echo.
call :colorEcho a0 "{E} to enable AntiAFKDisconnectKey"
echo.
call :colorEcho 0a "====================="
echo.
choice /c e /n
if %errorlevel%==1 goto ENABLED


:ENABLED
cls
start main.ahk
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho 0a "====================="
echo.
call :colorEcho a0 "{AntiAFKDisconnectKey}"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho e0 "[You will need to press F5 to tab out on Roblox to prevent you getting disconnected from afking]" 
echo.
call :colorEcho e0 "[Will notify you to press it if you haven't pressed it for about 16 minutes and will tell you when it's about for you to get disconnected]"
echo.
call :colorEcho e0 "[Just use another macro if you want to automatically afk grind of course]"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho d0 "RUNNING"
echo.
call :colorEcho d0 "NOTIFICATION ALERT SOUND ON"
echo.
call :colorEcho a0 "{E} to disable AntiAFKDisconnectKey"
echo.
call :colorEcho a0 "{N} to disable notification alert sound"
echo.
call :colorEcho 0a "====================="
echo.
choice /c en /n
if %errorlevel%==1 goto DISABLED
if %errorlevel%==2 goto ENABLED2

:ENABLED2
cls
rename notificationsound.mp3 disabled.mp3
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho 0a "====================="
echo.
call :colorEcho a0 "{AntiAFKDisconnectKey}"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho e0 "[You will need to press F5 to tab out on Roblox to prevent you getting disconnected from afking]" 
echo.
call :colorEcho e0 "[Will notify you to press it if you haven't pressed it for about 16 minutes and will tell you when it's about for you to get disconnected]"
echo.
call :colorEcho e0 "[Just use another macro if you want to automatically afk grind of course]"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho d0 "RUNNING"
echo.
call :colorEcho c0 "NOTIFICATION ALERT SOUND OFF"
echo.
call :colorEcho a0 "{E} to disable AntiAFKDisconnectKey"
echo.
call :colorEcho a0 "{N} to enable notification alert sound"
echo.
call :colorEcho 0a "====================="
echo.
choice /c en /n
if %errorlevel%==1 goto DISABLED
if %errorlevel%==2 goto ENABLED3 

:ENABLED3
cls
rename disabled.mp3 notificationsound.mp3
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho 0a "====================="
echo.
call :colorEcho a0 "{AntiAFKDisconnectKey}"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho e0 "[You will need to press F5 to tab out on Roblox to prevent you getting disconnected from afking]" 
echo.
call :colorEcho e0 "[Will notify you to press it if you haven't pressed it for about 16 minutes and will tell you when it's about for you to get disconnected]"
echo.
call :colorEcho e0 "[Just use another macro if you want to automatically afk grind of course]"
echo.
call :colorEcho 0a "====================="
echo.
call :colorEcho d0 "RUNNING"
echo.
call :colorEcho d0 "NOTIFICATION ALERT SOUND ON"
echo.
call :colorEcho a0 "{E} to disable AntiAFKDisconnectKey"
echo.
call :colorEcho a0 "{N} to disable notification alert sound"
echo.
call :colorEcho 0a "====================="
echo.
choice /c en /n
if %errorlevel%==1 goto DISABLED
if %errorlevel%==2 goto ENABLED2






:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
