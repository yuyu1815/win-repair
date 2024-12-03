@echo off
chcp 65001 > nul  :: Set UTF-8 encoding
:menu
echo.
echo 1. Download Windows 10
echo 2. Download Windows 11
echo 3. Run System Repair Commands
echo 4. Exit
echo.

set /p choice="Please enter your choice (1/2/3/4): "

if "%choice%"=="1" (
    echo Opening the download page for Windows 10 in Microsoft Edge
    start msedge "https://www.microsoft.com/ja-jp/software-download/windows10"
    exit /b
) else if "%choice%"=="2" (
    echo Opening the download page for Windows 11 in Microsoft Edge
    start msedge "https://www.microsoft.com/ja-jp/software-download/windows11"
    exit /b
) else if "%choice%"=="3" (
    echo Starting system repair process
    net session > nul 2>&1

    echo Closing Explorer
    taskkill /f /im explorer.exe

    echo Running DISM tool
    DISM /Online /Cleanup-Image /RestoreHealth

    echo Running SFC (System File Checker)
    sfc /scannow

    echo Repair process is complete. Check the results.

    echo Restarting Explorer
    start explorer.exe

    echo The repair process is done. Press any key to close this prompt.
    pause > nul
    exit /b
) else if "%choice%"=="4" (
    echo Exiting
    exit /b
) else (
    echo Invalid choice. Please try again.
    goto menu
)
exit /b
