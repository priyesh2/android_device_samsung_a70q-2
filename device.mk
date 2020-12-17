#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a70q

$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Call the proprietary setup
$(call inherit-product, vendor/samsung/a70q/a70q-vendor.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS += *

# No A/B
AB_OTA_UPDATER := false

# Audio 
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Camera
PRODUCT_PACKAGES += \
    Snap
    
# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0    

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc

# Recovery
PRODUCT_PACKAGES += \
    fastbootd \
    init.recovery.qcom.rc

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext
