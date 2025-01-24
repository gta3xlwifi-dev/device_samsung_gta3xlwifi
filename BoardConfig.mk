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

# Inherit the proprietary files
include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk