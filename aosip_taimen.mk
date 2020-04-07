# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 10 QQ2A.200405.005 6254899 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:10/QQ2A.200405.005/6254899:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/taimen/taimen:10/QQ2A.200305.002/6138846:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
