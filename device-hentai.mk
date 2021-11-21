#
# SPDX-License-Identifier: BSD-3-Clause
# Copyright (C) 2021 StatiXOS.
# Copyright (C) 2021 Sourajit Karmakar
#

# Display
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display \

PRODUCT_PACKAGES += \
    libqdMetaData \
    libqdMetaData.vendor \
    libdisplayconfig \
    libdisplayconfig.qti.vendor \
    libqdutils \
    vendor.display.config@1.0.vendor \
    vendor.display.config@1.1.vendor \
    vendor.display.config@1.2.vendor \
    vendor.display.config@1.3.vendor \
    vendor.display.config@1.4.vendor \
    vendor.display.config@1.5.vendor \
    vendor.display.config@1.6.vendor \
    vendor.display.config@1.7.vendor \
    vendor.display.config@1.8 \
    vendor.display.config@1.8.vendor \
    vendor.display.config@1.9.vendor \
    vendor.display.config@2.0.vendor \
    vendor.qti.hardware.display.allocator@3.0.vendor:64 \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.mapper@3.0.vendor \
    vendor.qti.hardware.display.mapperextensions@1.0.vendor \
    vendor.qti.hardware.display.mapperextensions@1.1.vendor

# Properties
TARGET_VENDOR_PROP := device/google/sunfish/vendor.prop