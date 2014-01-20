WIP - CM 11 Device Tree

to set up cm:
$repo init -u git://github.com/androidarmv6/android.git -b cm-11.0
$repo sync
$git clone https://github.com/CyanogenMod/android_external_srec.git -b cm-11.0
$rm external/srec/ -r
$mv android_external_srec external/srec/
$git clone https://github.com/CyanogenMod/android_hardware_libhardware.git -b cm-11.0
$mv android_hardware_libhardware hardware/libhardware/
$./vendor/cm/get-prebuilts

to get hayes build tree:
$git clone https://github.com/rbheromax/Kernel_JB.git
$mv Kernel_JB/Kernel_JB/ kernel/zte/aurora/
$git clone https://github.com/1mouse3/android_device_zte_aurora.git -b cm-11
$mv android_device_zte_aurora device/zte/aurora/
$git clone https://github.com/junkie2100/android_vendor_zte_aurora.git
$mv android_vendor_zte_aurora vendor/zte/aurora/

to build:
$. build/envsetup.sh && brunch aurora
