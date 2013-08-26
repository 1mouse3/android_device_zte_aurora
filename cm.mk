## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Force

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/aurora/device_aurora.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aurora
PRODUCT_NAME := cm_aurora
PRODUCT_BRAND := zte
PRODUCT_MODEL := N9100
PRODUCT_MANUFACTURER := zte
PRODUCT_LOCALES := zh_CN zh_TW en_US

#PRODUCT_BUILD_PROP_OVERRIDES += "PRODUCT_NAME=aurora PRODUCT_DESCRIPTION=N910-user 4.0.4 IMM76D 20121010.091516 release-keys BUILD_FINGERPRINT=ZTE/N910/aurora:4.0.4/IMM76D/20121010.091516:user/release-keys"
