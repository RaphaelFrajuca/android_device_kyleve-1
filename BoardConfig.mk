LOCAL_PATH:= $(call my-dir)

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/kyleve/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := hawaii

# Connectivity - Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI     := true
WPA_BUILD_SUPPLICANT 	    := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b1
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG

# Display
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
DEVICE_RESOLUTION := 480x800
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"


# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
  endif
endif

# Charger
BOARD_BATTERY_DEVICE_NAME := battery
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# GPU Stuff
BOARD_EGL_CFG					:= device/samsug/kyleve/configs/egl.cfg
USE_OPENGL_RENDERER				:= true
COMMON_GLOBAL_CFLAGS				+= -DMISSING_EGL_PIXEL_FORMAT_YV12 -DFORCE_EGL_CONFIG=0x2

# Recovery
TARGET_USERIMAGES_USE_EXT4			:= true
BOARD_RECOVERY_HANDLES_MOUNT			:= true
BOARD_HAS_DOWNLOAD_MODE				:= true
BOARD_BOOTIMAGE_PARTITION_SIZE			:= 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE		:= 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE		:= 907096000
BOARD_USERDATAIMAGE_PARTITION_SIZE		:= 2638217216
BOARD_FLASH_BLOCK_SIZE				:= 262144
TARGET_RECOVERY_FSTAB				:= device/samsung/kyleve/ramdisk/fstab.hawaii_ss_kyleve
TARGET_RECOVERY_PIXEL_FORMAT			:= "BGRA_8888"
BOARD_CUSTOM_RECOVERY_KEYMAPPING		:= device/samsung/kyleve/recovery/recovery_ui.c

#kernel
BOARD_KERNEL_BASE := 0x82000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_kyleve_rev00_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/kyleve
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
