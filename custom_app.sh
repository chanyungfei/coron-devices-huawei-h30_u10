#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
    echo ">>> in custom_app $apkBaseName"
    echo ">>> use Lcom/mediatek/notification/NotificationPlus instead of Landroid/app/NotificationPlus in Phone"
    echo ">>> use Lcom/mediatek/notification/NotificationManagerPlus instead of Landroid/app/NotificationManagerPlus in Phone"
    sed -i 's/Landroid\/app\/NotificationPlus/Lcom\/mediatek\/notification\/NotificationPlus/g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali
    sed -i 's/Landroid\/app\/NotificationManagerPlus/Lcom\/mediatek\/notification\/NotificationManagerPlus/g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali

elif [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
    sed -i '/com.android.settings.ManageApplicationsSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml	
# Remove the Official Verify Preference.
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	sed -i -e "/setOfficialVerifyPreference/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali	

fi

