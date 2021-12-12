#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/xiaomi/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vangogh

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Fingerprint
SOONG_CONFIG_XIAOMI_LITO_FOD_POS_X = 445
SOONG_CONFIG_XIAOMI_LITO_FOD_POS_Y = 2025
SOONG_CONFIG_XIAOMI_LITO_FOD_SIZE = 190

# Kernel
TARGET_KERNEL_CONFIG := vendor/vangogh_user_defconfig

# Inherit from the proprietary version
include vendor/xiaomi/vangogh/BoardConfigVendor.mk

RECOVERY_VARIANT:= TWRP
TW_THEME := portrait_hdpi
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
$(warning "TW_THEME")
$(warning $(TW_THEME))

RECOVERY_SDCARD_ON_DATA := true