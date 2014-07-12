# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Init files
PRODUCT_COPY_FILES += \
    device/samsung/torino/ramdisk/init.gt-s6102board.sensors.rc:root/init.gt-s6102board.sensors.rc \
    device/samsung/torino/ramdisk/init.bcm21553.rc:root/init.bcm21553.rc

# Inherit products
$(call inherit-product, device/samsung/bcm21553-common/common.mk)
$(call inherit-product, vendor/samsung/torino/vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungBCMRIL \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.call_ring=0 \
    persist.radio.multisim.config=dsds \

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/torino/overlay

# Add LDPI assets, in addition to MDPI
PRODUCT_AAPT_PREF_CONFIG := ldpi mdpi

## LDPI assets
PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

$(call inherit-product, device/ldpi-common/ldpi.mk)

