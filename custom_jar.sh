#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
    echo ">>> in custom_jar $jarBaseName"
    if [ -f $tempSmaliDir/smali/com/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor.smali ];then
        echo ">>> change DMAgent to DmAgent for KeyguardUpdateMonitor"
        sed -i 's/DMAgent/DmAgent/g' $tempSmaliDir/smali/com/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor.smali

        echo ">>> turn private to public for keyguardIsShowingTq"
        sed -i 's/.method private keyguardIsShowingTq()Z/.method public keyguardIsShowingTq()Z/' $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
        sed -i 's/invoke-direct\( .*Lcom\/android\/internal\/policy\/impl\/PhoneWindowManager;->keyguardIsShowingTq()Z\)/invoke-virtual\1/g' $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager.smali

        echo ">>> turn policy/impl/keyguard/MediatekGlowPadView to widget/multiwaveview/GlowPadView for KeyguardSelectorView"
        sed -i 's/policy\/impl\/keyguard\/MediatekGlowPadView/widget\/multiwaveview\/GlowPadView/g' $tempSmaliDir/smali/com/android/internal/policy/impl/keyguard/KeyguardSelectorView.smali
    fi
fi
