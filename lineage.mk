## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := nicklaus

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/nicklaus/nicklaus.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nicklaus
PRODUCT_NAME := lineage_nicklaus
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto E4 Plus
PRODUCT_MANUFACTURER := Motorola
