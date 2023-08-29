@echo off
setlocal enabledelayedexpansion

:: Number of instances you want to run
set numberOfInstances=2

:: Loop to launch instances
for /l %%i in (1, 1, %numberOfInstances%) do (
    set userDataDir=C:\TeamsProfile%%i
    start "" "YOUR-MICROSOFT-TEAMS-PATH" --user-data-dir=!userDataDir!
)
pause
endlocal
