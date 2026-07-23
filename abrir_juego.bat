@echo off
set "GAME_FILE=%~dp0index.html"

where chrome >nul 2>nul
if %errorlevel%==0 (
  start "" chrome --app="file:///%GAME_FILE:\=/%"
  exit /b
)

where msedge >nul 2>nul
if %errorlevel%==0 (
  start "" msedge --app="file:///%GAME_FILE:\=/%"
  exit /b
)

start "" "%GAME_FILE%"
