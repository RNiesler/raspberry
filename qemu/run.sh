#!/bin/bash
qemu-system-arm \
-kernel ./qemu-rpi-kernel/kernel-qemu-4.9.41-stretch \
-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
-hda raspbian-stretch-lite.qcow \
-cpu arm1176 -m 256 \
-M versatilepb \
-dtb ./qemu-rpi-kernel/versatile-pb.dtb \
-no-reboot \
-serial stdio \
-net nic -net user,hostfwd=tcp::5022-:22
#-net nic -net user \
#-net tap,ifname=vnet0,script=no,downscript=no
