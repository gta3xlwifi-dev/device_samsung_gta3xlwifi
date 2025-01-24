#
# Copyright (C) 2024-25 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from gta3xlwifi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gta3xlwifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_gta3xlwifi
PRODUCT_MODEL := SM-T510

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := gta3xlwifi
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="gta3xlwifixx-user 11 RP1A.200720.012 T510XXU5CWA1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/gta3xlwifixx/gta3xlwifi:11/RP1A.200720.012/T510XXU5CWA1:user/release-keys