.class public abstract Lcom/baidu/fm/IFMRadioService$Stub;
.super Landroid/os/Binder;
.source "IFMRadioService.java"

# interfaces
.implements Lcom/baidu/fm/IFMRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/fm/IFMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/fm/IFMRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.fm.IFMRadioService"

.field static final TRANSACTION_activeAF:I = 0xf

.field static final TRANSACTION_activeTA:I = 0x10

.field static final TRANSACTION_closeDevice:I = 0x2

.field static final TRANSACTION_deactiveTA:I = 0x11

.field static final TRANSACTION_enableAF:I = 0x18

.field static final TRANSACTION_enablePSRT:I = 0x17

.field static final TRANSACTION_enableTA:I = 0x19

.field static final TRANSACTION_getFrequency:I = 0x1d

.field static final TRANSACTION_getLRText:I = 0xe

.field static final TRANSACTION_getPS:I = 0xd

.field static final TRANSACTION_getStereoMono:I = 0x21

.field static final TRANSACTION_isAFEnabled:I = 0x1b

.field static final TRANSACTION_isDeviceOpen:I = 0x3

.field static final TRANSACTION_isEarphoneUsed:I = 0x16

.field static final TRANSACTION_isMuted:I = 0x13

.field static final TRANSACTION_isPSRTEnabled:I = 0x1a

.field static final TRANSACTION_isPowerUp:I = 0x6

.field static final TRANSACTION_isRDSSupported:I = 0x14

.field static final TRANSACTION_isTAEnabled:I = 0x1c

.field static final TRANSACTION_openDevice:I = 0x1

.field static final TRANSACTION_powerDown:I = 0x5

.field static final TRANSACTION_powerUp:I = 0x4

.field static final TRANSACTION_readCapArray:I = 0x20

.field static final TRANSACTION_readRDS:I = 0xc

.field static final TRANSACTION_readRdsBler:I = 0x23

.field static final TRANSACTION_readRssi:I = 0x1f

.field static final TRANSACTION_resumeFMAudio:I = 0x1e

.field static final TRANSACTION_seek:I = 0x8

.field static final TRANSACTION_setMute:I = 0x12

.field static final TRANSACTION_setPlayTime:I = 0x24

.field static final TRANSACTION_setRDS:I = 0xb

.field static final TRANSACTION_setStereoMono:I = 0x22

.field static final TRANSACTION_startScan:I = 0x9

.field static final TRANSACTION_stopScan:I = 0xa

.field static final TRANSACTION_tune:I = 0x7

.field static final TRANSACTION_useEarphone:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/fm/IFMRadioService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.baidu.fm.IFMRadioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/fm/IFMRadioService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/baidu/fm/IFMRadioService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/baidu/fm/IFMRadioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/fm/IFMRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->openDevice()Z

    move-result v2

    .line 49
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->closeDevice()Z

    move-result v2

    .line 57
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isDeviceOpen()Z

    move-result v2

    .line 65
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 74
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->powerUp(F)Z

    move-result v2

    .line 75
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:F
    .end local v2           #_result:Z
    :sswitch_5
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->powerDown()Z

    move-result v2

    .line 83
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isPowerUp()Z

    move-result v2

    .line 91
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 100
    .restart local v0       #_arg0:F
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->tune(F)Z

    move-result v2

    .line 101
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    .end local v0           #_arg0:F
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    .line 110
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->seek(Z)F

    move-result v2

    .line 111
    .local v2, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:F
    :cond_7
    move v0, v3

    .line 109
    goto :goto_1

    .line 117
    :sswitch_9
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->startScan()[I

    move-result-object v2

    .line 119
    .local v2, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 125
    .end local v2           #_result:[I
    :sswitch_a
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->stopScan()Z

    move-result v2

    .line 127
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v2           #_result:Z
    :sswitch_b
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v4

    .line 136
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->setRDS(Z)I

    move-result v2

    .line 137
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:I
    :cond_9
    move v0, v3

    .line 135
    goto :goto_2

    .line 143
    :sswitch_c
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->readRDS()I

    move-result v2

    .line 145
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v2           #_result:I
    :sswitch_d
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->getPS()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->getLRText()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->activeAF()I

    move-result v2

    .line 169
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v2           #_result:I
    :sswitch_10
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->activeTA()I

    move-result v2

    .line 177
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v2           #_result:I
    :sswitch_11
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->deactiveTA()I

    move-result v2

    .line 185
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v2           #_result:I
    :sswitch_12
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v4

    .line 194
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->setMute(Z)I

    move-result v2

    .line 195
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:I
    :cond_a
    move v0, v3

    .line 193
    goto :goto_3

    .line 201
    :sswitch_13
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isMuted()Z

    move-result v2

    .line 203
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 209
    .end local v2           #_result:Z
    :sswitch_14
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isRDSSupported()I

    move-result v2

    .line 211
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v2           #_result:I
    :sswitch_15
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    move v0, v4

    .line 220
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->useEarphone(Z)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_c
    move v0, v3

    .line 219
    goto :goto_4

    .line 226
    :sswitch_16
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isEarphoneUsed()Z

    move-result v2

    .line 228
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    .end local v2           #_result:Z
    :sswitch_17
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v0, v4

    .line 237
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->enablePSRT(Z)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_e
    move v0, v3

    .line 236
    goto :goto_5

    .line 243
    :sswitch_18
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    move v0, v4

    .line 246
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->enableAF(Z)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_f
    move v0, v3

    .line 245
    goto :goto_6

    .line 252
    :sswitch_19
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    move v0, v4

    .line 255
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->enableTA(Z)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_10
    move v0, v3

    .line 254
    goto :goto_7

    .line 261
    :sswitch_1a
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isPSRTEnabled()Z

    move-result v2

    .line 263
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v2, :cond_11

    move v3, v4

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 269
    .end local v2           #_result:Z
    :sswitch_1b
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isAFEnabled()Z

    move-result v2

    .line 271
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v2, :cond_12

    move v3, v4

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v2           #_result:Z
    :sswitch_1c
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->isTAEnabled()Z

    move-result v2

    .line 279
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v2, :cond_13

    move v3, v4

    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v2           #_result:Z
    :sswitch_1d
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->getFrequency()I

    move-result v2

    .line 287
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v2           #_result:I
    :sswitch_1e
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->resumeFMAudio()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 300
    :sswitch_1f
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->readRssi()I

    move-result v2

    .line 302
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 308
    .end local v2           #_result:I
    :sswitch_20
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->readCapArray()I

    move-result v2

    .line 310
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 316
    .end local v2           #_result:I
    :sswitch_21
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->getStereoMono()Z

    move-result v2

    .line 318
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v2, :cond_14

    move v3, v4

    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v2           #_result:Z
    :sswitch_22
    const-string v5, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    move v0, v4

    .line 327
    .restart local v0       #_arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/baidu/fm/IFMRadioService$Stub;->setStereoMono(Z)Z

    move-result v2

    .line 328
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v2, :cond_15

    move v3, v4

    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_16
    move v0, v3

    .line 326
    goto :goto_8

    .line 334
    :sswitch_23
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/baidu/fm/IFMRadioService$Stub;->readRdsBler()I

    move-result v2

    .line 336
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 342
    .end local v2           #_result:I
    :sswitch_24
    const-string v3, "com.baidu.fm.IFMRadioService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 345
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/baidu/fm/IFMRadioService$Stub;->setPlayTime(J)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
