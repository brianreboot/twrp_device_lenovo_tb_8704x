#
# Copyright 2019 The Android Open Source Project
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
#

# Release name
PRODUCT_RELEASE_NAME := TB-8704X

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TB8704X/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_8704x
PRODUCT_DEVICE := 8704x
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-8704X
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8953_64-user 8.1.0 OPM1.171019.019 1029 release-keys" \
    TARGET_DEVICE="TB-8704X"

BUILD_FINGERPRINT := Lenovo/TB-8704X/TB-8704X:8.1.0/OPM1.171019.019/8704X_S001025_190606_ROW:user/release-keys
