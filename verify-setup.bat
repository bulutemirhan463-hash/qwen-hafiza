@echo off
:: Qwen Code - Sistem Dogrulama
:: Tum ayarlarin ve baglantilarin calistigini test eder

echo.
echo ========================================
echo  QWEN CODE - SISTEM DOGURULAMA
echo ========================================
echo.

set "QwenDir=C:\Users\hamzahanbulut\.qwen"
set "ProjectDir=C:\Users\hamzahanbulut\Desktop\whatsapp-remote"
set "Errors=0"

:: 1. Ayarlar dosyasi kontrolu
echo [1/10] Ayarlar dosyasi kontrol ediliyor...
if exist "%QwenDir%\settings.json" (
    echo   [OK] settings.json bulundu
) else (
    echo   [HATA] settings.json eksik!
    set /a Errors+=1
)

:: 2. Global hafiza kontrolu
echo [2/10] Global hafiza kontrol ediliyor...
if exist "%QwenDir%\QWEN.md" (
    echo   [OK] QWEN.md bulundu
) else (
    echo   [HATA] QWEN.md eksik!
    set /a Errors+=1
)

:: 3. Proje hafiza kontrolu
echo [3/10] Proje hafiza kontrol ediliyor...
if exist "%QwenDir%\PROJECT_MEMORY.md" (
    echo   [OK] PROJECT_MEMORY.md bulundu
) else (
    echo   [HATA] PROJECT_MEMORY.md eksik!
    set /a Errors+=1
)

:: 4. Skills klasoru kontrolu
echo [4/10] Skills klasoru kontrol ediliyor...
if exist "%QwenDir%\skills\" (
    echo   [OK] Skills klasoru mevcut
    dir /b "%QwenDir%\skills\" | find /c /v "" > nul
) else (
    echo   [HATA] Skills klasoru eksik!
    set /a Errors+=1
)

:: 5. Todo klasoru kontrolu
echo [5/10] Todo klasoru kontrol ediliyor...
if exist "%QwenDir%\todos\" (
    echo   [OK] Todos klasoru mevcut
) else (
    echo   [HATA] Todos klasoru eksik!
    set /a Errors+=1
)

:: 6. Proje dizini kontrolu
echo [6/10] Proje dizini kontrol ediliyor...
if exist "%ProjectDir%" (
    echo   [OK] Proje dizini bulundu
) else (
    echo   [HATA] Proje dizini eksik!
    set /a Errors+=1
)

:: 7. Proje dosyalari kontrolu
echo [7/10] Proje dosyalari kontrol ediliyor...
if exist "%ProjectDir%\server.js" (
    echo   [OK] server.js bulundu
) else (
    echo   [HATA] server.js eksik!
    set /a Errors+=1
)

if exist "%ProjectDir%\bot-commands.js" (
    echo   [OK] bot-commands.js bulundu
) else (
    echo   [HATA] bot-commands.js eksik!
    set /a Errors+=1
)

:: 8. Node.js modulleri kontrolu
echo [8/10] Node.js modulleri kontrol ediliyor...
if exist "%ProjectDir%\node_modules\whatsapp-web.js" (
    echo   [OK] whatsapp-web.js yuklu
) else (
    echo   [UYARI] whatsapp-web.js bulunamadi
)

:: 9. Baslangic scripti kontrolu
echo [9/10] Baslangic scripti kontrol ediliyor...
if exist "%QwenDir%\start-qwen-admin.bat" (
    echo   [OK] start-qwen-admin.bat bulundu
) else (
    echo   [UYARI] start-qwen-admin.bat olusturulmamis
)

:: 10. Memory sistemi testi
echo [10/10] Memory sistemi testi...
qwen --version >nul 2>&1
if %errorlevel% equ 0 (
    echo   [OK] Qwen Code erisilebilir
) else (
    echo   [HATA] Qwen Code bulunamadi!
    set /a Errors+=1
)

echo.
echo ========================================
if %Errors% equ 0 (
    echo  SONUC: TAMAMEN HAZIR! (0 hata)
    echo.
    echo  Tum sistemler calisiyor.
    echo  Qwen Code baslatilmaya hazir.
) else (
    echo  SONUC: %Errors% HATA BULUNDU
    echo.
    echo  Lutfen hatalari duzeltin.
)
echo ========================================
echo.

pause
