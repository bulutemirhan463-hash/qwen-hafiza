@echo off
:: Qwen Code - Yönetici Modu ve Otomatik Başlatma
:: Bu dosya Qwen Code'u yönetici olarak başlatır ve tüm ayarları yükler

echo ========================================
echo  Qwen Code - Akilli Baslatma
echo ========================================
echo.

:: Yonetici yetkisi kontrolu
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Yonetici yetkileri mevcut
) else (
    echo [UYARI] Yonetici yetkisi isteniyor...
    powershell -Command "Start-Process cmd -ArgumentList '/c cd /d C:\Users\hamzahanbulut\.qwen && start-qwen-admin.bat' -Verb RunAs"
    exit /b
)

:: Proje dizinine git
cd /d C:\Users\hamzahanbulut\Desktop\whatsapp-remote
echo [OK] Proje dizini: %CD%

:: Hafiza dosyalarini kontrol et
if exist C:\Users\hamzahanbulut\.qwen\PROJECT_MEMORY.md (
    echo [OK] Proje hafiza dosyasi bulundu
) else (
    echo [HATA] Proje hafiza dosyasi eksik!
)

if exist C:\Users\hamzahanbulut\.qwen\QWEN.md (
    echo [OK] Global hafiza dosyasi bulundu
) else (
    echo [HATA] Global hafiza dosyasi eksik!
)

:: Skills kontrolu
if exist C:\Users\hamzahanbulut\.qwen\skills (
    echo [OK] Skills klasoru mevcut
) else (
    echo [HATA] Skills klasoru eksik!
)

echo.
echo ========================================
echo  Qwen Code Baslatiliyor...
echo ========================================
echo.

:: Qwen Code'u baslat
qwen

pause
