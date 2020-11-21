#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/a70q/a70q-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/samsung/qcom-common/overlay \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Camera
PRODUCT_PACKAGES += \
    Snap

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# Fingerprint feature
PRODUCT_PACKAGES += \
    vendor.lineage.biometrics.fingerprint.inscreen@1.0-service.r1q

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    vendor/lineage/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:system/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service \
    android.hardware.light@2.0-impl \
    lights.qcom

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag \
    libnfc-nci \
    libnfc-nci_jni

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.rc

# RIL
PRODUCT_PACKAGES += \
    libjson \
    librmnetctl \
    libxml2 \
    libprotobuf-cpp-full \
    libtrafficcontrol-spoofer

# Sensor
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.r1q \
    android.hardware.sensors@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:system/etc/permissions/android.hardware.sensor.hifi_sensors.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Touchscreen
PRODUCT_PACKAGES += \
    libtinyxml2

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# VNDK-SP
PRODUCT_PACKAGES += \
    vndk_package

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    libwifi-hal-ctrl \
    libwifi-hal-qcom \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

