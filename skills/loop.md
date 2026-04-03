# Loop Skill - Zamanlanmış Görevler

## Ne İşe Yarar?
Belirli aralıklarla otomatik olarak görevleri çalıştırmanı sağlar.

## Kullanım
```
/loop 5m check the build
/loop check the deploy every 20m
/loop run tests every 5 minutes
/loop list
/loop clear
```

## Aralıklar
- `5m` - Her 5 dakikada
- `1h` - Her saat
- `2h` - Her 2 saatte
- `1d` - Her gün

## Örnek Kullanımlar

### Build Kontrolü
```
/loop 10m check if build is passing
```

### Deploy İzleme
```
/loop check deployment status every 15m
```

### Test Koştırma
```
/loop 30m run tests and report failures
```

## Önemli Notlar
- Tekrarlayan görevler 3 gün sonra otomatik sona erer
- `/loop list` - Tüm görevleri listeler
- `/loop clear` - Tüm görevleri iptal eder
- Görev oluşturulduğunda hemen bir kez çalışır

## Proje Bağlamında Kullanım
WhatsApp bot projesi için:
- `/loop 5m check if WhatsApp client is connected`
- `/loop 1h verify bot commands are working`
- `/loop 30m check server health`
