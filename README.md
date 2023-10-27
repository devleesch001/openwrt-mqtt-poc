# mqtt-poc for openwrt

This projet is poc to test to build package for openwrt with mqtt dependency with libmodsquitto-nossl.

I use officila OpenWrt 22.02 SDK for ramips mt76x8.

## install

```bash
cd openwrt

git clone https://github.com/devleesch001/openwrt-mqtt-poc.git

cp -rf openwrt-mqtt-poc package/
rm -rf openwrt-mqtt-poc/
```

## Build

```bash
make package/poc_mqtt/compile -j6
```

Probleme is very long to compile because it compile all dependecy every time.

> on Intel® Core™ i5-8250U CPU @ 1.60GHz × 8
>
> 16,0 GiB ram
>
> Ubuntu 22.04.3 LTS 64-bit
>
> 1To SSD nvme :  /dev/nvme0n1p2 959786032 396387556 514570268  44% /
>

## "Benchmark"

```bash
time make package/poc_mqtt/compile -j6
WARNING: Makefile 'package/kernel/linux/Makefile' has a dependency on 'kmod-phy-bcm-ns-usb2', which does not exist
WARNING: Makefile 'package/kernel/linux/Makefile' has a dependency on 'kmod-phy-bcm-ns-usb3', which does not exist
tmp/.config-feeds.in:9:warning: ignoring type redefinition of 'FEED_packages' from 'bool' to 'tristate'
tmp/.config-feeds.in:17:warning: ignoring type redefinition of 'FEED_luci' from 'bool' to 'tristate'
tmp/.config-feeds.in:25:warning: ignoring type redefinition of 'FEED_routing' from 'bool' to 'tristate'
tmp/.config-feeds.in:33:warning: ignoring type redefinition of 'FEED_telephony' from 'bool' to 'tristate'
tmp/.config-package.in:59:warning: ignoring type redefinition of 'PACKAGE_base-files' from 'bool' to 'tristate'
tmp/.config-package.in:143:warning: ignoring type redefinition of 'PACKAGE_busybox' from 'bool' to 'tristate'
tmp/.config-package.in:177:warning: ignoring type redefinition of 'PACKAGE_ca-bundle' from 'bool' to 'tristate'
tmp/.config-package.in:199:warning: ignoring type redefinition of 'PACKAGE_dnsmasq' from 'bool' to 'tristate'
tmp/.config-package.in:279:warning: ignoring type redefinition of 'PACKAGE_dropbear' from 'bool' to 'tristate'
tmp/.config-package.in:308:warning: ignoring type redefinition of 'PACKAGE_firewall' from 'bool' to 'tristate'
tmp/.config-package.in:329:warning: ignoring type redefinition of 'PACKAGE_fstools' from 'bool' to 'tristate'
tmp/.config-package.in:365:warning: ignoring type redefinition of 'PACKAGE_fwtool' from 'bool' to 'tristate'
tmp/.config-package.in:376:warning: ignoring type redefinition of 'PACKAGE_getrandom' from 'bool' to 'tristate'
tmp/.config-package.in:400:warning: ignoring type redefinition of 'PACKAGE_jsonfilter' from 'bool' to 'tristate'
tmp/.config-package.in:479:warning: ignoring type redefinition of 'PACKAGE_libc' from 'bool' to 'tristate'
tmp/.config-package.in:507:warning: ignoring type redefinition of 'PACKAGE_libgcc' from 'bool' to 'tristate'
tmp/.config-package.in:628:warning: ignoring type redefinition of 'PACKAGE_libpthread' from 'bool' to 'tristate'
tmp/.config-package.in:812:warning: ignoring type redefinition of 'PACKAGE_logd' from 'bool' to 'tristate'
tmp/.config-package.in:826:warning: ignoring type redefinition of 'PACKAGE_mtd' from 'bool' to 'tristate'
tmp/.config-package.in:839:warning: ignoring type redefinition of 'PACKAGE_netifd' from 'bool' to 'tristate'
tmp/.config-package.in:897:warning: ignoring type redefinition of 'PACKAGE_openwrt-keyring' from 'bool' to 'tristate'
tmp/.config-package.in:909:warning: ignoring type redefinition of 'PACKAGE_opkg' from 'bool' to 'tristate'
tmp/.config-package.in:966:warning: ignoring type redefinition of 'PACKAGE_procd' from 'bool' to 'tristate'
tmp/.config-package.in:1135:warning: ignoring type redefinition of 'PACKAGE_rpcd' from 'bool' to 'tristate'
tmp/.config-package.in:1152:warning: ignoring type redefinition of 'PACKAGE_rpcd-mod-file' from 'bool' to 'tristate'
tmp/.config-package.in:1166:warning: ignoring type redefinition of 'PACKAGE_rpcd-mod-iwinfo' from 'bool' to 'tristate'
tmp/.config-package.in:1252:warning: ignoring type redefinition of 'PACKAGE_swconfig' from 'bool' to 'tristate'
tmp/.config-package.in:1265:warning: ignoring type redefinition of 'PACKAGE_ubox' from 'bool' to 'tristate'
tmp/.config-package.in:1281:warning: ignoring type redefinition of 'PACKAGE_ubus' from 'bool' to 'tristate'
tmp/.config-package.in:1295:warning: ignoring type redefinition of 'PACKAGE_ubusd' from 'bool' to 'tristate'
tmp/.config-package.in:1337:warning: ignoring type redefinition of 'PACKAGE_uci' from 'bool' to 'tristate'
tmp/.config-package.in:1349:warning: ignoring type redefinition of 'PACKAGE_urandom-seed' from 'bool' to 'tristate'
tmp/.config-package.in:1362:warning: ignoring type redefinition of 'PACKAGE_urngd' from 'bool' to 'tristate'
tmp/.config-package.in:1384:warning: ignoring type redefinition of 'PACKAGE_usign' from 'bool' to 'tristate'
tmp/.config-package.in:5939:warning: ignoring type redefinition of 'PACKAGE_libiwinfo-data' from 'bool' to 'tristate'
tmp/.config-package.in:10064:warning: ignoring type redefinition of 'PACKAGE_wireless-regdb' from 'bool' to 'tristate'
tmp/.config-package.in:11270:warning: ignoring type redefinition of 'PACKAGE_kmod-gpio-button-hotplug' from 'bool' to 'tristate'
tmp/.config-package.in:12293:warning: ignoring type redefinition of 'PACKAGE_kmod-cfg80211' from 'bool' to 'tristate'
tmp/.config-package.in:12576:warning: ignoring type redefinition of 'PACKAGE_kmod-mac80211' from 'bool' to 'tristate'
tmp/.config-package.in:12648:warning: ignoring type redefinition of 'PACKAGE_kmod-mt76-core' from 'bool' to 'tristate'
tmp/.config-package.in:12698:warning: ignoring type redefinition of 'PACKAGE_kmod-mt7603' from 'bool' to 'tristate'
tmp/.config-package.in:14163:warning: ignoring type redefinition of 'PACKAGE_libiwinfo-lua' from 'bool' to 'tristate'
tmp/.config-package.in:14217:warning: ignoring type redefinition of 'PACKAGE_lua' from 'bool' to 'tristate'
tmp/.config-package.in:29808:warning: ignoring type redefinition of 'PACKAGE_libip4tc' from 'bool' to 'tristate'
tmp/.config-package.in:29821:warning: ignoring type redefinition of 'PACKAGE_libip6tc' from 'bool' to 'tristate'
tmp/.config-package.in:29834:warning: ignoring type redefinition of 'PACKAGE_libxtables' from 'bool' to 'tristate'
tmp/.config-package.in:41796:warning: ignoring type redefinition of 'PACKAGE_libwolfssl' from 'bool' to 'tristate'
tmp/.config-package.in:44145:warning: ignoring type redefinition of 'PACKAGE_libblobmsg-json' from 'bool' to 'tristate'
tmp/.config-package.in:47107:warning: ignoring type redefinition of 'PACKAGE_libiwinfo' from 'bool' to 'tristate'
tmp/.config-package.in:47135:warning: ignoring type redefinition of 'PACKAGE_libjson-c' from 'bool' to 'tristate'
tmp/.config-package.in:47249:warning: ignoring type redefinition of 'PACKAGE_liblua' from 'bool' to 'tristate'
tmp/.config-package.in:47276:warning: ignoring type redefinition of 'PACKAGE_liblucihttp' from 'bool' to 'tristate'
tmp/.config-package.in:47287:warning: ignoring type redefinition of 'PACKAGE_liblucihttp-lua' from 'bool' to 'tristate'
tmp/.config-package.in:47989:warning: ignoring type redefinition of 'PACKAGE_libnl-tiny' from 'bool' to 'tristate'
tmp/.config-package.in:50171:warning: ignoring type redefinition of 'PACKAGE_libubox' from 'bool' to 'tristate'
tmp/.config-package.in:50195:warning: ignoring type redefinition of 'PACKAGE_libubus' from 'bool' to 'tristate'
tmp/.config-package.in:50207:warning: ignoring type redefinition of 'PACKAGE_libubus-lua' from 'bool' to 'tristate'
tmp/.config-package.in:50220:warning: ignoring type redefinition of 'PACKAGE_libuci' from 'bool' to 'tristate'
tmp/.config-package.in:50258:warning: ignoring type redefinition of 'PACKAGE_libuclient' from 'bool' to 'tristate'
tmp/.config-package.in:50477:warning: ignoring type redefinition of 'PACKAGE_libustream-wolfssl' from 'bool' to 'tristate'
tmp/.config-package.in:51201:warning: ignoring type redefinition of 'PACKAGE_rpcd-mod-luci' from 'bool' to 'tristate'
tmp/.config-package.in:51246:warning: ignoring type redefinition of 'PACKAGE_rpcd-mod-rrdns' from 'bool' to 'tristate'
tmp/.config-package.in:51477:warning: ignoring type redefinition of 'PACKAGE_luci' from 'bool' to 'tristate'
tmp/.config-package.in:51551:warning: ignoring type redefinition of 'PACKAGE_luci-ssl' from 'bool' to 'tristate'
tmp/.config-package.in:51606:warning: ignoring type redefinition of 'PACKAGE_luci-base' from 'bool' to 'tristate'
tmp/.config-package.in:51644:warning: ignoring type redefinition of 'LUCI_LANG_ar' from 'bool' to 'tristate'
tmp/.config-package.in:51647:warning: ignoring type redefinition of 'LUCI_LANG_bg' from 'bool' to 'tristate'
tmp/.config-package.in:51650:warning: ignoring type redefinition of 'LUCI_LANG_bn_BD' from 'bool' to 'tristate'
tmp/.config-package.in:51653:warning: ignoring type redefinition of 'LUCI_LANG_ca' from 'bool' to 'tristate'
tmp/.config-package.in:51656:warning: ignoring type redefinition of 'LUCI_LANG_cs' from 'bool' to 'tristate'
tmp/.config-package.in:51659:warning: ignoring type redefinition of 'LUCI_LANG_da' from 'bool' to 'tristate'
tmp/.config-package.in:51662:warning: ignoring type redefinition of 'LUCI_LANG_de' from 'bool' to 'tristate'
tmp/.config-package.in:51665:warning: ignoring type redefinition of 'LUCI_LANG_el' from 'bool' to 'tristate'
tmp/.config-package.in:51668:warning: ignoring type redefinition of 'LUCI_LANG_en' from 'bool' to 'tristate'
tmp/.config-package.in:51671:warning: ignoring type redefinition of 'LUCI_LANG_es' from 'bool' to 'tristate'
tmp/.config-package.in:51674:warning: ignoring type redefinition of 'LUCI_LANG_fi' from 'bool' to 'tristate'
tmp/.config-package.in:51677:warning: ignoring type redefinition of 'LUCI_LANG_fr' from 'bool' to 'tristate'
tmp/.config-package.in:51680:warning: ignoring type redefinition of 'LUCI_LANG_he' from 'bool' to 'tristate'
tmp/.config-package.in:51683:warning: ignoring type redefinition of 'LUCI_LANG_hi' from 'bool' to 'tristate'
tmp/.config-package.in:51686:warning: ignoring type redefinition of 'LUCI_LANG_hu' from 'bool' to 'tristate'
tmp/.config-package.in:51689:warning: ignoring type redefinition of 'LUCI_LANG_it' from 'bool' to 'tristate'
tmp/.config-package.in:51692:warning: ignoring type redefinition of 'LUCI_LANG_ja' from 'bool' to 'tristate'
tmp/.config-package.in:51695:warning: ignoring type redefinition of 'LUCI_LANG_ko' from 'bool' to 'tristate'
tmp/.config-package.in:51698:warning: ignoring type redefinition of 'LUCI_LANG_mr' from 'bool' to 'tristate'
tmp/.config-package.in:51701:warning: ignoring type redefinition of 'LUCI_LANG_ms' from 'bool' to 'tristate'
tmp/.config-package.in:51704:warning: ignoring type redefinition of 'LUCI_LANG_nb_NO' from 'bool' to 'tristate'
tmp/.config-package.in:51707:warning: ignoring type redefinition of 'LUCI_LANG_nl' from 'bool' to 'tristate'
tmp/.config-package.in:51710:warning: ignoring type redefinition of 'LUCI_LANG_pl' from 'bool' to 'tristate'
tmp/.config-package.in:51713:warning: ignoring type redefinition of 'LUCI_LANG_pt' from 'bool' to 'tristate'
tmp/.config-package.in:51716:warning: ignoring type redefinition of 'LUCI_LANG_pt_BR' from 'bool' to 'tristate'
tmp/.config-package.in:51719:warning: ignoring type redefinition of 'LUCI_LANG_ro' from 'bool' to 'tristate'
tmp/.config-package.in:51722:warning: ignoring type redefinition of 'LUCI_LANG_ru' from 'bool' to 'tristate'
tmp/.config-package.in:51725:warning: ignoring type redefinition of 'LUCI_LANG_sk' from 'bool' to 'tristate'
tmp/.config-package.in:51728:warning: ignoring type redefinition of 'LUCI_LANG_sv' from 'bool' to 'tristate'
tmp/.config-package.in:51731:warning: ignoring type redefinition of 'LUCI_LANG_tr' from 'bool' to 'tristate'
tmp/.config-package.in:51734:warning: ignoring type redefinition of 'LUCI_LANG_uk' from 'bool' to 'tristate'
tmp/.config-package.in:51737:warning: ignoring type redefinition of 'LUCI_LANG_vi' from 'bool' to 'tristate'
tmp/.config-package.in:51740:warning: ignoring type redefinition of 'LUCI_LANG_zh_Hans' from 'bool' to 'tristate'
tmp/.config-package.in:51743:warning: ignoring type redefinition of 'LUCI_LANG_zh_Hant' from 'bool' to 'tristate'
tmp/.config-package.in:51761:warning: ignoring type redefinition of 'PACKAGE_luci-mod-admin-full' from 'bool' to 'tristate'
tmp/.config-package.in:51836:warning: ignoring type redefinition of 'PACKAGE_luci-mod-network' from 'bool' to 'tristate'
tmp/.config-package.in:51864:warning: ignoring type redefinition of 'PACKAGE_luci-mod-status' from 'bool' to 'tristate'
tmp/.config-package.in:51879:warning: ignoring type redefinition of 'PACKAGE_luci-mod-system' from 'bool' to 'tristate'
tmp/.config-package.in:52307:warning: ignoring type redefinition of 'PACKAGE_luci-app-firewall' from 'bool' to 'tristate'
tmp/.config-package.in:52705:warning: ignoring type redefinition of 'PACKAGE_luci-app-opkg' from 'bool' to 'tristate'
tmp/.config-package.in:53306:warning: ignoring type redefinition of 'PACKAGE_luci-theme-bootstrap' from 'bool' to 'tristate'
tmp/.config-package.in:53420:warning: ignoring type redefinition of 'PACKAGE_luci-proto-ipv6' from 'bool' to 'tristate'
tmp/.config-package.in:53486:warning: ignoring type redefinition of 'PACKAGE_luci-proto-ppp' from 'bool' to 'tristate'
tmp/.config-package.in:53594:warning: ignoring type redefinition of 'PACKAGE_luci-lib-base' from 'bool' to 'tristate'
tmp/.config-package.in:53650:warning: ignoring type redefinition of 'PACKAGE_luci-lib-ip' from 'bool' to 'tristate'
tmp/.config-package.in:53713:warning: ignoring type redefinition of 'PACKAGE_luci-lib-jsonc' from 'bool' to 'tristate'
tmp/.config-package.in:53727:warning: ignoring type redefinition of 'PACKAGE_luci-lib-nixio' from 'bool' to 'tristate'
tmp/.config-package.in:92295:warning: ignoring type redefinition of 'PACKAGE_ip6tables' from 'bool' to 'tristate'
tmp/.config-package.in:92361:warning: ignoring type redefinition of 'PACKAGE_iptables' from 'bool' to 'tristate'
tmp/.config-package.in:114559:warning: ignoring type redefinition of 'PACKAGE_cgi-io' from 'bool' to 'tristate'
tmp/.config-package.in:116026:warning: ignoring type redefinition of 'PACKAGE_uhttpd' from 'bool' to 'tristate'
tmp/.config-package.in:116062:warning: ignoring type redefinition of 'PACKAGE_uhttpd-mod-ubus' from 'bool' to 'tristate'
tmp/.config-package.in:116516:warning: ignoring type redefinition of 'PACKAGE_hostapd-common' from 'bool' to 'tristate'
tmp/.config-package.in:116991:warning: ignoring type redefinition of 'PACKAGE_wpad-basic-wolfssl' from 'bool' to 'tristate'
tmp/.config-package.in:119367:warning: ignoring type redefinition of 'PACKAGE_iw' from 'bool' to 'tristate'
tmp/.config-package.in:121330:warning: ignoring type redefinition of 'PACKAGE_odhcp6c' from 'bool' to 'tristate'
tmp/.config-package.in:121381:warning: ignoring type redefinition of 'PACKAGE_odhcpd-ipv6only' from 'bool' to 'tristate'
tmp/.config-package.in:121699:warning: ignoring type redefinition of 'PACKAGE_ppp' from 'bool' to 'tristate'
tmp/.config-package.in:121742:warning: ignoring type redefinition of 'PACKAGE_ppp-mod-pppoe' from 'bool' to 'tristate'
tmp/.config-package.in:123008:warning: ignoring type redefinition of 'PACKAGE_uclient-fetch' from 'bool' to 'tristate'
tmp/.config-package.in:126454:warning: ignoring type redefinition of 'PACKAGE_px5g-wolfssl' from 'bool' to 'tristate'
tmp/.config-package.in:133668:warning: ignoring type redefinition of 'PACKAGE_iwinfo' from 'bool' to 'tristate'
tmp/.config-package.in:133692:warning: ignoring type redefinition of 'PACKAGE_jshn' from 'bool' to 'tristate'
tmp/.config-package.in:133997:warning: ignoring type redefinition of 'PACKAGE_libjson-script' from 'bool' to 'tristate'
Config-build.in:6439:warning: defaults for choice values not supported
Config-build.in:6443:warning: defaults for choice values not supported
Config-build.in:6447:warning: defaults for choice values not supported
Config-build.in:6451:warning: defaults for choice values not supported
Config-build.in:6455:warning: defaults for choice values not supported
Config-build.in:9631:warning: defaults for choice values not supported
Config-build.in:9635:warning: defaults for choice values not supported
Config-build.in:9751:warning: defaults for choice values not supported
Config-build.in:9755:warning: defaults for choice values not supported
Config-build.in:9759:warning: defaults for choice values not supported
Config-build.in:9763:warning: defaults for choice values not supported
Config-build.in:9767:warning: defaults for choice values not supported
Config-build.in:9771:warning: defaults for choice values not supported
Config-build.in:9787:warning: defaults for choice values not supported
Config-build.in:10311:warning: defaults for choice values not supported
Config-build.in:10315:warning: defaults for choice values not supported
Config-build.in:10319:warning: defaults for choice values not supported
Config-build.in:10323:warning: defaults for choice values not supported
Config-build.in:10327:warning: defaults for choice values not supported
Config-build.in:10615:warning: defaults for choice values not supported
Config-build.in:10939:warning: defaults for choice values not supported
Config-build.in:10943:warning: defaults for choice values not supported
Config-build.in:10947:warning: defaults for choice values not supported
#
# No change to .config
#
 make[1] package/poc_mqtt/compile
 make[2] -C package/toolchain compile
 make[2] -C feeds/packages/libs/c-ares clean-build
 make[2] -C feeds/base/package/libs/zlib clean-build
 make[2] -C feeds/base/package/libs/mbedtls clean-build
 make[2] -C feeds/packages/libs/cjson clean-build
 make[2] -C feeds/base/package/firmware/prism54-firmware clean-build
 make[2] -C feeds/base/package/firmware/linux-firmware clean-build
 make[2] -C feeds/base/package/libs/zlib compile
 make[2] -C feeds/base/package/libs/mbedtls compile
 make[2] -C feeds/packages/libs/c-ares compile
 make[2] -C feeds/packages/libs/cjson compile
 make[2] -C feeds/base/package/firmware/prism54-firmware compile
 make[2] -C feeds/base/package/firmware/linux-firmware compile
 make[2] -C feeds/packages/libs/libcap clean-build
 make[2] -C feeds/packages/libs/libcap compile
 make[2] -C feeds/packages/libs/libuv clean-build
 make[2] -C feeds/packages/libs/libuv compile
 make[2] -C package/kernel/linux compile
 make[2] -C feeds/base/package/kernel/cryptodev-linux clean-build
 make[2] -C feeds/base/package/kernel/cryptodev-linux compile
 make[2] -C feeds/base/package/libs/openssl clean-build
 make[2] -C feeds/base/package/libs/openssl compile
 make[2] -C feeds/packages/libs/libwebsockets clean-build
 make[2] -C feeds/packages/libs/libwebsockets compile
 make[2] -C feeds/packages/libs/libwebsockets clean-build
 make[2] -C feeds/packages/libs/libwebsockets compile
 make[2] -C feeds/packages/libs/libwebsockets clean-build
 make[2] -C feeds/packages/libs/libwebsockets compile
 make[2] -C feeds/packages/net/mosquitto clean-build
 make[2] -C feeds/packages/net/mosquitto compile
 make[2] -C feeds/packages/net/mosquitto clean-build
 make[2] -C feeds/packages/net/mosquitto compile
 make[2] -C feeds/packages/net/mosquitto clean-build
 make[2] -C feeds/packages/net/mosquitto compile
 make[2] -C feeds/packages/net/mosquitto clean-build
 make[2] -C feeds/packages/net/mosquitto compile
 make[2] -C feeds/packages/net/mosquitto clean-build
 make[2] -C feeds/packages/net/mosquitto compile
 make[2] -C feeds/packages/net/mosquitto clean-build
 make[2] -C feeds/packages/net/mosquitto compile
 make[2] -C package/poc_mqtt clean-build
 make[2] -C package/poc_mqtt compile
make package/poc_mqtt/compile -j6  632,72s user 169,67s system 187% cpu 7:08,81 total
```
