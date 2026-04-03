@echo off
:: Qwen Code - Windows Baslangicina Ekle
:: Bu script Windows baslangicina Qwen Code kisayolu ekler

echo ========================================
echo  Qwen Code - Windows Baslangic Ayari
echo ========================================
echo.

:: Startup klasor yolu
set "StartupDir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Kisayol olustur
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%StartupDir%\Qwen Code.lnk'); $Shortcut.TargetPath = 'C:\Users\hamzahanbulut\.qwen\start-qwen-admin.bat'; $Shortcut.WorkingDirectory = 'C:\Users\hamzahanbulut\Desktop\whatsapp-remote'; $Shortcut.Description = 'Qwen Code - WhatsApp Bot Manager'; $Shortcut.Save(); Write-Host '[OK] Windows baslangicina eklendi'"

echo.
echo ========================================
echo  ISLEM TAMAMLANDI!
echo ========================================
echo.
echo Qwen Code artik Windows baslangicinda otomatik baslatilacak.
echo Bilgisayari yeniden baslattiginizda Qwen Code otomatik acilacak.
echo.

pause
