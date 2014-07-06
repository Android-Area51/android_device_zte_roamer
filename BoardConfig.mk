TARGET_SPECIFIC_HEADER_PATH := device/zte/roamer/include

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp

TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom

BOARD_EGL_CFG := device/zte/roamer/config/egl.cfg

# for using stock kernel vmsplit configuration (for stability)
TARGET_USES_2G_VM_SPLIT := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := roamer

#WiFI related definitions
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_6_X
BOARD_WLAN_DEVICE                := BCM4319
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/fw_4319.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/fw_4319_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0 firmware_path=/system/etc/fw_4319.bin nvram_path=/system/etc/nv_4319.txt"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# Qcom bits
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := roamer
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

TARGET_PROVIDES_LIBRIL := true

TARGET_PROVIDES_LIBAUDIO := true

#TARGET_PROVIDES_INITRC := true

# Recovery and kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x02600000
#BOARD_PAGE_SIZE := 0x00000800

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 0x00020000

TARGET_PREBUILT_KERNEL := device/zte/roamer/kernel
TARGET_RECOVERY_INITRC := device/zte/roamer/recovery/etc/init.rc

BOARD_DATA_DEVICE := /dev/block/mtdblock6
BOARD_DATA_FILESYSTEM := auto
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock5
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/roamer/recovery/recovery_keys.c

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun

BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# TWRP stuff
DEVICE_RESOLUTION := 320x480
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# inherit from the proprietary version
-include vendor/zte/roamer/BoardConfigVendor.mk
