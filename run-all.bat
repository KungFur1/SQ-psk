REM Starting all processes:
:: cd /D "%~dp0" changes to the directory where this file is located
REM 1. Starting all docker containers
cd /D "%~dp0"
start "Docker Compose" cmd /K docker compose up -d
REM 2. Starting RecipesService
cd /D "%~dp0"
cd ./Backend/RecipesService
start "Recipes Service" cmd /K dotnet watch