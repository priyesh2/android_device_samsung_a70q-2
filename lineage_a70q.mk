#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm64_ab.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from a70q device
$(call inherit-product, device/samsung/a70q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a70q
PRODUCT_DEVICE := a70q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A705
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Screen density
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="a70q" \
    TARGET_BOOTLOADER_BOARD_NAME=sm6150 \
    TARGET_DEVICE="a70q" \
    PRODUCT_NAME=a70q \
    PRIVATE_BUILD_DESC="a70qxx-user 9 PPR1.180610.011 A705FNXXU5ASL4 release-keys" \

BUILD_FINGERPRINT := "samsung/a70qxx/a70q:9/PPR1.180610.011/A705FNXXU5ASL4:user/release-keys"
