#
# SPDX-License-Identifier: BSD-3-Clause
# Copyright (C) 2021 StatiXOS.
# Copyright (C) 2021 Sourajit Karmakar
#

# Bluetooth
PRODUCT_PACKAGES += \
    com.qualcomm.qti.bluetooth_audio@1.0 \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor \
    vendor.qti.hardware.capabilityconfigstore@1.0.vendor

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

# Keymaster
PRODUCT_PACKAGES += \
    libkeymaster_messages.vendor:64 \
    libkeymaster_portable.vendor:64 \
    libpuresoftkeymasterdevice.vendor:64 \
    libteeui_hal_support.vendor:64 \
    libsoft_attestation_cert.vendor:64 \
    android.hardware.identity-support-lib.vendor \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    libnos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnosprotos:64 \
    libnos_transport:64 \
    lib_profiler:64

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    ese_spi_st \
    nfc_nci.st21nfc.default

# Properties
TARGET_VENDOR_PROP := device/google/sunfish/vendor.prop