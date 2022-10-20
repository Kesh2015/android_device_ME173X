## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ME173X

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/Asus/ME173X/device_ME173X.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ME173X
PRODUCT_NAME := cm_ME173X
PRODUCT_BRAND := Asus
PRODUCT_MODEL := ME173X
PRODUCT_MANUFACTURER := Asus
