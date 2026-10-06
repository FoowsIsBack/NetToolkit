@echo off
title FoowsNet
color a

:menu
cls
echo ============================
echo.    
echo    [1] START THE GAME
echo    [0] EXIT
echo.
echo ============================
set /p choice=Choice: 

if "%choice%" == "1" goto game
if "%choice%" == "0" goto backer


:backer
cls
echo ============================
echo.    
echo        Thank you bro...
echo.
echo.
echo ============================
exit

:game
cls
echo ============================
echo.    
echo      -- FoowsNet -- 
echo    Troubleshooting Tools
echo.
echo ============================
echo.
echo    [1] Ping website or IP Address
echo    [2] Renew IP Address
echo    [3] View IP Address
echo    [4] View Detailed IP Address
echo    [5] Flush DNS Cache
echo    [0] Exit
echo.
echo ============================
set /p choice=Choice: 

if "%choice%" == "1" goto pingIp
if "%choice%" == "2" goto renewIP
if "%choice%" == "3" goto viewIp
if "%choice%" == "4" goto viewDetailedIp
if "%choice%" == "5" goto flushDns
if "%choice%" == "0" goto backer

:viewIp
cls
echo ============================
echo.    
echo      -- FoowsNet -- 
echo    Troubleshooting Tools
echo.
echo ============================
echo.
echo        -- RESULT --
echo.
ipconfig
pause
cls
goto game

:viewDetailedIp
cls
echo ============================
echo.    
echo      -- FoowsNet -- 
echo    Troubleshooting Tools
echo.
echo ============================
echo.
echo        -- RESULT --
echo.
ipconfig /all
pause
cls
goto game

:pingIp
cls
echo ============================
echo.    
echo      -- FoowsNet -- 
echo    Troubleshooting Tools
echo.
echo ============================
echo.
set /p choice=Target: 
echo.
echo        -- RESULT --
echo.
ping  "%choice%"
echo.
pause
cls
goto game

:flushDns
cls
echo ============================
echo.    
echo      -- FoowsNet -- 
echo    Troubleshooting Tools
echo.
echo ============================
echo.
echo        -- RESULT --
echo.
ipconfig /flushdns
echo.
pause
cls
goto game

:renewIP
cls
echo ============================
echo.    
echo      -- FoowsNet -- 
echo    Troubleshooting Tools
echo.
echo ============================
echo.
echo        -- RESULT --
echo.
ipconfig /renew
echo.
pause
cls
goto game