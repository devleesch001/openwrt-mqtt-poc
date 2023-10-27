# mqtt-poc for openwrt

This projet is poc to test to build package for openwrt with mqtt dependency with libmodsquitto-nossl.

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

Probleme is very long to compile every time because it compile all dependecy.

> on Intel® Core™ i5-8250U CPU @ 1.60GHz × 8
> 16,0 GiB ram
> Ubuntu 22.04.3 LTS 64-bit
>
> make package/poc_mqtt/compile -j6  621,76s user 168,71s system 186% cpu 7:04,82 total
