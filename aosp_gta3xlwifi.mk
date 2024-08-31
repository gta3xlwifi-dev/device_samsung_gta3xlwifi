# Release name
PRODUCT_RELEASE_NAME := gta3xlwifi

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from a14xm device
$(call inherit-product, device/samsung/gta3xlwifi/gta3xlwifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta3xlwifi
PRODUCT_NAME := aosp_gta3xlwifi
PRODUCT_MODEL := SM-T510
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta3xlwifixx-user 11 RP1A.200720.012 T510XXU5CWA1 release-keys"

BUILD_FINGERPRINT := samsung/gta3xlwifixx/gta3xlwifi:11/RP1A.200720.012/T510XXU5CWA1:user/release-keys
