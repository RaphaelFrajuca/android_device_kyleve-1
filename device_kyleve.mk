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

# Inherit products
$(call inherit-product, vendor/samsung/kyleve/kyleve-common-vendor.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/kyleve/overlay

PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG :=hdpi

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/kyleve/ramdisk/fstab.hawaii_ss_kyleve:root/fstab.hawaii_ss_kyleve \
#	device/samsung/kyleve/ramdisk/init.rc:root/init.rc \
	device/samsung/kyleve/ramdisk/init.hawaii_ss_kyleve.rc:root/init.hawaii_ss_kyleve.rc \
	device/samsung/kyleve/ramdisk/init.bcm2166x.usb.rc:root/init.bcm2166x.usb.rc \
	device/samsung/kyleve/ramdisk/init.log.rc:root/init.log.rc \
#	device/samsung/kyleve/ramdisk/lpm.rc:root/lpm.rc \
	device/samsung/kyleve/ramdisk/charger:root/charger \
	device/samsung/kyleve/ramdisk/ueventd.hawaii_ss_kyleve.rc:root/ueventd.hawaii_ss_kyleve.rc
