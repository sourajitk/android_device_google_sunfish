#
# SPDX-License-Identifier: BSD-3-Clause
# Copyright (C) 2021 StatiXOS.
# Copyright (C) 2021 Sourajit Karmakar
#

# Inherit some common StatiXOS stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit some core AOSP stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)

# Inherit some more AOSP stuff.
# For vendor.
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# For system_ext.
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/google/sunfish/sunfish-vendor.mk)

# Device
$(call inherit-product, device/google/sunfish/device-sunfish.mk)

# Don't build super.img.
PRODUCT_BUILD_SUPER_PARTITION := false

# Device identifiers
PRODUCT_DEVICE := sunfish
PRODUCT_NAME := statix_sunfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 11 RQ3A.210905.001 7511028 release-keys" \

BUILD_FINGERPRINT := google/sunfish/sunfish:11/RQ3A.210905.001/7511028:user/release-keys
