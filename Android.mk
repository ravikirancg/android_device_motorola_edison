#ifeq ($(TARGET_DEVICE),edison)
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),edison)
    include $(all-subdir-makefiles)
endif
