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

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:system/etc/permissions/android.hardware.audio.pro.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/usb_audio_policy_configuration.xml

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

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-nci.conf:system/etc/libnfc-nci.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:system/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

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
    android.hardware.sensors@1.0-impl.r1q

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml

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

PRODUCT_TARGET_VNDK_VERSION := 29
