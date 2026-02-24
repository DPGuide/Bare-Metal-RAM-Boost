@echo off
:: Fragt Admin-Rechte ab, falls nicht vorhanden
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Admin-Rechte bestatigt...
) else (
    echo Bitte mit Rechtsklick "Als Administrator ausfuhren"!
    pause
    exit
)

echo Leere Benutzer-Temp...
del /s /f /q %temp%\*.* >nul 2>&1

echo Leere System-Temp...
del /s /f /q C:\Windows\Temp\*.* >nul 2>&1

echo Leere Papierkorb...
rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1

echo.
echo --- Alles erledigt! Dein PC ist ein Stück sauberer. ---
pause