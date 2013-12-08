# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/zte/roamer/full_roamer.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/arearom/products/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/arearom/products/common_full.mk)

#DEVICE_PACKAGE_OVERLAYS += device/zte/roamer/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := arearom_roamer
PRODUCT_DEVICE := roamer
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Z990
