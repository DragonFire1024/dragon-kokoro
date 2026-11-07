#!/system/bin/sh
if ! pm path com.topjohnwu.magisk >/dev/null 2>&1; then
    pm install -r -d /system/etc/magisk/stub.apk.bin
fi
pm enable com.topjohnwu.magisk
