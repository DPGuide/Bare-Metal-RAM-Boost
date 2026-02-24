@echo off
:: Fragt Admin-Rechte ab, falls nicht vorhanden / Checks for administrator rights if not already present
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Admin-Rechte bestatigt / Admin rights confirmed...
) else (
    echo Bitte mit Rechtsklick "Als Administrator ausfuhren / Please right-click and select "Run as administrator"."!
    pause
    exit
)

echo Leere Benutzer-Temp / Empty user temp...
del /s /f /q %temp%\*.* >nul 2>&1

echo Leere System-Temp / Empty system temp...
del /s /f /q C:\Windows\Temp\*.* >nul 2>&1

echo Leere Papierkorb / Empty wastebasket...
rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1

echo.
echo --- Alles erledigt! Dein PC ist ein Stück sauberer. / All done! Your PC is a bit cleaner. ---
pause