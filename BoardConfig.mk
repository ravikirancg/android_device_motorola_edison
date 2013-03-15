# inherit from common
-include device/motorola/omap4-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/edison/BoardConfigVendor.mk


# Processor
TARGET_BOOTLOADER_BOARD_NAME := edison

# Kernel
BOARD_KERNEL_CMDLINE := omap_wdt.timer_margin=60 oops=panic console=/dev/null rw mem=1023M@0x80000000 vram=10300K omapfb.vram=0:8256K,1:4K,2:2040K init=/init ip=off mmcparts=mmcblk1:p7(pds),p15(boot),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(cache),p23(preinstall),p24(webtop),p25(userdata),p26(emstorage) mot_sst=1
BOARD_KERNEL_BASE := 0x80000000
BOARD_PAGE_SIZE := 0x4096

# Kernel Build
TARGET_PREBUILT_KERNEL := device/motorola/edison/kernel

# Audio
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true

# Bootmenu
BOARD_USES_BOOTMENU := true
BOARD_WITH_CPCAP := true
TARGET_CPU_SMP := true
BOARD_BOOTMENU_NO_OVERCLOCK :=true
BOARD_BOOTMODE_CONFIG_FILE := /cache/recovery/bootmode.conf
TARGET_NEEDS_MOTOROLA_HIJACK :=true

# Recovery
BUILD_BOOTMENU_STANDALONE := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/edison/recovery-kernel
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_MKE2FS := device/motorola/edison/releaseutils/mke2fs
BOARD_NONSAFE_SYSTEM_DEVICE := /dev/block/mmcblk1p21
BOARD_HAS_SDEXT := true
BOARD_HAS_WEBTOP := true

# Sandbox Filesystem Settings
BOARD_SYSTEM_DEVICE := /dev/block/system
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime
BOARD_SYSTEM_FILESYSTEM := ext3
