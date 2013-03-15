# Inherit device configuration for ATT Atrix 2.
$(call inherit-product, device/motorola/edison/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/edison/overlay/cm

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_edison
PRODUCT_BRAND := MOTO
PRODUCT_DEVICE := edison
PRODUCT_DEVICE_PREFIX := umts
PRODUCT_MODEL := MB865
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := Motorola Atrix 2
PRODUCT_SFX := att

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \