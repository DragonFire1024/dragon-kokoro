#!/system/bin/sh
mount -o remount,rw /
ln -sf /debug_ramdisk/su /system/bin/su
ln -sf /debug_ramdisk/magisk /system/bin/magisk
mount -o remount,ro /
