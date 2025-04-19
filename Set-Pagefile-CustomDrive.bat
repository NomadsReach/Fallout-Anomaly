@echo off
setlocal EnableDelayedExpansion

:: Check for admin rights
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo This script must be run as administrator.
    pause
    exit /b
)

:: Get total physical memory in MB using WMIC
for /f "tokens=2 delims==" %%A in ('wmic computersystem get totalphysicalmemory /value ^| find "="') do set "rambytes=%%A"
set /a rammb=%rambytes:~0,-6%
set /a pagefilemb=%rammb% * 3 / 2

echo Detected RAM: %rammb% MB
echo Setting Pagefile size to: %pagefilemb% MB (1.5x RAM)

:: List available drives
echo.
echo Available drives with free space:
wmic logicaldisk get name,freespace,drivetype | findstr /R "^ [A-Z]:"

:: Prompt user for drive letter
set /p drive=Enter the drive letter to set the pagefile on (e.g., C):

:: Clean up input
set "drive=%drive::=%"
set "drive=%drive: =%"
set "drive=%drive:~0,1%"
set "drive=%drive%:"

:: Set registry key
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "%drive%\pagefile.sys %pagefilemb% %pagefilemb%" /f

:: Confirm success
echo.
echo Pagefile has been set to %pagefilemb% MB on drive %drive%
echo.

:: Prompt to reboot
choice /m "Restart now to apply the changes?"
if errorlevel 2 (
    echo Restart canceled. Please reboot manually later.
    pause
    exit /b
) else (
    shutdown /r /t 5
)
