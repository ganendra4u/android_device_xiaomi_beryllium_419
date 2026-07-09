#
# Copyright (C) 2018-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
TARGET_KERNEL_PLATFORM_TARGET :=
KERNEL_BUILD_OUT_PREFIX :=
KERNEL_PATH := $(TARGET_KERNEL_SOURCE)
KERNEL_ARCH := arm64
KERNEL_MAKE_CMD := make
KERNEL_MAKE_FLAGS :=
KERNEL_CROSS_COMPILE := CROSS_COMPILE=aarch64-linux-android-
TARGET_PREBUILT_KERNEL_HEADERS :=

include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/beryllium

# Assert
TARGET_OTA_ASSERT_DEVICE := beryllium

# Audio
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/beryllium.config

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67092480

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# Inherit from the proprietary version
include vendor/xiaomi/beryllium/BoardConfigVendor.mk
