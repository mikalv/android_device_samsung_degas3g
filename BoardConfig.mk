# Copyright (C) 2013 The CyanogenMod Project
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

TARGET_SPECIFIC_HEADER_PATH := device/samsung/degas3g/include

# Target info
USE_CAMERA_STUB := true

# MRVL hardware
BOARD_USES_MRVL_HARDWARE := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mrvl
TARGET_BOOTLOADER_BOARD_NAME := PXA1088
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := degas

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/degas3g/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MRVL := true
MRVL_WIRELESS_DAEMON_API := true

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := true

# Flags
COMMON_GLOBAL_CFLAGS += -DMRVL_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Graphics
BOARD_USES_MRVL_HARDWARE := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/degas3g/configs/egl.cfg

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/degas3g
TARGET_KERNEL_CONFIG := pxa1088_degaswifi_usa_defconfig
BOARD_KERNEL_BASE := 0x10000000
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/degas3g/degas3g_mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/degas3g/rootdir/boot.img-dt --ramdisk_offset 0x01000000
BOARD_KERNEL_PAGESIZE := 2048
    
# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2224029696
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5230297088
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/degas3g/rootdir/fstab.pxa1088

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"

# WiFi
BOARD_WLAN_VENDOR := MRVL
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/sd8xxx.ko"
WIFI_DRIVER_MODULE_NAME	:= "sd8xxx"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/mrvl/sd8777_uapsta.bin cfg80211_wext=12 sta_name=wlan uap_name=wlan wfd_name=p2p fw_name=mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/sd8xxx/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/mlan.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "mlan"
WIFI_SDIO_IF_DRIVER_MODULE_ARG := ""
MRVL_WIRELESS_DAEMON_API := true
