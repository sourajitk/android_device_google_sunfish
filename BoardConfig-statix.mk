#
# SPDX-License-Identifier: BSD-3-Clause
# Copyright (C) 2021 StatiXOS.
# Copyright (C) 2021 Sourajit Karmakar
#

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.lz4
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-elf-
KERNEL_TOOLCHAIN := $(PWD)/prebuilts/gcc/linux-x86/aarch64/aarch64-elf/bin
TARGET_GCC_ARM32_TOOLCHAIN := $(PWD)/prebuilts/gcc/linux-x86/arm/arm-eabi/bin/arm-eabi-
KERNEL_LD := LD=$(PWD)/prebuilts/gcc/linux-x86/aarch64/aarch64-elf/bin/aarch64-elf-ld.lld \
             CROSS_COMPILE_ARM32=$(TARGET_GCC_ARM32_TOOLCHAIN)
TARGET_KERNEL_CONFIG := sunfish_defconfig
TARGET_KERNEL_SOURCE := kernel/google/sunfish
TARGET_NEEDS_DTBOIMAGE := true

# Partitions
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 358400000
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1803550720
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 562024448
AB_OTA_PARTITIONS += \
    vendor \

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

-include vendor/google/sunfish/BoardConfigVendor.mk
