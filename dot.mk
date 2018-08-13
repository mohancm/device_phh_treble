$(call inherit-product, vendor/dot/config/common.mk)
$(call inherit-product, device/aosp/sepolicy/common/sepolicy.mk)

$(call inherit-product, device/phh/treble/base-pre.mk)
include build/make/target/product/treble_common.mk
$(call inherit-product, vendor/vndk/vndk.mk)
$(call inherit-product, device/phh/treble/base.mk)



PRODUCT_NAME := dot_treble
PRODUCT_DEVICE := phhgsi_arm64_ab
#PRODUCT_DEVICE := phhgsi_arm64_a
PRODUCT_BRAND := Android
PRODUCT_MODEL := dot-Treble 

PRODUCT_PACKAGES += 
