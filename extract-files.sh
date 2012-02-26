#!/bin/sh

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

DEVICE=a760s

mkdir -p ../../../vendor/sky/$DEVICE/proprietary

adb pull /system/bin/btld ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/battery_charging ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/dcvs ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/dcvsd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/ip ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/usb_serial_write ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/pam_server ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/install-recovery.sh ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/skytestserver ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/mpdecision ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/skyfotaserver ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/cpmgrif ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/geomagneticd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/skypd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/screenshotd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/cnd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/port-bridge ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/qrngd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/rild ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/rmt_storage ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/skypd ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/skyfotaserver ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/bin/skytestserver ../../../vendor/sky/$DEVICE/proprietary

adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libacdbloader.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libacdbmapper.so ../../../vendor/sky/$DEVICE/proprietary

adb pull /system/lib/libOpenVG.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libC2D2.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libdl.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libmpl.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libmlplatform.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libmllite.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libOmxCore.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libOmxVdec.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libOmxVenc.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/liboverlay.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libqmiservices.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libril.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/hw/copybit.msm8660.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/hw/gps.default.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/hw/lights.msm8660.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/hw/overlay.default.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.msm8660.so ../../../vendor/sky/$DEVICE/proprietary
adb pull /system/lib/libaudcal.so ../../../vendor/sky/$DEVICE/proprietary
(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/sky/$DEVICE/$DEVICE-vendor-blobs.mk
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

# This file is generated by device/sky/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/sky/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/sky/__DEVICE__/proprietary/libacdbloader.so:obj/lib/libacdbloader.so \\
    vendor/sky/__DEVICE__/proprietary/libacdbmapper.so:obj/lib/libacdbmapper.so \\
    vendor/sky/__DEVICE__/proprietary/libril.so:obj/lib/libril.so

# All the blobs necessary for a760s
PRODUCT_COPY_FILES += \\
    vendor/sky/__DEVICE__/proprietary/btld:/system/bin/btld \\
    vendor/sky/__DEVICE__/proprietary/battery_charging:/system/bin/battery_charging \\
    vendor/sky/__DEVICE__/proprietary/dcvs:/system/bin/dcvs \\
    vendor/sky/__DEVICE__/proprietary/dcvsd:/system/bin/dcvsd \\
    vendor/sky/__DEVICE__/proprietary/ip:/system/bin/ip \\
    vendor/sky/__DEVICE__/proprietary/netmgrd:/system/bin/netmgrd \\
    vendor/sky/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/sky/__DEVICE__/proprietary/rild:/system/bin/rild \\
    vendor/sky/__DEVICE__/proprietary/mpdecision:/system/bin/mpdecision \\
    vendor/sky/__DEVICE__/proprietary/usb_serial_write:/system/bin/usb_serial_write \\
    vendor/sky/__DEVICE__/proprietary/pam_server:/system/bin/pam_server \\
    vendor/sky/__DEVICE__/proprietary/skytestserver:/system/bin/skytestserver \\
    vendor/sky/__DEVICE__/proprietary/skyfotaserver:/system/bin/skyfotaserver \\
    vendor/sky/__DEVICE__/proprietary/cpmgrif:/system/bin/cpmgrif \\
    vendor/sky/__DEVICE__/proprietary/geomagneticd:/system/bin/geomagneticd \\
    vendor/sky/__DEVICE__/proprietary/skypd:/system/bin/skypd \\
    vendor/sky/__DEVICE__/proprietary/screenshotd:/system/bin/screenshotd \\
    vendor/sky/__DEVICE__/proprietary/cnd:/system/bin/cnd \\
    vendor/sky/__DEVICE__/proprietary/port-bridge:/system/bin/port-bridge \\
    vendor/sky/__DEVICE__/proprietary/qrngd:/system/bin/qrngd \\
    vendor/sky/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/sky/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/sky/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/sky/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/sky/__DEVICE__/proprietary/libOmxVdec.so:/system/lib/libOmxVdec.so \\
    vendor/sky/__DEVICE__/proprietary/libOmxCore.so:/system/lib/libOmxCore.so \\
    vendor/sky/__DEVICE__/proprietary/libOmxVenc.so:/system/lib/libOmxVenc.so \\
    vendor/sky/__DEVICE__/proprietary/libacdbloader.so:/system/lib/libacdbloader.so \\
    vendor/sky/__DEVICE__/proprietary/libacdbmapper.so:/system/lib/libacdbmapper.so \\
    vendor/sky/__DEVICE__/proprietary/libC2D2.so:/system/lib/libC2D2.so \\
    vendor/sky/__DEVICE__/proprietary/libOpenVG.so:/system/lib/libOpenVG.so \\
    vendor/sky/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/sky/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \\
    vendor/sky/__DEVICE__/proprietary/libdl.so:/system/lib/libdl.so \\
    vendor/sky/__DEVICE__/proprietary/libdsutils.so:/system/lib/libdsutils.so \\
    vendor/sky/__DEVICE__/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \\
    vendor/sky/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/sky/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/sky/__DEVICE__/proprietary/libidl.so:/system/lib/libidl.so \\
    vendor/sky/__DEVICE__/proprietary/libril.so:/system/lib/libril.so \\
    vendor/sky/__DEVICE__/proprietary/liboverlay.so:/system/lib/liboverlay.so \\
    vendor/sky/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/sky/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/sky/__DEVICE__/proprietary/libmpl.so:/system/lib/libmpl.so \\
    vendor/sky/__DEVICE__/proprietary/libmllite.so:/system/lib/libmllite.so \\
    vendor/sky/__DEVICE__/proprietary/libmlplatform.so:/system/lib/libmlplatform.so \\
    vendor/sky/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \\
    vendor/sky/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/sky/__DEVICE__/proprietary/libqdp.so:/system/lib/libqdp.so \\
    vendor/sky/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/sky/__DEVICE__/proprietary/libaudcal.so:/system/lib/libaudcal.so \\
    vendor/sky/__DEVICE__/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \\
    vendor/sky/__DEVICE__/proprietary/copybit.msm8660.so:/system/lib/hw/copybit.msm8660.so \\
    vendor/sky/__DEVICE__/proprietary/gps.default.so:/system/lib/hw/gps.default.so \\
    vendor/sky/__DEVICE__/proprietary/lights.msm8660.so:/system/lib/hw/lights.msm8660.so \\
    vendor/sky/__DEVICE__/proprietary/overlay.default.so:/system/lib/hw/overlay.default.so \\
    vendor/sky/__DEVICE__/proprietary/sensors.msm8660.so:/system/lib/hw/sensors.msm8660.so
EOF

./setup-makefiles.sh
