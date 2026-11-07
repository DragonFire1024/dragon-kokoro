##Copy init.kokoro.rc and Magisk files into the system

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.kokoro.rc:root/init.kokoro.rc \
    $(foreach f,$(wildcard $(LOCAL_PATH)/magisk/*),$(f):$(subst $(LOCAL_PATH),system/etc,$(f)))
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.su.rc:system/etc/init/init.su.rc \
    $(LOCAL_PATH)/fix_su.sh:system/bin/fix_su.sh \
    $(LOCAL_PATH)/init.keep_magisk.rc:system/etc/init/init.keep_magisk.rc \
    $(LOCAL_PATH)/keep_magisk.sh:system/bin/keep_magisk.sh \
    $(LOCAL_PATH)/magisk/magisk-ramdisk.img:system/etc/magisk/magisk-ramdisk.img
