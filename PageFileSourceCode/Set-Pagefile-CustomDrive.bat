@echo off
setlocal EnableDelayedExpansion

:: Check for admin rights
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo This script must be run as administrator.
    pause
    exit /b
)

echo ============================================
echo   Fallout Anomaly Pagefile Setup Utility
echo ============================================

:: Use PowerShell to fetch RAM in MB safely (works over 32-bit limits)
for /f %%A in ('powershell -command "(Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1MB"') do set rammb=%%A
set /a pagefilemb=rammb * 3 / 2

echo Detected RAM: %rammb% MB
echo Recommended Pagefile Size: %pagefilemb% MB (1.5x RAM)

:: List available drives
echo.
echo Available Drives:
wmic logicaldisk where "DriveType=3" get DeviceID,VolumeName,FreeSpace | more
echo.

:: Prompt for drive letter
set /p drive=Enter the drive letter to place the pagefile on (e.g., E):

:: Normalize input
set "drive=%drive::=%"
set "drive=%drive: =%"
set "drive=%drive:~0,1%"
set "drive=%drive%:"

:: Remove broken entry
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /f >nul 2>&1

:: Write new entry
set "pagefile=%drive%\pagefile.sys %pagefilemb% %pagefilemb%"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "%pagefile%" /f

:: Disable auto-management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemManagedSize" /t REG_DWORD /d 0 /f >nul

:: Confirm
echo.
echo Pagefile set to:
echo   Path: %drive%\pagefile.sys
echo   Size: %pagefilemb% MB
echo.

:: Prompt for reboot
choice /m "Restart now?"
if errorlevel 2 (
    echo Restart canceled. Please reboot manually later.
    pause
    exit /b
) else (
    shutdown /r /t 5
)
