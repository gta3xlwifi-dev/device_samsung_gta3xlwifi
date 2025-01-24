#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/samsung/gta3xlwifi


# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_SLSI := true

# Platform
TARGET_BOARD_PLATFORM := universal7904
BOARD_VENDOR := Samsung
TARGET_SOC := exynos7904
TARGET_BOOTLOADER_BOARD_NAME := universal7904
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Wifi
BOARD_WLAN_DEVICE                := slsi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
PRODUCT_CFI_INCLUDE_PATHS += hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib

# Inherit the proprietary files
include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk