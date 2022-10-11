# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/asus/ME173X/device.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800
DEVICE_RESOLUTION := 800x1280

TARGET_VENDOR_DEVICE_NAME := ME173X

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Asus
PRODUCT_DEVICE := ME173X
PRODUCT_MANUFACTURER := Asus
PRODUCT_NAME := lineage_ME173X
PRODUCT_MODEL := MeMO Pad HD 7 (ME173X)