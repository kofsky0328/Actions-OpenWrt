#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/softethervpn-server/softethervpn5-server/' feeds/smpackage/luci-app-softethervpn/Makefile
# sed -i 's/PKG_VERSION:=5.02.5180/PKG_VERSION:=5.02.5181/' feeds/packages/net/softethervpn5/Makefile
# sed -i 's/PKG_HASH:=b5649a8ea3cc6477325e09e2248ef708d434ee3b2251eb8764bcfc15fb1de456/PKG_HASH:=2222ef48b3f9102265ef7d27e496ad40a1bd1eaba8093bc5e696b48402c52441/'  feeds/packages/net/softethervpn5/Makefile
# rm feeds/packages/net/softethervpn5/patches/010-engines.patch
cd ..
mv 150_remove-restriction.patch openwrt/feeds/packages/net/softethervpn5/patches/150_remove-restriction.patch
cd openwrt
