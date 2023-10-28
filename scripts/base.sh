#!/usr/bin/env bash

sed -i "s/option bbr_cca '0'/option bbr_cca '1'/g" openwrt/package/feeds/luci/luci-app-turboacc/root/etc/config/turboacc >>/dev/null
sed -i 's/root:::0:99999:7:::/root:$1$OR\/e\/lZS$5uicyTzUtJmk2Bqbqc.g3.:19633:0:99999:7:::/g' openwrt/package/base-files/files/etc/passwd >>/dev/null
sed -i 's/root:::0:99999:7:::/root:$1$OR\/e\/lZS$5uicyTzUtJmk2Bqbqc.g3.:19633:0:99999:7:::/g' openwrt/package/base-files/files/etc/shadow >>/dev/null
sed -i 's/set wireless.default_radio${devidx}.encryption=none/set wireless.default_radio${devidx}.encryption=psk-mixed/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh >>/dev/null
sed -i '/default_radio${devidx}.encryption/a \                        set wireless.default_radio${devidx}.key=mn5e2kmg\n                        set wireless.default_radio${devidx}.ieee80211k=1\n                        set wireless.default_radio${devidx}.ieee80211v=1' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh >>/dev/null