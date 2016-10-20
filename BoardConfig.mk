#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from common g3
-include device/lge/g3-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := g3,d851

# Bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/lge/d851/bluetooth/vnd_g3.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/d851/bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_PREBUILT_RECOVERY := device/lge/d851/recovery.img
# Kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_d851_defconfig
TARGET_KERNEL_CONFIG := d851_defconfig

# Kernel & ToolChains
#TARGET_KERNEL_CONFIG := cyanogenmod_d851_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-6.0
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-gnueabi-4.9/bin/arm-eabi-
# Rom ToolChains
TARGET_ROM_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.9
#TARGET_GCC_VERSION := 4.8
#TARGET_TOOLS_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-
# RR Config Flags
#TARGET_TC_ROM := SM-4.8
#TARGET_TC_KERNEL := SM-4.9
#TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216		# 16M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216		# 16M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2692743168		# 2568M Or 2.51G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27325360128	# 26059.49M or 25.45G
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/d851/rootdir/etc/fstab.g3

# NFC
BOARD_NFC_CHIPSET := pn547

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/lge/d851/BoardConfigVendor.mk
