@echo off
title xTranslator API Config Editor
echo ==============================================
echo  xTranslator API Config Editor Starting...
echo ==============================================
echo.

:: Port 3000 を使用しているプロセス（PID）があれば自動的に終了する
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :3000 ^| findstr LISTENING') do (
    echo ポート 3000 番が既に使用されています (PID: %%a)。プロセスを自動終了します...
    taskkill /F /PID %%a >nul 2>&1
)

node "%~dp0tools\ApiTranslatorEditor\server.js"
echo.
echo Server stopped.
pause
