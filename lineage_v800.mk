# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from v800 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := sprd
PRODUCT_DEVICE := v800
PRODUCT_MANUFACTURER := sprd
PRODUCT_NAME := lineage_v800
PRODUCT_MODEL := v800

PRODUCT_GMS_CLIENTID_BASE := android-sprd
TARGET_VENDOR := sprd
TARGET_VENDOR_PRODUCT_NAME := v800
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="v800-user 9 PPR1.180610.011 24 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Symphony/Z15/Z15:9/PPR1.180610.011/26:user/release-keys
