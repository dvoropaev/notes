#!/bin/sh

img=${1:?"Usage: $0 file device"}
dev=${2:?"Usage: $0 file device"}

umount /dev/$dev*
wipefs -a /dev/$dev
dd if=$img of=/dev/$dev status=progress bs=1M conv=fsync
sync

