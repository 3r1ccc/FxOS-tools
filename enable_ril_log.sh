echo remove old omni.ja in cwd
rm -rf Omni/
rm -f omni.ja
echo get root
adb remount
echo get omni.ja
adb pull /system/b2g/omni.ja
echo unzip
unzip omni.ja -d Omni
echo turn on flag
sed -i 's/this.DEBUG_ALL = false;/this.DEBUG_ALL = true;/g' Omni/modules/ril_consts.js 
echo zip it
cd Omni
zip -r omni.ja *
echo push to phone
adb push omni.ja /system/b2g
adb reboot
cd ..
