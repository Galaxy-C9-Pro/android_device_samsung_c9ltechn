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

# inherit from common msm8976-common
-include device/samsung/msm8976-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/c9ltechn

# Includes
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := c9ltechn,c9lte

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
#BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
#TARGET_KERNEL_SOURCE := kernel/samsung/c9pro
TARGET_KERNEL_CONFIG := lineage_c9pro_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4815060992
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57151545344 # 57151565824 - 20480 (footer)
BOARD_FLASH_BLOCK_SIZE := 131072

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# RIL
BOARD_MODEM_TYPE := xmm7260
SIM_COUNT := 2

# inherit from the proprietary version
-include vendor/samsung/c9ltechn/BoardConfigVendor.mk
