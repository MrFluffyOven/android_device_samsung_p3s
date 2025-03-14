#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from p3s device
$(call inherit-product, device/samsung/p3s/device.mk)

PRODUCT_DEVICE := p3s
PRODUCT_NAME := twrp_p3s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G998B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="p3sxxx-user 11 RP1A.200720.012 G998BXXSBGXED release-keys"

BUILD_FINGERPRINT := samsung/p3sxxx/p3s:11/RP1A.200720.012/G998BXXSBGXED:user/release-keys
