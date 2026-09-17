@echo off
:: ========================================================
:: DUBX Desktop App Launcher for Windows
:: Opens DUBX in standalone native window mode (no address bar)
:: ========================================================
title DUBX Desktop
echo Запуск DUBX Desktop...

:: Check for Microsoft Edge App Mode
where msedge >nul 2>nul
if %errorlevel% equ 0 (
    start msedge --app="https://dubx-app.vercel.app/desktop" --window-size=1280,820
    exit
)

:: Check for Google Chrome App Mode
where chrome >nul 2>nul
if %errorlevel% equ 0 (
    start chrome --app="https://dubx-app.vercel.app/desktop" --window-size=1280,820
    exit
)

:: Default browser fallback
start https://dubx-app.vercel.app/desktop
exit
