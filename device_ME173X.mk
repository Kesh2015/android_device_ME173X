$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Asus/ME173X/ME173X-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Asus/ME173X/overlay

LOCAL_PATH := device/Asus/ME173X
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ME173X
PRODUCT_DEVICE := ME173X

# Device resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

PRODUCT_CHARACTERISTICS := tablet

# AAPT
# Use high-density artwork where available
PRODUCT_LOCALES += hdpi

# this is an large screen (TAB)
PRODUCT_AAPT_CONFIG := large hdpi

# Specifications for tablet without RIL
PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only \
    ro.radio.noril=1
