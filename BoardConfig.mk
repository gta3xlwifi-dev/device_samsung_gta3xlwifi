#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/samsung/gta3xlwifi

# Platform
TARGET_BOARD_PLATFORM := universal7904
BOARD_VENDOR := Samsung
TARGET_SOC := exynos7904
TARGET_BOOTLOADER_BOARD_NAME := universal7904
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Inherit the proprietary files
include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk