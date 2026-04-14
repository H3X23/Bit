#!/bin/bash


#RENKLER
# Temel Renkler
Reset='\033[0m'       # Her şeyi normale döndürür
Red='\033[0;31m'      # Kırmızı
Green='\033[0;32m'    # Yeşil
Yellow='\033[0;33m'   # Sarı
Blue='\033[0;34m'     # Mavi
Purple='\033[0;35m'   # Mor
Cyan='\033[0;36m'     # Turkuaz
White='\033[0;37m'    # Beyaz

# Kalın (Bold) Renkler - Daha canlı durur
BRed='\033[1;31m'
BGreen='\033[1;32m'
BYellow='\033[1;33m'
BBlue='\033[1;34m'

# Kurulum Fonksiyonu
install_tool() {
    # Termux mu yoksa normal Linux mu kontrol et
    if [ -d "$PREFIX/bin" ]; then
        BIN_DIR="$PREFIX/bin"
    else
        BIN_DIR="/usr/local/bin"
    fi
    
    
    sudo cp "$0" "$BIN_DIR/bit" 2>/dev/null || cp "$0" "$BIN_DIR/bit"
    
    # Çalıştırma yetkisi ver
    chmod +x "$BIN_DIR/bit"
    
    echo -e "${Green}[+] Kurulum tamam! Artık her yerden 'bit' yazarak çalıştırabilirsin.${Reset}"
}
install_tool

#AÇILIŞ
echo -e """
       ${BBlue}  
       ________________________________________________________ ${Reset}
       
      ${BRed}            H3X BİLGİ TOPLAYICI    ${Reset}
      ${BBlue}
      ________________________________________________________  ${Reset}
"""
#İP İSTE

echo -e "${BYellow} hedef ip adresini girin :"
read  ip
echo -e "${Reset}"

#ANA KISIM
data=$(curl -s "http://ip-api.com/json/$ip?fields=16982271")
status=$(echo $data | jq -r '.status')
#SONUÇ
echo -e "${Green}--- SONUÇLAR ---${Reset}"
echo -e "${Cyan}IP Adresi:   ${White}$(echo $data | jq -r '.query')${Reset}"
echo -e "${Cyan}Ülke:        ${White}$(echo $data | jq -r '.country') ($(echo $data | jq -r '.countryCode'))${Reset}"
echo -e "${Cyan}Şehir/Bölge: ${White}$(echo $data | jq -r '.city') / $(echo $data | jq -r '.regionName')${Reset}"
echo -e "${Cyan}ISP:         ${White}$(echo $data | jq -r '.isp')${Reset}"
echo -e "${Cyan}Organizasyon:${White}$(echo $data | jq -r '.org')${Reset}"
echo -e "${Cyan}AS Numarası: ${White}$(echo $data | jq -r '.as')${Reset}"
echo -e "${Cyan}Koordinat:   ${White}$(echo $data | jq -r '.lat'), $(echo $data | jq -r '.lon')${Reset}"
echo -e "${Cyan}Zaman Dilimi:${White}$(echo $data | jq -r '.timezone')${Reset}"
echo -e "${Green}----------------${Reset}"
