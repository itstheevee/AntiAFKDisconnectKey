@echo off
:: Launch the main program and don't continue until it completes (or is killed)
2>nul (
  echo N|start /wait "" cmd /c main2.bat
)

:: Cleanup up begins here
rename disabled.mp3 notificationsound.mp3
start disable.bat
start refreshtimer.lnk