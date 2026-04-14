# BİT 
[GİRİŞ]
 BIT, terminal üzerinden hızlı ve detaylı IP sorgulama yapar.
 Termux ve Linux sistemlerde sorunsuz çalışacak şekilde kodlanmıştır.

 [ÖZELLİKLER]
 - Hızlı API entegrasyonu (ip-api.com)
 - Renkli terminal arayüzü
- Sistem yoluna (PATH) otomatik kurulum desteği

[BAĞIMLILIKLAR]
 Projenin çalışması için 'curl' ve 'jq' paketleri gereklidir.
Kurmak için:
Termux: pkg install curl jq -y
Linux: sudo apt install curl jq -y

[KURULUM]
 1. Dosyaya yetki ver: chmod +x bit.sh
2. Çalıştır: ./bit.sh
 3. Kurulum seçeneğini onayladıktan sonra sadece 'bit' yazarak kullan.

[NOTLAR]
 - Kendi IP'ni sorgulamak için girdi kısmını boş bırakıp Enter'a bas.
 - Tool tamamen açık kaynaklıdır ve H3X tarafından hazırlanmıştır.

