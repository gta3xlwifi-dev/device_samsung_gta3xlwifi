# Vendor Setup for Galaxy Tab A 10.1 (WIFI)
# Common Hardware Configurations
git clone https://github.com/K9100ii/android_hardware_samsung_slsi-linaro_config -b lineage-19.1 hardware/samsung_slsi-linaro/config
git clone https://github.com/K9100ii/android_hardware_samsung_slsi-linaro_exynos -b lineage-19.1 hardware/samsung_slsi-linaro/exynos
git clone https://github.com/K9100ii/android_hardware_samsung_slsi-linaro_exynos5 -b lineage-19.1 hardware/samsung_slsi-linaro/exynos5
git clone https://github.com/K9100ii/android_hardware_samsung_slsi-linaro_graphics -b lineage-19.1 hardware/samsung_slsi-linaro/graphics
git clone https://github.com/K9100ii/android_hardware_samsung_slsi-linaro_openmax -b lineage-19.1 hardware/samsung_slsi-linaro/openmax
git clone https://github.com/LineageOS/android_hardware_samsung -b lineage-19.1 hardware/samsung
git clone https://github.com/LineageOS/android_device_samsung_slsi_sepolicy -b lineage-19.1 device/samsung_slsi/sepolicy

# Patches for eBPF support
git clone https://github.com/K9100ii/android_system_bpf -b lineage-12L system/bpf
git clone https://github.com/K9100ii/android_system_netd -b lineage-19.1 system/netd

# SLSI Linaro BSP
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib -b lineage-19.1 hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_libbt -b lineage-19.1 hardware/samsung_slsi/libbt
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal -b lineage-19.1 hardware/samsung_slsi/scsc_wifibt/wifi_hal
