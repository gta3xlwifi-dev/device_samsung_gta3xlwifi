
# Graphics
PRODUCT_PACKAGES += \
    libexynosgscaler

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl \
    libkeymaster3device
    
# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
	fstab.exynos7904 \

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7904-common/universal7904-common.mk)

# Inherit proprietary vendor configuration
$(call inherit-product, vendor/samsung/gta3xlwifi/gta3xlwifi-vendor.mk)

