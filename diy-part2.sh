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

# 更改默认IP
#sed -i 's/192.168.1.1/192.168.50.2/g' package/base-files/files/bin/config_generate

rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-dockerman
git clone -b master --single-branch --filter=blob:none https://github.com/vernesong/OpenClash.git feeds/luci/applications/luci-app-openclash
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
git clone https://github.com/lisaac/luci-lib-docker package/luci-lib-docker
git clone https://github.com/AK201314/luci-app-temp-status.git
git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
