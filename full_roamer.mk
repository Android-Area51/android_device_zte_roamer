$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/zte/roamer/roamer.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/arearom/products/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, device/common/gps/gps_us_supl.mk)

#DEVICE_PACKAGE_OVERLAYS += device/zte/roamer/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_roamer
PRODUCT_DEVICE := roamer
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Z990
