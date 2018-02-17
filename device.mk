#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/c9ltechn

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/c9ltechn/c9ltechn-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9330.xml

# Boot animation
#TARGET_SCREEN_HEIGHT := 1920
#TARGET_SCREEN_WIDTH := 1080

# Device characteristics
#PRODUCT_CHARACTERISTICS := phone
#$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Device init scripts
PRODUCT_PACKAGES += \
    init.target.rc

# Radio
PRODUCT_PACKAGES += \
    librmnetctl \
    libshims_rild_socket

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Inherit from msm8976-common
$(call inherit-product, device/samsung/msm8976-common/msm8976.mk)
# call the proprietary setup
$(call inherit-product, vendor/samsung/c9ltechn/c9ltechn-vendor.mk)
