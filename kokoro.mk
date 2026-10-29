##Copy init.kokoro.rc and Magisk files into the system

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.kokoro.rc:root/init.kokoro.rc \
    $(foreach f,$(wildcard $(LOCAL_PATH)/magisk/*),$(f):$(subst $(LOCAL_PATH),system/etc,$(f)))
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/magisk/magisk-ramdisk.img:system/etc/magisk/magisk-ramdisk.img \
