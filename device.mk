#
# This is the product configuration for a full edison
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/edison/overlay

PRODUCT_PACKAGES += \
    camera.edison \
    lights.edison

    # Tiler
PRODUCT_PACKAGES += \
    libtimemmgr
    
# Modem
PRODUCT_PACKAGES += \
    Stk \
    sh \
    nc 

# HotSpot
#PRODUCT_PACKAGES += \
#    tiap_loader \
#    tiap_cu \
#    hostap \
#    hostapd.conf 

# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/edison/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# copy all vendor (motorola) kernel modules to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d vendor/motorola/edison/lib/modules &&  \
	find vendor/motorola/edison/lib/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

# copy all others kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d device/motorola/edison/modules && \
	find device/motorola/edison/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/edison/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# stuff specific to ti OMAP4 hardware
#$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)

$(call inherit-product, device/motorola/edison/device_edison-blobs.mk)

$(call inherit-product, device/motorola/edison/bootmenu/bootmenu.mk)

$(call inherit-product-if-exists, device/motorola/omap4-common/common.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-pvr.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-stock-camera.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-stock-ducati.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_edison
PRODUCT_DEVICE := edison
