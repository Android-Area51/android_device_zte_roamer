DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES  +=\
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/fw_4319_apsta.bin:system/etc/fw_4319_apsta.bin \
    $(LOCAL_PATH)/config/fw_4319.bin:system/etc/fw_4319.bin\
    $(LOCAL_PATH)/nv_4319.txt:system/etc/nv_4319.txt\
    $(LOCAL_PATH)/test_4319.bin:system/etc/test_4319.bin

# Key layout ank keychar binaries
PRODUCT_COPY_FILES +=\
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm.bin:system/usr/keychars/qwerty.bin \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/keyfiles/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keyfiles/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/keyfiles/roamer_keypad.kl:system/usr/keylayout/roamer_keypad.kl

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PACKAGES += \
    camera.msm7k \
    copybit.msm7k \
    gralloc.msm7k \
    hwcomposer.msm7k \
    gps.msm7k \
    audio.primary.msm7k \
    audio_policy.msm7k \
    audio.a2dp.default 

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw

PRODUCT_PACKAGES += \
    hciconfig \
    hcitool \
    libaudioutils

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

LOCAL_KERNEL := device/zte/roamer/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/zte/roamer/config/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/zte/roamer/recovery/sbin/recovery.sh:/root/sbin/recovery.sh\
    device/zte/roamer/recovery/sbin/usbconfig:/root/sbin/usbconfig\
    device/zte/roamer/recovery/etc/usb.conf:/root/usb.conf

# Recovery
PRODUCT_COPY_FILES += \
    device/zte/roamer/recovery.fstab:recovery/root/etc/recovery.fstab

$(call inherit-product-if-exists, vendor/zte/roamer/roamer-vendor.mk)
