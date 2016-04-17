# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9152/device_i9152.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9152
PRODUCT_NAME := cm_i9152
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9152

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=craterxx \
    TARGET_DEVICE=crater \
    BUILD_FINGERPRINT="samsung/craterxx/crater:4.2.2/JDQ39/I9152XXUANA1:user/release-keys" \
    PRIVATE_BUILD_DESC="craterxx-user 4.2.2 JDQ39 I9152XXUANA1 release-keys"
