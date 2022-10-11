# Define device-tree path
DEVICE_PATH := device/asus/ME173X

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
BLOCK_BASED_OTA := true

# Device is a tablet
PRODUCT_CHARACTERISTICS := tablet

# Overlay
#DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Display
PRODUCT_AAPT_CONFIG := large hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_PREBUILT_DPI := hdpi
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800
#$(call inherit-product, frameworks/native/build/phone-hdpi-dalvik-heap.mk)

# Locale
PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION := RU

# Packages
# Audio
PRODUCT_PACKAGES += \
audio.primary.default \
audio_policy.default \
libaudio.r_submix.default \
libaudio.usb.default

# Camera
PRODUCT_PACKAGES += \
Gallery2

# GPS
PRODUCT_PACKAGES += \
gps.default

# USB
PRODUCT_PACKAGES += \
com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
wpa_supplicant \
dhcpcd.conf \
p2p_supplicant_marlin_inc.conf \
libnetcmdiface