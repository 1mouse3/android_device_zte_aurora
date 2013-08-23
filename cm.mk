# Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := FORCE

TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ZTE/aurora/device_aurora.mk)

# Device naming
PRODUCT_DEVICE := aurora
PRODUCT_NAME := cm_aurora
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE-N9100
PRODUCT_MANUFACTURER := ZTE

    CDMA_CARRIER_ALPHA := SPRINT
    CDMA_CARRIER_NUMERIC := 310120

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC) \

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
   # BUILD_FINGERPRINT="lge/l0_MPCS_US/l0:4.1.2/JZO54K/MS77010f.1360114527:user/release-keys" \
   # PRIVATE_BUILD_DESC="l0_MPCS_US-user 4.1.2 JZO54K MS77010f.1360114527 release-keys"
