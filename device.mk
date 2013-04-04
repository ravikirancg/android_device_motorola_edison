#
# This is the product configuration for a full edison
#
$(call inherit-product, device/motorola/omap4-kexec-common/common.mk)

DEVICE_FOLDER := device/motorola/edison

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

# Hardware HALs
PRODUCT_PACKAGES += \
    power.edison \
    camera.edison \
    lights.edison \
    hwcomposer.edison

# Modem
PRODUCT_PACKAGES += \
    nc \
    Stk

# Kexec rootfs files
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/init.target.rc:root/init.target.rc \
    $(DEVICE_FOLDER)/kexec/devtree:system/etc/kexec/devtree \
    $(OUT)/ramdisk.img:system/etc/kexec/ramdisk.img \
    $(OUT)/kernel:system/etc/kexec/kernel

# Prebuilts
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(DEVICE_FOLDER)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(DEVICE_FOLDER)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(DEVICE_FOLDER)/prebuilt/etc/vold.fstab:system/etc/vold.fstab

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-pvr.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-stock-camera.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-stock-ducati.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_edison
PRODUCT_DEVICE := edison
