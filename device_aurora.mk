#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/ZTE/aurora/overlay

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.usb.default \
    libalsa-intf \
    libaudioutils

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# LTE on CDMA
PRODUCT_PACKAGES += \
    Stk

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml


# Wifi
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/etc/firmware/wlan/prima/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/ZTE/aurora/prebuilt/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/ZTE/aurora/prebuilt/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/ZTE/aurora/prebuilt/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/ZTE/aurora/prebuilt/lib/modules/wlan.ko:system/lib/modules/wlan.ko

# Misc configs
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/etc/featureset.xml:system/etc/featureset.xml \
    device/ZTE/aurora/prebuilt/etc/settings.xml:system/etc/settings.xml \
    device/ZTE/aurora/prebuilt/etc/telephony.xml:system/etc/telephony.xml

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/etc/init.ZTE_dut.bt.sh:/system/etc/init.ZTE_dut.bt.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.ftm_module.sh:/system/etc/init.qcom.ftm_module.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.ftm_module_out.sh:/system/etc/init.qcom.ftm_module_out.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/ZTE/aurora/prebuilt/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/ZTE/aurora/prebuilt/etc/init.wlan-on-off.sh:/system/etc/init.wlan-on-off.sh

# 2nd-init
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/xbin/2nd-init:/system/xbin/2nd-init \
    device/ZTE/aurora/prebuilt/xbin/cm10.sh:/system/xbin/cm10.sh \
    device/ZTE/aurora/prebuilt/xbin/cm10.tar:/system/xbin/cm10.tar \
    device/ZTE/aurora/prebuilt/xbin/mksh2:/system/xbin/mksh2 \
    device/ZTE/aurora/prebuilt/xbin/recovery.sh:/system/xbin/recovery.sh \
    device/ZTE/aurora/prebuilt/xbin/recovery.tar:/system/xbin/recovery.tar \
    device/ZTE/aurora/prebuilt/xbin/taskset:/system/xbin/taskset

# vold config
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# apn config
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/etc/apns-conf.xml:/system/etc/apns-conf.xml

# Keylayouts and Input
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/usr/keylayout/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    device/ZTE/aurora/prebuilt/usr/keylayout/aurora-keypad.kl:system/usr/keylayout/aurora-keypad.kl \
    device/ZTE/aurora/prebuilt/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/ZTE/aurora/prebuilt/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/ZTE/aurora/prebuilt/usr/keylayout/osp3-input.kl:system/usr/keylayout/osp3-input.kl \
    device/ZTE/aurora/prebuilt/usr/idc/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    device/ZTE/aurora/prebuilt/usr/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    device/ZTE/aurora/prebuilt/usr/idc/osp3-input.idc:system/usr/idc/osp3-input.idc

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/lib/libacdbloader.so:obj/lib/libacdbloader.so \
    device/ZTE/aurora/prebuilt/lib/libv8.so:obj/lib/libv8.so

# Sensors
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/bin/atd:system/bin/atd \
    device/ZTE/aurora/prebuilt/bin/ATFWD-daemon:system/bin/ATFWD-daemon \
    device/ZTE/aurora/prebuilt/bin/sensors.qcom:system/bin/sensors.qcom \
    device/ZTE/aurora/prebuilt/bin/thermald:system/bin/thermald \
    device/ZTE/aurora/prebuilt/etc/thermald.conf:system/etc/thermald.conf \
    device/ZTE/aurora/prebuilt/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so \
    device/ZTE/aurora/prebuilt/lib/libami306.so:system/lib/libami306.so \
    device/ZTE/aurora/prebuilt/lib/libsensor_reg.so:system/lib/libsensor_reg.so \
    device/ZTE/aurora/prebuilt/lib/libsensor_test.so:system/lib/libsensor_test.so \
    device/ZTE/aurora/prebuilt/lib/libsensor_user_cal.so:system/lib/libsensor_user_cal.so \
    device/ZTE/aurora/prebuilt/lib/libsensor1.so:system/lib/libsensor1.so


