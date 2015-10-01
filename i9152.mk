# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AICP stuff
$(call inherit-product, vendor/aicp/configs/common.mk)

# Bootanimation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

$(call inherit-product, vendor/aicp/configs/bootanimation.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9152/device_i9152.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9152
PRODUCT_NAME := aicp_i9152
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9152
