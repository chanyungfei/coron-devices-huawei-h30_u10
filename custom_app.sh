#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
    echo ">>> in custom_app $apkBaseName"
    echo ">>> use Lcom/mediatek/notification/NotificationPlus instead of Landroid/app/NotificationPlus in Phone"
    echo ">>> use Lcom/mediatek/notification/NotificationManagerPlus instead of Landroid/app/NotificationManagerPlus in Phone"
    sed -i 's/Landroid\/app\/NotificationPlus/Lcom\/mediatek\/notification\/NotificationPlus/g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali
    sed -i 's/Landroid\/app\/NotificationManagerPlus/Lcom\/mediatek\/notification\/NotificationManagerPlus/g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali

fi