# RIL
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/ZTE/aurora/prebuilt/bin/qmiproxy:system/bin/qmiproxy \
    device/ZTE/aurora/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/ZTE/aurora/prebuilt/bin/rild:system/bin/rild \
    device/ZTE/aurora/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/ZTE/aurora/prebuilt/lib/libdl.so:system/lib/libdl.so \
    device/ZTE/aurora/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/ZTE/aurora/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    device/ZTE/aurora/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/ZTE/aurora/prebuilt/lib/libqdi.so:system/lib/libqdi.so \
    device/ZTE/aurora/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
    device/ZTE/aurora/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/ZTE/aurora/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/ZTE/aurora/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/ZTE/aurora/prebuilt/lib/libril.so:system/lib/libril.so \
    device/ZTE/aurora/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/ZTE/aurora/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so


# GPS
PRODUCT_COPY_FILES += \
    device/common/gps/gps.conf_AS:system/etc/gps.conf \
    device/ZTE/aurora/prebuilt/lib/libgps.so:system/lib/libgps.so \
    device/ZTE/aurora/prebuilt/lib/libgps.utils.so:system/lib/libgps.utils.so \
    device/ZTE/aurora/prebuilt/lib/libloc_adapter.so:system/lib/libloc_adapter.so \
    device/ZTE/aurora/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/ZTE/aurora/prebuilt/lib/libloc_eng.so:system/lib/libloc_eng.so \
    device/ZTE/aurora/prebuilt/lib/libloc_ext.so:system/lib/libloc_ext.so \
    device/ZTE/aurora/prebuilt/lib/hw/gps.default.so:system/lib/hw/gps.default.so

# Graphics
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/ZTE/aurora/prebuilt/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/ZTE/aurora/prebuilt/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/ZTE/aurora/prebuilt/etc/firmware/cyttsp_8960_cdp.hex:system/etc/firmware/cyttsp_8960_cdp.hex \
    device/ZTE/aurora/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/ZTE/aurora/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/ZTE/aurora/prebuilt/etc/firmware/vidc.b00:system/etc/firmware/vidc.b00 \
    device/ZTE/aurora/prebuilt/etc/firmware/vidc.b01:system/etc/firmware/vidc.b01 \
    device/ZTE/aurora/prebuilt/etc/firmware/vidc.b02:system/etc/firmware/vidc.b02 \
    device/ZTE/aurora/prebuilt/etc/firmware/vidc.b03:system/etc/firmware/vidc.b03 \
    device/ZTE/aurora/prebuilt/etc/firmware/vidc.mdt:system/etc/firmware/vidc.mdt \
    device/ZTE/aurora/prebuilt/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/ZTE/aurora/prebuilt/etc/firmware/vidcfw.elf:system/etc/firmware/vidcfw.elf \
    device/ZTE/aurora/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/ZTE/aurora/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/ZTE/aurora/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/ZTE/aurora/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/ZTE/aurora/prebuilt/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/ZTE/aurora/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/ZTE/aurora/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/ZTE/aurora/prebuilt/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/ZTE/aurora/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/ZTE/aurora/prebuilt/lib/libOpenCL.so:system/lib/libOpenCL.so \
    device/ZTE/aurora/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/ZTE/aurora/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/ZTE/aurora/prebuilt/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so

# Audio /Sound / Media
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/ZTE/aurora/prebuilt/etc/firmware/wcd9310_anc.bin:/system/etc/firmware/wcd9310/wcd9310_anc.bin \
    device/ZTE/aurora/prebuilt/etc/firmware/wcd9310_mbhc.bin:/system/etc/firmware/wcd9310/wcd9310_mbhc.bin \
    device/ZTE/aurora/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/ZTE/aurora/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/DL_REC:system/etc/snd_soc_msm/DL_REC \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/DL_REC_2x:system/etc/snd_soc_msm/DL_REC_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/FM_A2DP_REC:system/etc/snd_soc_msm/FM_A2DP_REC \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/FM_A2DP_REC_2x:system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/FM_Digital_Radio:system/etc/snd_soc_msm/FM_Digital_Radio \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/FM_Digital_Radio_2x:system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/FM_REC:system/etc/snd_soc_msm/FM_REC \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/FM_REC_2x:system/etc/snd_soc_msm/FM_REC_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/HiFi:system/etc/snd_soc_msm/HiFi \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/HiFi_2x:system/etc/snd_soc_msm/HiFi_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/HiFi_Low_Power:system/etc/snd_soc_msm/HiFi_Low_Power \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/HiFi_Low_Power_2x:system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/HiFi_Rec:system/etc/snd_soc_msm/HiFi_Rec \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/HiFi_Rec_2x:system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/snd_soc_msm:system/etc/snd_soc_msm/snd_soc_msm \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/UL_DL_REC:system/etc/snd_soc_msm/UL_DL_REC \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/UL_DL_REC_2x:system/etc/snd_soc_msm/UL_DL_REC_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/Voice_Call:system/etc/snd_soc_msm/Voice_Call \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/Voice_Call_2x:system/etc/snd_soc_msm/Voice_Call_2x \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/Voice_Call_IP:system/etc/snd_soc_msm/Voice_Call_IP \
    device/ZTE/aurora/prebuilt/etc/snd_soc_msm/Voice_Call_IP_2x:system/etc/snd_soc_msm/Voice_Call_IP_2x \
    device/ZTE/aurora/prebuilt/etc/telephony.xml:system/etc/telephony.xml \
    device/ZTE/aurora/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/ZTE/aurora/prebuilt/lib/libacdbloader.so:obj/lib/libacdbloader.so \
    device/ZTE/aurora/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
    device/ZTE/aurora/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so

