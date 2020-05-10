#
# Copyright (C) 2016 The CyanogenMod Project
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

BOARD_VENDOR := zte

LOCAL_PATH := device/zte/tulip

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
PRODUCT_SHIPPING_API_LEVEL := 23
TARGET_CPU_CORTEX_A53 := true
MALLOC_SVELTE := true
# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk ramoops.mem_address=0x9fd00000 ramoops.mem_size=0x200000 ramoops.console_size=0x100000
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x01000000
#ENABLE_CPUSETS := true
#ENABLE_SCHEDBOOST := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/zte/msm8952
TARGET_KERNEL_CONFIG := lineage_tulip_defconfig

# ANT
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Audio
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_MULTIPLE_TUNNEL := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_RECORD_PLAY_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_READ_ADDR_FROM_PROP := true

# Camera
#TARGET_USE_VENDOR_CAMERA_EXT := true
#TARGET_TS_MAKEUP := true
TARGET_USES_MEDIA_EXTENSIONS := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
#TARGET_USES_NON_TREBLE_CAMERA := true
#TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
	/system/vendor/bin/mm-qcamera-daemon=23

# CNE
BOARD_USES_QCNE := true

# Display
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_ALLOW_LEGACY_AIDS := true
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml

# IPA
USE_DEVICE_SPECIFIC_DATA_IPA_CFG_MGR := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# NFC
BOARD_NFC_CHIPSET := pn548
BOARD_NFC_HAL_SUFFIX := msm8952

# Power
TARGET_POWERHAL_VARIANT := qcom
TARGET_HAS_NO_WIFI_STATS := true
TARGET_HAS_NO_WLAN_STATS := true
TARGET_RPM_SYSTEM_STAT := /d/rpm_stats
TARGET_HAS_NO_POWER_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
#TARGET_USE_SDCLANG := true

# Sensors
USE_SENSOR_MULTI_HAL := true


# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib/libizat_core.so|/system/vendor/lib/libshim_gps.so \
    /system/vendor/lib64/libizat_core.so|/system/vendor/lib64/libshim_gps.so \
    /system/vendor/lib64/hw/gxfingerprint.default.so|/system/vendor/lib64/libshim_atomic.so \
    /system/vendor/lib/libFNVfbEngineHAL.so|/system/vendor/lib/libshim_camera.so \
    /vendor/lib64/hw/gxfingerprint.default.so|fakelogprint.so:/vendor/lib64/hw/fingerprint.goodix.so|fakelogprint.so:/vendor/bin/gx_fpd|fakelogprint.so

# Recovery
ifneq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/recovery.fstab
endif

# TWRP
ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.twrp
TARGET_RECOVERY_DEVICE_DIRS += $(LOCAL_PATH)/twrp
TW_INCLUDE_CRYPTO := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
TW_USE_TOOLBOX := true
endif

# RIL
TARGET_RIL_VARIANT := caf

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_HAS_QCOM_WLAN         := true
BOARD_WLAN_DEVICE           := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_PROVIDES_WCNSS_QMI   := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
TARGET_USES_QCOM_WCNSS_QMI  := true
WIFI_DRIVER_FW_PATH_AP      := "ap"
WIFI_DRIVER_FW_PATH_STA     := "sta"

VENDOR_SECURITY_PATCH := 2017-09-01
TARGET_OTA_ASSERT_DEVICE := tulip
EXCLUDE_SERIF_FONTS := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25429515776

# inherit from the proprietary version
-include vendor/zte/tulip/BoardConfigVendor.mk
-include vendor/gapps/arm64/BoardConfigVendor.mk
