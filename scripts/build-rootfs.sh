#!/bin/bash

echo "Downloading latest Void Linux rootfs..."

mkdir -p rootfs
cd rootfs

LATEST=$(curl -s https://repo-default.voidlinux.org/live/current/ | grep ROOTFS | grep x86_64 | head -n 1 | cut -d '"' -f 2)

wget https://repo-default.voidlinux.org/live/current/$LATEST -O void-rootfs.tar.xz

echo "Root filesystem downloaded!"