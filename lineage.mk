#
# Copyright (C) 2017 YU Community OS Team
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

$(call inherit-product, device/blu/life_one_x2/full_life_one_x2.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := lineage_redmi_angelica
BOARD_VENDOR := xiaomi

# TODO: What is this?
#PRODUCT_GMS_CLIENTID_BASE := android-micromax

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=BLU/Life_One_X2/Life_One_X2:6.0.1/MMB29M/1477622278:user/release-keys \
    PRIVATE_BUILD_DESC="p7701-user 6.0.1 MMB29M eng.android.1477619128 release-keys"
endif

