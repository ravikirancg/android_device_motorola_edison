DEVICE_BLOB_FOLDER := device/motorola/edison/prebuilt

# Audio - use stock ICS leak files for now
PRODUCT_COPY_FILES += \
    device/motorola/edison/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/edison/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so \
    device/motorola/edison/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.omap4.so \
    device/motorola/edison/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/edison/audio/libaudio_ext.so:/system/lib/libaudio_ext.so \
    device/motorola/edison/audio/librds_util.so:/system/lib/librds_util.so \
    device/motorola/edison/audio/libril_rds.so:/system/lib/libril_rds.so
    
# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Prebuilts
PRODUCT_COPY_FILES += \
$(DEVICE_BLOB_FOLDER)/bin/battd:system/bin/battd \
$(DEVICE_BLOB_FOLDER)/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
$(DEVICE_BLOB_FOLDER)/bin/strace:system/bin/strace \
$(DEVICE_BLOB_FOLDER)/bin/finalize_release:system/bin/finalize_release \
$(DEVICE_BLOB_FOLDER)/bin/uim-sysfs:system/bin/uim-sysfs \
$(DEVICE_BLOB_FOLDER)/etc/gps.conf:system/etc/gps.conf \
$(DEVICE_BLOB_FOLDER)/etc/media_profiles.xml:system/etc/media_profiles.xml \
$(DEVICE_BLOB_FOLDER)/etc/vold.fstab:system/etc/vold.fstab \
$(DEVICE_BLOB_FOLDER)/usr/idc/evfwd.idc:system/usr/idc/evfwd.idc \
$(DEVICE_BLOB_FOLDER)/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc:system/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc \
$(DEVICE_BLOB_FOLDER)/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
$(DEVICE_BLOB_FOLDER)/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
$(DEVICE_BLOB_FOLDER)/usr/keychars/evfwd.kcm:system/usr/keychars/evfwd.kcm \
$(DEVICE_BLOB_FOLDER)/usr/keychars/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
$(DEVICE_BLOB_FOLDER)/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
$(DEVICE_BLOB_FOLDER)/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/atmxt-i2c.kl:system/usr/keylayout/atmxt-i2c.kl \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/cy8c201xx.kl:system/usr/keylayout/cy8c201xx.kl \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
$(DEVICE_BLOB_FOLDER)/usr/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \
$(DEVICE_BLOB_FOLDER)/etc/media_codecs.xml:system/etc/media_codecs.xml \
$(DEVICE_BLOB_FOLDER)/etc/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
$(DEVICE_BLOB_FOLDER)/lib/libwtnativetask.so:system/lib/libwtnativetask.so \
$(DEVICE_BLOB_FOLDER)/lib/camera.omap4.so:system/lib/hw/camera.omap4.so

PRODUCT_COPY_FILES += \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl1271-nvs.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin

# Backup Tool
PRODUCT_COPY_FILES += \
$(DEVICE_BLOB_FOLDER)/bin/backuptool.sh:system/bin/backuptool.sh \
$(DEVICE_BLOB_FOLDER)/bin/backuptool.functions:system/bin/backuptool.functions \
$(DEVICE_BLOB_FOLDER)/bin/50-backup.sh:system/addon.d/50-backup.sh

# Temporarily use prebuilt DOMX
# Prebuilts /system/lib
PRODUCT_COPY_FILES += \
$(DEVICE_BLOB_FOLDER)/lib/libdomx.so:/system/lib/libdomx.so \
$(DEVICE_BLOB_FOLDER)/lib/libmm_osal.so:/system/lib/libmm_osal.so \
$(DEVICE_BLOB_FOLDER)/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so:/system/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
$(DEVICE_BLOB_FOLDER)/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
$(DEVICE_BLOB_FOLDER)/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so \
$(DEVICE_BLOB_FOLDER)/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
$(DEVICE_BLOB_FOLDER)/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
$(DEVICE_BLOB_FOLDER)/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
$(DEVICE_BLOB_FOLDER)/lib/libOMX_Core.so:/system/lib/libOMX_Core.so

# more prebuilts (some temporary)
PRODUCT_COPY_FILES += \
$(DEVICE_BLOB_FOLDER)/bin/libthermal-manager.cfg:system/bin/libthermal-manager.cfg \
$(DEVICE_BLOB_FOLDER)/bin/thermaldaemon:system/bin/thermaldaemon \
$(DEVICE_BLOB_FOLDER)/bin/vold:system/bin/vold \
$(DEVICE_BLOB_FOLDER)/etc/firmware/ducati-m3.bin:system/etc/firmware/ducati-m3.bin \
$(DEVICE_BLOB_FOLDER)/lib/libthermal_config.so:/system/lib/libthermal_config.so \
$(DEVICE_BLOB_FOLDER)/lib/libthermal_manager.so:/system/lib/libthermal_manager.so
