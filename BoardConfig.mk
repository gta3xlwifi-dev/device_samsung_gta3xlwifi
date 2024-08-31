#
# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_FOLDER := device/samsung/gta3xlwifi

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true

ENABLE_SCHEDBOOST := true
ENABLE_CPUSETS := true

TARGET_OTA_ASSERT_DEVICE := gta3xlwifi

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_gta3xlwifi

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos7885
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g71
TARGET_BOOTLOADER_BOARD_NAME := universal7885
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1 --board SRPSA25A003RU
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk

TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel
TARGET_KERNEL_CONFIG := gta3xlwifi_defconfig

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02D00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xB8000000

TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.exynos7904
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true

BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_FOLDER)/prebuilt/recovery_dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true

# Sepolicy
BOARD_SEPOLICY_TEE_FLAVOR := mobicore

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

include device/samsung/universal7904-common/BoardConfigCommon.mk


