@echo off
echo ========================================================
echo               STARTING SOLEVAULT PLATFORM               
echo ========================================================
echo.

:: 1. Check if MySQL/MariaDB is running on port 3306
netstat -ano | findstr :3306 | findstr LISTENING >nul
if %errorlevel% neq 0 (
    echo [1/3] Starting Database Server on port 3306...
    start "MariaDB Server" /min "C:\Program Files\MariaDB 13.0\bin\mariadbd.exe" --defaults-file="C:\Program Files\MariaDB 13.0\data\my.ini"
    timeout /t 3 /nobreak >nul
) else (
    echo [1/3] Database Server is already running on port 3306.
)

:: 2. Start Backend
echo [2/3] Starting Spring Boot Backend on port 8000...
start "SoleVault Backend (Spring Boot)" cmd /k "cd backend && gradlew.bat bootRun"

:: 3. Start Frontend
echo [3/3] Starting React Frontend on port 3000...
start "SoleVault Frontend (Vite React)" cmd /k "cd frontend && npm.cmd run dev"

echo.
echo ========================================================
echo Services are starting!
echo Frontend: http://localhost:3000
echo Backend:  http://localhost:8000
echo ========================================================
echo Opening browser in 5 seconds...
timeout /t 5 >nul
start http://localhost:3000
