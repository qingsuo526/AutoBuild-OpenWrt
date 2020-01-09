#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.123.1/g' openwrt/package/base-files/files/bin/config_generate

- name: 自定义插件主题。
        run: |
          cd package
          mkdir openwrt-packages
          cd openwrt-packages
          git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
          git clone https://github.com/qingsuo526/luci-app-ssr-plus-Jo-1.git
