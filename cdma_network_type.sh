adb remount
adb pull /system/build.prop build.prop
sed -i "ro.moz.ril.0.network_types=evdo,cdma" build.prop
adb push build.prop /system/build.prop
adb shell reboot
