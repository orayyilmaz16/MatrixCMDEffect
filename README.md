# 🟢 MatrixCMD

PowerShell üzerinde çalışan, nostaljik ve akıcı yeşil dijital yağmur (Matrix) efekti.

---

## 🚀 Hızlı Başlangıç (Nasıl Çalıştırılır?)

Bu efekti çalıştırmak için PowerShell kullanmanız yeterlidir.

### 1. Dosyayı İndirin veya Klonlayın
Projeyi bilgisayarınıza indirin veya terminalden klonlayın:
```powershell
git clone https://github.com/KULLANICI_ADINIZ/MatrixCMD.git
cd MatrixCMD
```

### 2. Çalıştırın
PowerShell terminalinde şu komutu yazıp Enter'a basın:

```powershell
.\matrix.ps1
```

> **Not:** Eğer script çalıştırma izniyle ilgili bir hata alırsanız, PowerShell'de tek seferlik izin vermek için şu komutla çalıştırabilirsiniz:
> ```powershell
> powershell -ExecutionPolicy Bypass -File .\matrix.ps1
> ```

---

## ⌨️ Nasıl Kapatılır?

Efekti durdurup çıkmak için:
- Klavyeden **`Ctrl + C`** tuşlarına basabilir ya da terminal penceresini kapatabilirsiniz.

---

## ⚙️ Özelleştirme

`matrix.ps1` dosyasını bir metin düzenleyiciyle açıp kolayca değiştirebilirsiniz:

- **Hızı Ayarlamak:** En alt satırdaki `Start-Sleep -Milliseconds 10` değerini değiştirin. Değeri düşürürseniz (örn. `5`) efekt hızlanır, artırırsanız yavaşlar.
- **Rengi Değiştirmek:** Başlangıçtaki `[Console]::ForegroundColor = "Green"` kısmındaki `"Green"` yerine `"Cyan"`, `"Red"`, `"Yellow"` gibi renkler yazabilirsiniz.

---

## 📜 Lisans
Bu proje açık kaynaklıdır, dilediğiniz gibi kullanabilir ve paylaşabilirsiniz.

