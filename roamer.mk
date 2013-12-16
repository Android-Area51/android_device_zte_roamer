DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG += normal mdpi
PRODUCT_AAPT_PREF_CONFIG += mdpi
PRODUCT_LOCALES += mdpi

# Permissions
PRODUCT_COPY_FILES += \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    $(ANDROID_BUILD_TOP)/frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Key layout ank keychar binaries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm.bin:system/usr/keychars/qwerty.bin \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/keyfiles/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keyfiles/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/keyfiles/roamer_keypad.kl:system/usr/keylayout/roamer_keypad.kl

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Audio Parts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES  += \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/fw_4319_apsta.bin:system/etc/fw_4319_apsta.bin \
    $(LOCAL_PATH)/config/fw_4319.bin:system/etc/fw_4319.bin\
    $(LOCAL_PATH)/config/nv_4319.txt:system/etc/nv_4319.txt\
    $(LOCAL_PATH)/config/test_4319.bin:system/etc/test_4319.bin \
    $(LOCAL_PATH)/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/modules/cpaccess.ko:system/lib/modules/cpaccess.ko \
    $(LOCAL_PATH)/modules/dhd.ko:system/lib/modules/dhd.ko \
    $(LOCAL_PATH)/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    $(LOCAL_PATH)/modules/evbug.ko:system/lib/modules/evdebug.ko \
    $(LOCAL_PATH)/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
    $(LOCAL_PATH)/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
    $(LOCAL_PATH)/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
    $(LOCAL_PATH)/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest \
    $(LOCAL_PATH)/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
    $(LOCAL_PATH)/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
    $(LOCAL_PATH)/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
    $(LOCAL_PATH)/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpage.ko \
    $(LOCAL_PATH)/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
    $(LOCAL_PATH)/modules/oprofile.ko:system/lib/modules/oprofile.ko \
    $(LOCAL_PATH)/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    $(LOCAL_PATH)/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko


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

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/egl.cfg:system/lib/egl/egl.cfg

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

LOCAL_KERNEL := device/zte/roamer/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.roamer.rc:root/init.roamer.rc \
    $(LOCAL_PATH)/prebuilt/logo.bmp:root/logo.bmp \
    $(LOCAL_PATH)/config/init.qcom.rc:root/init.qcom.rc

PRODUCT_COPY_FILES += \
    device/zte/roamer/config/ueventd.qcom.rc:root/ueventd.roamer.rc \
    device/zte/roamer/recovery/sbin/recovery.sh:root/sbin/recovery.sh\
    device/zte/roamer/recovery/sbin/usbconfig:root/sbin/usbconfig\
    device/zte/roamer/recovery/etc/usb.conf:root/usb.conf

# Recovery
PRODUCT_COPY_FILES += \
    device/zte/roamer/recovery.fstab:recovery/root/etc/recovery.fstab

$(call inherit-product-if-exists, vendor/zte/roamer/roamer-vendor.mk)