# Prebuilt libraries that are needed
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/bin/bridgemgrd:system/bin/bridgemgrd \
    device/ZTE/aurora/prebuilt/bin/btnvtool:system/bin/btnvtool \
    device/ZTE/aurora/prebuilt/bin/cnd:system/bin/cnd \
    device/ZTE/aurora/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/ZTE/aurora/prebuilt/bin/ftm_ptt:system/bin/ftm_ptt \
    device/ZTE/aurora/prebuilt/bin/gsiff_daemon:system/bin/gsiff_daemon \
    device/ZTE/aurora/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/ZTE/aurora/prebuilt/bin/hdmid:system/bin/hdmid \
    device/ZTE/aurora/prebuilt/bin/hostapd:system/bin/hostapd \
    device/ZTE/aurora/prebuilt/bin/mm-pp-daemon:system/bin/mm-pp-daemon \
    device/ZTE/aurora/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/ZTE/aurora/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/ZTE/aurora/prebuilt/bin/nl_listener:system/bin/nl_listener \
    device/ZTE/aurora/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/ZTE/aurora/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/ZTE/aurora/prebuilt/bin/quipc_igsn:system/bin/quipc_igsn \
    device/ZTE/aurora/prebuilt/bin/quipc_main:system/bin/quipc_main \
    device/ZTE/aurora/prebuilt/bin/radish:system/bin/radish \
    device/ZTE/aurora/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/ZTE/aurora/prebuilt/bin/time_daemon:system/bin/time_daemon \
    device/ZTE/aurora/prebuilt/bin/usbhub:system/bin/usbhub \
    device/ZTE/aurora/prebuilt/bin/usbhub_init:system/bin/usbhub_init \
    device/ZTE/aurora/prebuilt/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
    device/ZTE/aurora/prebuilt/lib/hw/camera.msm8960.so:system/lib/hw/camera.msm8960.so \
    device/ZTE/aurora/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/ZTE/aurora/prebuilt/lib/libgenlock.so:obj/lib/libgenlock.so \
    device/ZTE/aurora/prebuilt/lib/libgenlock.so:system/lib/libgenlock.so \
    device/ZTE/aurora/prebuilt/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx074_video_hd.so:system/lib/libchromatix_imx074_video_hd.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx074_zsl.so:system/lib/libchromatix_imx074_zsl.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx091_default_video.so:system/lib/libchromatix_imx091_default_video.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx091_preview.so:system/lib/libchromatix_imx091_preview.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx091_video_hd.so:system/lib/libchromatix_imx091_video_hd.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx111_default_video.so:system/lib/libchromatix_imx111_default_video.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx111_preview.so:system/lib/libchromatix_imx111_preview.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx111_zsl.so:system/lib/libchromatix_imx111_zsl.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx119_default_video.so:system/lib/libchromatix_imx119_default_video.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx119_preview.so:system/lib/libchromatix_imx119_preview.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_imx119_vt.so:system/lib/libchromatix_imx119_vt.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k3l1yx_default_video.so:system/lib/libchromatix_s5k3l1yx_default_video.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k3l1yx_hfr_60fps.so:system/lib/libchromatix_s5k3l1yx_hfr_60fps.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k3l1yx_hfr_90fps.so:system/lib/libchromatix_s5k3l1yx_hfr_90fps.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k3l1yx_hfr_120fps.so:system/lib/libchromatix_s5k3l1yx_hfr_120fps.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k3l1yx_preview.so:system/lib/libchromatix_s5k3l1yx_preview.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k3l1yx_video_hd.so:system/lib/libchromatix_s5k3l1yx_video_hd.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k3l1yx_zsl.so:system/lib/libchromatix_s5k3l1yx_zsl.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
    device/ZTE/aurora/prebuilt/lib/libchromatix_s5k4e1_zsl.so:system/lib/libchromatix_s5k4e1_zsl.so \
    device/ZTE/aurora/prebuilt/lib/libCommandSvc.so:system/lib/libCommandSvc.so \
    device/ZTE/aurora/prebuilt/lib/libconfigdb.so:system/lib/libconfigdb.so \
    device/ZTE/aurora/prebuilt/lib/libDivxDrm.so:system/lib/libDivxDrm.so \
    device/ZTE/aurora/prebuilt/lib/libdrmdiag.so:system/lib/libdrmdiag.so \
    device/ZTE/aurora/prebuilt/lib/libdrmfs.so:system/lib/libdrmfs.so \
    device/ZTE/aurora/prebuilt/lib/libdsprofile.so:system/lib/libdsprofile.so \
    device/ZTE/aurora/prebuilt/lib/libdss.so:system/lib/libdss.so \
    device/ZTE/aurora/prebuilt/lib/libdsucsd.so:system/lib/libdsucsd.so \
    device/ZTE/aurora/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/ZTE/aurora/prebuilt/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    device/ZTE/aurora/prebuilt/lib/libidl.so:system/lib/libidl.so \
    device/ZTE/aurora/prebuilt/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
    device/ZTE/aurora/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/ZTE/aurora/prebuilt/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/ZTE/aurora/prebuilt/lib/liblgftmitem.so:system/lib/liblgftmitem.so \
    device/ZTE/aurora/prebuilt/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
    device/ZTE/aurora/prebuilt/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/ZTE/aurora/prebuilt/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/ZTE/aurora/prebuilt/lib/libmmcamera_statsproc30.so:system/lib/libmmcamera_statsproc30.so \
    device/ZTE/aurora/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/ZTE/aurora/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/ZTE/aurora/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/ZTE/aurora/prebuilt/lib/libmmjps.so:system/lib/libmmjps.so \
    device/ZTE/aurora/prebuilt/lib/libmmmpo.so:system/lib/libmmmpo.so \
    device/ZTE/aurora/prebuilt/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/ZTE/aurora/prebuilt/lib/libmmosal.so:system/lib/libmmosal.so \
    device/ZTE/aurora/prebuilt/lib/libmmparser.so:system/lib/libmmparser.so \
    device/ZTE/aurora/prebuilt/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/ZTE/aurora/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/ZTE/aurora/prebuilt/lib/libOlaFaceDetector.so:system/lib/libOlaFaceDetector.so \
    device/ZTE/aurora/prebuilt/lib/libOlaZTECameraJNI.so:system/lib/libOlaZTECameraJNI.so \
    device/ZTE/aurora/prebuilt/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/ZTE/aurora/prebuilt/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/ZTE/aurora/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/ZTE/aurora/prebuilt/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    device/ZTE/aurora/prebuilt/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    device/ZTE/aurora/prebuilt/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    device/ZTE/aurora/prebuilt/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    device/ZTE/aurora/prebuilt/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    device/ZTE/aurora/prebuilt/lib/libtcpfinaggr.so:system/lib/libtcpfinaggr.so \
    device/ZTE/aurora/prebuilt/lib/libxml.so:system/lib/libxml.so \
    device/ZTE/aurora/prebuilt/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so

# Prebuilt libraries that are needed for DRM playback
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    device/ZTE/aurora/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    device/ZTE/aurora/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    device/ZTE/aurora/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so

# Prebuilt hack fixes
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/lib/libnetcmdiface.so:system/lib/libnetcmdiface.so \
    device/ZTE/aurora/prebuilt/xbin/su:system/xbin/su

# Lights
PRODUCT_COPY_FILES += \
    device/ZTE/aurora/prebuilt/lib/hw/lights.msm8960.so:/system/lib/hw/lights.msm8960.so \

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/ZTE/aurora/aurora-vendor.mk)

# call dalvik heap config
#$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
