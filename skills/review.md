# Review Skill - Kod İnceleme

## Ne İşe Yarar?
Değişiklikleri otomatik olarak inceleyip kalite, güvenlik ve performans açısından değerlendirir.

## Kullanım
```
/review
/review <pr-number>
/review <file-path>
/review <pr-number> --comment
```

## İnceleme Kriterleri

### 1. Kod Doğruluğu
- Syntax hataları
- Mantık hataları
- Edge case'ler
- Error handling

### 2. Güvenlik
- Injection açıkları
- XSS vulnerabilities
- Credential exposure
- Input validation

### 3. Performans
- Memory leaks
- Inefficient algorithms
- Unnecessary computations
- Database query optimization

### 4. Kod Kalitesi
- Naming conventions
- Code duplication
- Function complexity
- Documentation

### 5. Best Practices
- Design patterns
- SOLID principles
- DRY principle
- Separation of concerns

## Proje Bağlamında Kullanım

### WhatsApp Bot Dosyaları
```
/review server.js
/review bot-commands.js
```

### Değişiklik Kontrolü
```
/review
```
Son değişiklikleri otomatik inceler.

## Otomatik İnceleme Noktaları

### server.js İçin:
- QR kod handling
- Socket.IO connections
- Error boundaries
- API endpoints
- WhatsApp client initialization

### bot-commands.js İçin:
- Command routing
- Input sanitization
- Error handling
- Response formatting
- Security checks

## Rapor Formatı
Her inceleme şu formatı kullanır:
```
✅ PASSED - No issues found
veya
❌ ISSUES FOUND:
  1. [Severity] Issue description
  2. [Location] File:line
  3. [Fix] Suggested solution
```
