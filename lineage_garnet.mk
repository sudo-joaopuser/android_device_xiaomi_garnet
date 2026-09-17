#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="garnet_global-user 16 BP2A.250605.031.A3 OS3.0.5.0.WNRMIXM release-keys" \
    BuildFingerprint=Redmi/garnet_global/garnet:16/BP2A.250605.031.A3/OS3.0.5.0.WNRMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# RisingOS Flags
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
PRODUCT_NO_CAMERA := true
TARGET_ENABLE_BLUR := true

# GMS
WITH_GMS := true/false

# Chipset/Maintainer properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 7s Gen 2" \
    RisingMaintainer="Unknown"

RISING_MAINTAINER := Unknown
RISING_MAINTAINER="Unknown"