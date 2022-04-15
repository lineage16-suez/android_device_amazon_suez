DEVICE := device/amazon/suez
KERNEL := kernel/amazon/suez
VENDOR := vendor/amazon/suez

# Platform
TARGET_BOARD_PLATFORM := mt8173

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := suez

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := suez

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_SMP := true

# Binder
TARGET_USES_64_BIT_BINDER := true

# Kernel Config
BOARD_KERNEL_BASE          := 0x40080000
BOARD_KERNEL_OFFSET        := 0x00000000
BOARD_KERNEL_TAGS_OFFSET   := 0x07f80000
BOARD_KERNEL_SECOND_OFFSET := 0x00e80000
BOARD_RAMDISK_OFFSET       := 0x03400000
BOARD_KERNEL_PAGESIZE      := 2048

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := suez_defconfig
BOARD_KERNEL_CMDLINE += bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := $(KERNEL)
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 17825792
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1692925952
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28792848384
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
BOARD_FLASH_BLOCK_SIZE := 131072

# Target user images
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE)/recovery/root/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

# Compress Ramdisk
LZMA_RAMDISK_TARGETS := recovery

# TWRP flags
TW_THEME := portrait_hdpi
TW_HACKED_BL_BUTTON := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TWRP_INCLUDE_LOGCAT := true
TW_NO_SCREEN_TIMEOUT := true
TW_DEFAULT_BRIGHTNESS := 20
TW_DEVICE_VERSION := 2
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

