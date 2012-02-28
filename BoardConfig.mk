USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sky/a760s/BoardConfigVendor.mk

TARGET_USES_OVERLAY := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8660
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom loglevel=0
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 00002048


BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
#BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USES_ADRENO_200 := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_LEGACY_QCOM := false
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
TARGET_GRALLOC_USES_ASHMEM := true

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072
# BOARD_CUSTOM_GRAPHICS  := ../../../device/sky/a760s/recovery/graphics.c

# Audio
BOARD_USES_AUDIO_LEGACY            := true
BOARD_USES_GENERIC_AUDIO           := false
TARGET_PROVIDES_LIBAUDIO           := false
BOARD_USES_ALSA_AUDIO              := false
BOARD_WITH_ALSA_UTILS              := false

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p19
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p19
BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p20
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Wifi related defines
HAVE_CUSTOM_WIFI_DRIVER_2 := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/bcm43291.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/bcm43291_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wl/bcm43291.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_EXT_MODULE_PATH        := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME        := "librasdioif"
TARGET_HAVE_HDMI_OUT := false
TARGET_HARDWARE_3D := true
TARGET_PREBUILT_KERNEL := device/sky/a760s/kernel
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_PROVIDES_LIBRIL := vendor/sky/a760s/proprietary/libril.so
TARGET_PROVIDES_LIBAUDIO := true
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/sky/a760s/egl.cfg

COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
