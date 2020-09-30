#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit GApps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2240
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := google/coral/coral:11/RP1A.200720.009/6720564:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7 \
    PRODUCT_NAME=OnePlus7 \
    PRIVATE_BUILD_DESC="OnePlus7-user 10 QKQ1.190716.003 2007240000 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
