# Inherit device configuration for totoro
$(call inherit-product, device/samsung/kyleve/full_kyleve.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := GT-S7392
PRODUCT_VERSION_DEVICE_SPECIFIC := GT-S7392

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kyleve
PRODUCT_NAME := cm_kyleve
