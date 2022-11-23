# Prebuilt Widevine DRM L3, pulled from ChromeOS's hatch recovery image

Android image fingerprint : google/hatch/hatch_cheets:11/R107-15117.112.0/9196637:user/release-keys

## How to integrate into the Android build

Clone this repo to `vendor/google/proprietary/widevine-prebuilt`

Add this to your device.mk :

```
$(call inherit-product-if-exists, vendor/google/proprietary/widevine-prebuilt/widevine.mk)
```


Optional : If you want sepolicy, add this in your BoardConfig.mk

```
BOARD_SEPOLICY_DIRS += vvendor/google/proprietary/widevine-prebuilt/sepolicy
```
