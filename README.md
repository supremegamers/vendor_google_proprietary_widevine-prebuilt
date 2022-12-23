# Prebuilt Widevine DRM L3, pulled from WSA's vendor image

Android image fingerprint : Windows/windows_x86_64/windows_x86_64:13/TP1A.221105.002/2211.40000.10.0:user/release-keys

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
