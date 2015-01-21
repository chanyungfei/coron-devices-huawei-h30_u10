.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final ID_INVALID:I = 0x5

.field public static final ID_VALID:I = 0x3

.field public static final ID_VALID_BUT_NEED_AREA_CODE:I = 0x2

.field public static final ID_VALID_DOMESTIC_ONLY:I = 0x4

.field public static final ID_VALID_ECC:I = 0x1

.field public static final ID_VALID_WHEN_CALL_EXIST:I = 0x6

#the value of this static final field might be set in the static constructor
.field public static final IS_ENG_BUILD:Z = false

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MAX_RECORDING_FILE_SIZE:I = 0x19000

.field static final MIN_MATCH:I = 0x7

.field static final MIN_MATCH_CTA:I = 0xb

.field private static final MTK_CTA_SUPPORT_FLAG:Z = false

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static isAirplaneModeOn:Z

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x34

    const/16 v7, 0x33

    const/16 v6, 0x32

    const/16 v5, 0x39

    const/16 v4, 0x37

    .line 131
    const-string v1, "[\\+]?[0-9.-]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 146
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->IS_ENG_BUILD:Z

    .line 152
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "US"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "CA"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "AS"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "AI"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "AG"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "BS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "BB"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "BM"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "VG"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "KY"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "DO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "GD"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "GU"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "JM"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "PR"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "MS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "MP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KN"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "LC"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "VC"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "TT"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "TC"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "VI"

    aput-object v3, v1, v2

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2109
    const/4 v1, 0x0

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isAirplaneModeOn:Z

    .line 2233
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2235
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x61

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x62

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x42

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x44

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x45

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2241
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x47

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x48

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x49

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6a

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6b

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6c

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2245
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4a

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4c

    const/16 v3, 0x35

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2247
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6d

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6e

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6f

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4d

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4e

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4f

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x71

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x73

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x51

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x52

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x53

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2253
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x74

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x75

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x76

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2254
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x54

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x55

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x56

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x78

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x57

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x58

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x59

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2712
    const/16 v1, 0x64

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2724
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v1, v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 146
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2712
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2747
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 2572
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2574
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2582
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2579
    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2580
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    .line 1006
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1007
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1016
    :goto_0
    return v0

    .line 1008
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1016
    const/4 v0, 0x0

    goto :goto_0

    .line 1009
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1010
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1011
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 1012
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 1014
    :pswitch_4
    const/16 v0, 0x3b

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 998
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1000
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, prependPlus:Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 925
    .local v1, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    if-ge p2, v3, :cond_0

    .line 926
    const-string v3, ""

    .line 948
    :goto_0
    return-object v3

    .line 930
    :cond_0
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x90

    if-ne v3, v4, :cond_1

    .line 931
    const/4 v0, 0x1

    .line 934
    :cond_1
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-static {v1, p0, v3, v4}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 937
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 939
    const-string v3, ""

    goto :goto_0

    .line 942
    :cond_2
    if-eqz v0, :cond_3

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, ret:Ljava/lang/StringBuilder;
    move-object v1, v2

    .line 948
    .end local v2           #ret:Ljava/lang/StringBuilder;
    .restart local v1       #ret:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 2295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2296
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2298
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2299
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2300
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2301
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2307
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormat"

    .prologue
    const/4 v7, 0x1

    .line 2339
    move-object v3, p0

    .line 2342
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2346
    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    .line 2348
    const/4 v2, 0x0

    .line 2349
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 2352
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2359
    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2361
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2365
    if-nez v3, :cond_3

    .line 2366
    move-object v3, v1

    .line 2377
    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2379
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2382
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_5

    .line 2383
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2386
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2398
    .end local v0           #dialableIndex:I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object p0, v3

    .line 2406
    .end local p0
    :goto_3
    return-object p0

    .line 2368
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    .restart local p0
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2374
    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2391
    .restart local v0       #dialableIndex:I
    :cond_5
    if-gez v0, :cond_6

    .line 2392
    const-string v2, ""

    .line 2394
    :cond_6
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2403
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_7
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static charToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 1022
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1023
    add-int/lit8 v0, p0, -0x30

    .line 1034
    :goto_0
    return v0

    .line 1024
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 1025
    const/16 v0, 0xa

    goto :goto_0

    .line 1026
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 1027
    const/16 v0, 0xb

    goto :goto_0

    .line 1028
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 1029
    const/16 v0, 0xc

    goto :goto_0

    .line 1030
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 1031
    const/16 v0, 0xd

    goto :goto_0

    .line 1033
    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    .line 1034
    const/16 v0, 0xe

    goto :goto_0

    .line 1037
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v1, 0x0

    .line 2875
    const/4 v0, 0x0

    .line 2876
    .local v0, trunk_prefix_was_read:Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 2877
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2878
    if-eqz v0, :cond_0

    .line 2893
    :goto_1
    return v1

    .line 2884
    :cond_0
    const/4 v0, 0x1

    .line 2890
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2886
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2893
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 530
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 537
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "a"
    .parameter "b"

    .prologue
    .line 558
    const/4 v8, 0x0

    .line 559
    .local v8, numNonDialableCharsInA:I
    const/4 v9, 0x0

    .line 561
    .local v9, numNonDialableCharsInB:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v11, 0x1

    .line 653
    :goto_0
    return v11

    .line 561
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 564
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 567
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 568
    .local v4, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 569
    .local v5, ib:I
    const/4 v6, 0x0

    .line 571
    .local v6, matched:I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 573
    const/4 v10, 0x0

    .line 575
    .local v10, skipCmp:Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 577
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_6

    .line 578
    add-int/lit8 v4, v4, -0x1

    .line 579
    const/4 v10, 0x1

    .line 580
    add-int/lit8 v8, v8, 0x1

    .line 583
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 585
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_7

    .line 586
    add-int/lit8 v5, v5, -0x1

    .line 587
    const/4 v10, 0x1

    .line 588
    add-int/lit8 v9, v9, 0x1

    .line 591
    :cond_7
    if-nez v10, :cond_5

    .line 592
    if-eq v1, v0, :cond_9

    const/16 v11, 0x4e

    if-eq v0, v11, :cond_9

    const/16 v11, 0x4e

    if-eq v1, v11, :cond_9

    .line 600
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v10           #skipCmp:Z
    :cond_8
    const/4 v7, 0x0

    .line 604
    .local v7, minMatchLen:I
    const/4 v7, 0x7

    .line 606
    if-ge v6, v7, :cond_b

    .line 607
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v8

    .line 608
    .local v2, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v9

    .line 613
    .local v3, effectiveBLen:I
    if-ne v2, v3, :cond_a

    if-ne v2, v6, :cond_a

    .line 614
    const/4 v11, 0x1

    goto :goto_0

    .line 595
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    .end local v7           #minMatchLen:I
    .restart local v0       #ca:C
    .restart local v1       #cb:C
    .restart local v10       #skipCmp:Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 617
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v10           #skipCmp:Z
    .restart local v2       #effectiveALen:I
    .restart local v3       #effectiveBLen:I
    .restart local v7       #minMatchLen:I
    :cond_a
    const/4 v11, 0x0

    goto :goto_0

    .line 621
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_b
    if-lt v6, v7, :cond_d

    if-ltz v4, :cond_c

    if-gez v5, :cond_d

    .line 622
    :cond_c
    const/4 v11, 0x1

    goto :goto_0

    .line 635
    :cond_d
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 638
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 641
    :cond_e
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 644
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 647
    :cond_f
    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 650
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 653
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static compareNumsHw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "num1"
    .parameter "num2"

    .prologue
    const/4 v6, 0x0

    .line 3478
    const/4 v1, 0x0

    .line 3479
    .local v1, callerInfoHW:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 3482
    .local v5, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3499
    .end local v1           #callerInfoHW:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 3487
    .restart local v1       #callerInfoHW:Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-string v6, "android.telephony.CallerInfoHW"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3488
    .local v0, c:Ljava/lang/Class;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 3489
    .local v3, constructor:Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3491
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "compareNums"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3492
    .local v2, compareNums:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3493
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 3498
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #callerInfoHW:Ljava/lang/Object;
    .end local v2           #compareNums:Ljava/lang/reflect/Method;
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;
    :goto_1
    const-string v6, "PhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compareNumsHw() result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 3499
    goto :goto_0

    .line 3494
    :catch_0
    move-exception v4

    .line 3495
    .local v4, e:Ljava/lang/Exception;
    const-string v6, "PhoneNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "occur a exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 661
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 669
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 670
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 807
    :goto_0
    return v18

    .line 670
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 671
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 672
    const/16 v18, 0x0

    goto :goto_0

    .line 675
    :cond_3
    const/4 v10, 0x0

    .line 676
    .local v10, forwardIndexA:I
    const/4 v11, 0x0

    .line 678
    .local v11, forwardIndexB:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 680
    .local v6, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 682
    .local v7, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 683
    .local v5, bothHasCountryCallingCode:Z
    const/4 v13, 0x1

    .line 684
    .local v13, okToIgnorePrefix:Z
    const/16 v16, 0x0

    .line 685
    .local v16, trunkPrefixIsOmittedA:Z
    const/16 v17, 0x0

    .line 686
    .local v17, trunkPrefixIsOmittedB:Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 687
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 689
    const/16 v18, 0x0

    goto :goto_0

    .line 693
    :cond_4
    const/4 v13, 0x0

    .line 694
    const/4 v5, 0x1

    .line 695
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 696
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 722
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 723
    .local v3, backwardIndexA:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 724
    .local v4, backwardIndexB:I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 725
    const/4 v14, 0x0

    .line 726
    .local v14, skip_compare:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 727
    .local v8, chA:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 728
    .local v9, chB:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 729
    add-int/lit8 v3, v3, -0x1

    .line 730
    const/4 v14, 0x1

    .line 732
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 733
    add-int/lit8 v4, v4, -0x1

    .line 734
    const/4 v14, 0x1

    .line 737
    :cond_8
    if-nez v14, :cond_6

    .line 738
    if-eq v8, v9, :cond_e

    .line 739
    const/16 v18, 0x0

    goto :goto_0

    .line 697
    .end local v3           #backwardIndexA:I
    .end local v4           #backwardIndexB:I
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 700
    const/4 v13, 0x0

    goto :goto_1

    .line 702
    :cond_a
    if-eqz v6, :cond_c

    .line 703
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 711
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 712
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 705
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 706
    .local v15, tmp:I
    if-ltz v15, :cond_b

    .line 707
    move v10, v15

    .line 708
    const/16 v16, 0x1

    goto :goto_3

    .line 714
    .end local v15           #tmp:I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 715
    .restart local v15       #tmp:I
    if-ltz v15, :cond_5

    .line 716
    move v11, v15

    .line 717
    const/16 v17, 0x1

    goto :goto_1

    .line 741
    .end local v15           #tmp:I
    .restart local v3       #backwardIndexA:I
    .restart local v4       #backwardIndexB:I
    .restart local v8       #chA:C
    .restart local v9       #chB:C
    .restart local v14       #skip_compare:Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 742
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 746
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_f
    if-eqz v13, :cond_17

    .line 747
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 749
    :cond_11
    if-eqz p2, :cond_12

    .line 759
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 761
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 764
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 766
    :cond_15
    if-eqz p2, :cond_16

    .line 767
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 769
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 782
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 783
    .local v12, maybeNamp:Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 784
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 785
    .restart local v8       #chA:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 786
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 787
    const/4 v12, 0x0

    .line 792
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 793
    goto :goto_4

    .line 782
    .end local v8           #chA:C
    .end local v12           #maybeNamp:Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 789
    .restart local v8       #chA:C
    .restart local v12       #maybeNamp:Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 794
    .end local v8           #chA:C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 795
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 796
    .restart local v9       #chB:C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 797
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 798
    const/4 v12, 0x0

    .line 803
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 804
    goto :goto_5

    .line 800
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 807
    .end local v9           #chB:C
    .end local v12           #maybeNamp:Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 415
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 2210
    if-nez p0, :cond_1

    .line 2226
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2213
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2214
    .local v2, len:I
    if-eqz v2, :cond_0

    .line 2218
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2220
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2221
    aget-char v0, v3, v1

    .line 2223
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2226
    .end local v0           #c:C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 425
    if-nez p0, :cond_0

    .line 426
    const/4 v4, 0x0

    .line 441
    :goto_0
    return-object v4

    .line 428
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 429
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 431
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 432
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 434
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 435
    const/16 v0, 0x2c

    .line 439
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    const/16 v0, 0x3b

    goto :goto_2

    .line 441
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    const/16 v7, 0x2b

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 3101
    if-nez p0, :cond_1

    .line 3102
    const/4 p0, 0x0

    .line 3137
    .end local p0
    .local v0, m:Ljava/util/regex/Matcher;
    .local v1, p:Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object p0

    .line 3105
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .restart local p0
    :cond_1
    const-string v2, "*31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "#31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3106
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Start with *31# or #31#, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3108
    :cond_3
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3110
    const-string v2, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3111
    .restart local v1       #p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3112
    .restart local v0       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3113
    const-string v2, ""

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern1, return empty string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3117
    const-string p0, ""

    goto :goto_0

    .line 3118
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 3121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern1, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 3125
    :cond_5
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3126
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3127
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 3131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern2, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static extractGsmMmiNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/16 v8, 0x2b

    .line 2904
    if-nez p0, :cond_0

    .line 2905
    const/4 v6, 0x0

    .line 2925
    :goto_0
    return-object v6

    .line 2908
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2909
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2910
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2912
    .local v1, firstCharAdded:Z
    const/4 v5, 0x0

    .line 2914
    .local v5, starfound:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 2915
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2916
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v0, v8, :cond_1

    if-eqz v1, :cond_1

    if-ne v0, v8, :cond_3

    const/4 v6, 0x1

    if-le v2, v6, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_3

    .line 2918
    :cond_1
    const/4 v1, 0x1

    .line 2919
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2914
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2920
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2925
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "phoneNumber"

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    const/4 v6, 0x0

    .line 332
    :goto_0
    return-object v6

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 311
    .local v3, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 313
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 314
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .local v0, c:C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 317
    .local v1, digit:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 318
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 321
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, prefix:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 325
    .end local v4           #prefix:Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 326
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 327
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 332
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 345
    if-nez p0, :cond_0

    .line 346
    const/4 v5, 0x0

    .line 372
    :goto_0
    return-object v5

    .line 349
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 350
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 353
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 354
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 355
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 356
    if-eqz v1, :cond_2

    .line 353
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_2
    const/4 v1, 0x1

    .line 361
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 362
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 363
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 494
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 510
    :goto_0
    return-object v5

    .line 497
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 501
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 502
    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 504
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 505
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 506
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .parameter "postDialStr"

    .prologue
    .line 2556
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2557
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2558
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2562
    .end local v0           #c:C
    .end local v1           #index:I
    :goto_1
    return v1

    .line 2556
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2562
    .end local v0           #c:C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1410
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1411
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .parameter "text"

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1297
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1298
    .local v4, length:I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1306
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1309
    .local v9, saved:Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1310
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1315
    new-array v1, v13, [I

    .line 1316
    .local v1, dashPositions:[I
    const/4 v5, 0x0

    .line 1318
    .local v5, numDashes:I
    const/4 v10, 0x1

    .line 1319
    .local v10, state:I
    const/4 v7, 0x0

    .line 1320
    .local v7, numDigits:I
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v5

    .end local v5           #numDashes:I
    .local v6, numDashes:I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 1321
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1322
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 1366
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1324
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 1325
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1320
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 1338
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 1340
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1342
    :cond_5
    if-ne v10, v13, :cond_6

    .line 1344
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    .line 1349
    :goto_3
    const/4 v10, 0x1

    .line 1350
    add-int/lit8 v7, v7, 0x1

    .line 1351
    goto :goto_2

    .line 1345
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1347
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    goto :goto_3

    .line 1354
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1355
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1358
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_4
    if-nez v2, :cond_2

    .line 1360
    const/4 v10, 0x2

    move v5, v6

    .line 1361
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1371
    .end local v0           #c:C
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1373
    add-int/lit8 v5, v6, -0x1

    .line 1377
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 1378
    aget v8, v1, v2

    .line 1379
    .local v8, pos:I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1377
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1383
    .end local v8           #pos:I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1384
    .local v3, len:I
    :goto_6
    if-lez v3, :cond_0

    .line 1385
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1386
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1387
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3           #len:I
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_a
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_4

    .end local v5           #numDashes:I
    .restart local v0       #c:C
    .restart local v6       #numDashes:I
    :cond_b
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_3

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 1207
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1208
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1209
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1224
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1225
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1226
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1477
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, p0

    .line 1495
    :cond_1
    :goto_0
    return-object v1

    .line 1481
    :cond_2
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1482
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1484
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1485
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1489
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_1
    const-string v3, "EG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "IL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "IR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1492
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x202a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x202c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1486
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"
    .parameter "phoneNumberE164"
    .parameter "defaultCountryIso"

    .prologue
    .line 1520
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1521
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1522
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1544
    .end local p0
    :goto_1
    return-object p0

    .line 1521
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1528
    .local v5, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 1533
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1534
    .local v2, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1535
    .local v3, regionCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 1538
    move-object p2, v3

    .line 1543
    .end local v2           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3           #regionCode:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1544
    .local v4, result:Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4           #result:Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 1540
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1251
    move v0, p1

    .line 1253
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1254
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1255
    const/4 v0, 0x1

    .line 1264
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1275
    :goto_1
    return-void

    .line 1256
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1258
    const/4 v0, 0x2

    goto :goto_0

    .line 1260
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1266
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1269
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1272
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1448
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1449
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1451
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1452
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1453
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1457
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v1

    .line 1455
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2411
    const/4 v0, 0x0

    .line 2412
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2414
    const-string v0, "011"

    .line 2416
    :cond_0
    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 1237
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .parameter "country"

    .prologue
    .line 2429
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2430
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2431
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2432
    const/4 v2, 0x1

    .line 2438
    :goto_1
    return v2

    .line 2430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2435
    :cond_1
    const-string/jumbo v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2436
    const/4 v2, 0x2

    goto :goto_1

    .line 2438
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "countryIso"

    .prologue
    .line 3255
    if-nez p0, :cond_1

    .line 3256
    const-string v1, ""

    .line 3269
    :cond_0
    :goto_0
    return-object v1

    .line 3259
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 3260
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {v2, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3261
    .local v0, metadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_2

    .line 3262
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 3263
    .local v1, prefix:Ljava/lang/String;
    const-string/jumbo v3, "tw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3264
    const-string v1, "0(?:0[25679] | 16 | 17 | 19)"

    goto :goto_0

    .line 3269
    .end local v1           #prefix:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 230
    const/4 v9, 0x0

    .line 232
    .local v9, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 235
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v3

    .line 240
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "sip"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 249
    :cond_3
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    const-string/jumbo v0, "persist.radio.default_sim"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 253
    .local v12, simId:I
    const-string/jumbo v0, "simId"

    invoke-virtual {p0, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 256
    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 257
    .local v8, iTel:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v8, v12}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 258
    .end local v8           #iTel:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 263
    .end local v12           #simId:I
    :cond_4
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 268
    .local v13, type:Ljava/lang/String;
    const/4 v10, 0x0

    .line 271
    .local v10, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 273
    const-string/jumbo v10, "number"

    .line 278
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v10, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 281
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 283
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 287
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v3, v9

    .line 291
    goto :goto_0

    .line 274
    .end local v7           #c:Landroid/database/Cursor;
    :cond_8
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    const-string v10, "data1"

    goto :goto_1

    .line 287
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 843
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 847
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 2512
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2513
    .local v0, delimiterIndex:I
    if-gez v0, :cond_0

    .line 2514
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2516
    :cond_0
    if-gez v0, :cond_1

    .line 2517
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2521
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .parameter "a"

    .prologue
    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 472
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 473
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 475
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 477
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 478
    add-int/lit8 v4, v0, -0x1

    .line 480
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 954
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 958
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 960
    .local v1, c:C
    if-nez v1, :cond_1

    .line 987
    .end local v1           #c:C
    :cond_0
    return-void

    .line 963
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 972
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 974
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 979
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 980
    if-eqz v1, :cond_0

    .line 984
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 954
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 856
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 869
    :goto_0
    return-object v5

    .line 858
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 859
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 861
    .local v2, length:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    move v4, v2

    .line 862
    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 864
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 866
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 869
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 170
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    .line 3306
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 3307
    :cond_0
    const/4 v4, 0x0

    .line 3319
    :cond_1
    :goto_0
    return v4

    .line 3310
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3311
    .local v1, number:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3312
    .local v4, result:Z
    const-string v5, "cn"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3313
    const-string v3, "[1-9]{1}[0-9]{2,7}"

    .line 3314
    .local v3, patternString:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3315
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3316
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 2730
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 176
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1072
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1073
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    const/4 v2, 0x0

    .line 1077
    :goto_1
    return v2

    .line 1072
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isDomesticOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x0

    .line 3281
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v4, v5

    .line 3294
    :cond_1
    :goto_0
    return v4

    .line 3285
    :cond_2
    const/4 v4, 0x1

    .line 3286
    .local v4, result:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3287
    .local v1, number:Ljava/lang/String;
    const-string v6, "cn"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "tw"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3289
    :cond_3
    const-string v3, "[1-9]{1}[0-9]{2,5}"

    .line 3290
    .local v3, patternString:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3291
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3292
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 17
    .parameter "number"

    .prologue
    .line 1645
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_0

    .line 1646
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[isEmergencyNumber] number: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_0
    const/4 v12, 0x0

    .line 1650
    .local v12, plusNumber:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1652
    .local v10, numberPlus:Ljava/lang/String;
    if-nez p0, :cond_1

    const/4 v14, 0x0

    .line 1838
    :goto_0
    return v14

    .line 1661
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1662
    const/4 v14, 0x0

    goto :goto_0

    .line 1666
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1671
    const-string/jumbo v14, "ril.ecclist"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1673
    .local v11, numbers:Ljava/lang/String;
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_3

    .line 1674
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[isEmergencyNumber] ril.ecclist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1680
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v3, v1, v7

    .line 1681
    .local v3, emergencyNum:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1682
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1684
    :cond_4
    const-string v14, "PhoneNumberUtils"

    const-string v15, "[isEmergencyNumber] ril.ecclist: return true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/4 v14, 0x1

    goto :goto_0

    .line 1680
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1691
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #emergencyNum:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_6
    const-string/jumbo v14, "ril.ecclist2"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1693
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_7

    .line 1694
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[isEmergencyNumber] ril.ecclist2: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1700
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v8, v1

    .restart local v8       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_2
    if-ge v7, v8, :cond_a

    aget-object v3, v1, v7

    .line 1701
    .restart local v3       #emergencyNum:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1702
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1704
    :cond_8
    const-string v14, "PhoneNumberUtils"

    const-string v15, "[isEmergencyNumber] ril.ecclist2: return true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1700
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1711
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #emergencyNum:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_a
    const-string/jumbo v14, "ril.ecclist3"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1712
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 1715
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v8, v1

    .restart local v8       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v8, :cond_d

    aget-object v3, v1, v7

    .line 1716
    .restart local v3       #emergencyNum:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1717
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1719
    :cond_b
    const-string v14, "PhoneNumberUtils"

    const-string v15, "[isEmergencyNumber] ril.ecclist3: return true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1715
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1726
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #emergencyNum:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_d
    const-string/jumbo v14, "ril.ecclist4"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1727
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 1730
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v8, v1

    .restart local v8       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_4
    if-ge v7, v8, :cond_10

    aget-object v3, v1, v7

    .line 1731
    .restart local v3       #emergencyNum:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1732
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1734
    :cond_e
    const-string v14, "PhoneNumberUtils"

    const-string v15, "[isEmergencyNumber] ril.ecclist4: return true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1730
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1742
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #emergencyNum:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_10
    const-string/jumbo v14, "ro.ril.ecclist"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1744
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_11

    .line 1745
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[isEmergencyNumber] ro.ril.ecclist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_11
    const/16 v2, 0x8

    .line 1792
    .local v2, eccNo:I
    const/16 v14, 0x8

    new-array v4, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "112"

    aput-object v15, v4, v14

    const/4 v14, 0x1

    const-string v15, "911"

    aput-object v15, v4, v14

    const/4 v14, 0x2

    const-string v15, "000"

    aput-object v15, v4, v14

    const/4 v14, 0x3

    const-string v15, "08"

    aput-object v15, v4, v14

    const/4 v14, 0x4

    const-string v15, "110"

    aput-object v15, v4, v14

    const/4 v14, 0x5

    const-string v15, "118"

    aput-object v15, v4, v14

    const/4 v14, 0x6

    const-string v15, "119"

    aput-object v15, v4, v14

    const/4 v14, 0x7

    const-string v15, "999"

    aput-object v15, v4, v14

    .line 1795
    .local v4, emergencyNumList:[Ljava/lang/String;
    const/16 v14, 0xa

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "112"

    aput-object v15, v5, v14

    const/4 v14, 0x1

    const-string v15, "911"

    aput-object v15, v5, v14

    const/4 v14, 0x2

    const-string v15, "000"

    aput-object v15, v5, v14

    const/4 v14, 0x3

    const-string v15, "08"

    aput-object v15, v5, v14

    const/4 v14, 0x4

    const-string v15, "110"

    aput-object v15, v5, v14

    const/4 v14, 0x5

    const-string v15, "118"

    aput-object v15, v5, v14

    const/4 v14, 0x6

    const-string v15, "119"

    aput-object v15, v5, v14

    const/4 v14, 0x7

    const-string v15, "999"

    aput-object v15, v5, v14

    const/16 v14, 0x8

    const-string v15, "120"

    aput-object v15, v5, v14

    const/16 v14, 0x9

    const-string v15, "122"

    aput-object v15, v5, v14

    .line 1796
    .local v5, emergencyNumList_CTA:[Ljava/lang/String;
    array-length v2, v5

    .line 1797
    move-object v4, v5

    .line 1800
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    if-ge v6, v2, :cond_14

    .line 1801
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v4, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1802
    aget-object v14, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1804
    :cond_12
    const-string v14, "PhoneNumberUtils"

    const-string v15, "[isEmergencyNumber] no ecclist: return true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1800
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1810
    :cond_14
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->isSimInsert()Z

    move-result v13

    .line 1811
    .local v13, simInsert:Z
    if-eqz v13, :cond_16

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    move-object/from16 v0, p0

    invoke-interface {v14, v0, v12, v10}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isCustomizedEmergencyNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_15

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1814
    :cond_15
    const-string v14, "PhoneNumberUtils"

    const-string/jumbo v15, "it\'s a emergency call with card"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1820
    :cond_16
    if-nez v13, :cond_19

    .line 1821
    const/4 v14, 0x6

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "000"

    aput-object v15, v9, v14

    const/4 v14, 0x1

    const-string v15, "08"

    aput-object v15, v9, v14

    const/4 v14, 0x2

    const-string v15, "110"

    aput-object v15, v9, v14

    const/4 v14, 0x3

    const-string v15, "118"

    aput-object v15, v9, v14

    const/4 v14, 0x4

    const-string v15, "119"

    aput-object v15, v9, v14

    const/4 v14, 0x5

    const-string v15, "999"

    aput-object v15, v9, v14

    .line 1822
    .local v9, nocardemergencyNumList:[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_6
    array-length v14, v9

    if-ge v6, v14, :cond_19

    .line 1823
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v9, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1824
    aget-object v14, v9, v6

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 1826
    :cond_17
    const-string v14, "PhoneNumberUtils"

    const-string v15, "[isEmergencyNumber] no ecclist: return true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1822
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1832
    .end local v9           #nocardemergencyNumList:[Ljava/lang/String;
    :cond_19
    if-nez v13, :cond_1a

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    move-object/from16 v0, p0

    invoke-interface {v14, v0, v12, v10}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isCustomizedEmergencyNumberExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1833
    const-string v14, "PhoneNumberUtils"

    const-string/jumbo v15, "it\'s a emergency call without card"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1838
    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 1940
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "useExactMatch"

    .prologue
    .line 1991
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "useExactMatch"

    .prologue
    .line 1925
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1063
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    const/4 v1, 0x0

    .line 1068
    :goto_0
    return v1

    .line 1067
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1068
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 164
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIdleSsString(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialString"

    .prologue
    const/4 v11, 0x2

    .line 3044
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isIdleSsString(): dialString = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3046
    .local v4, newDialString:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3048
    .local v3, networkPortion:Ljava/lang/String;
    const-string v8, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 3051
    .local v6, sPatternSuppService:Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 3053
    .local v5, ret:Z
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3055
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3056
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 3057
    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 3058
    .local v7, sc:Ljava/lang/String;
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 3059
    .local v1, dialNumber:Ljava/lang/String;
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dialNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    if-eqz v7, :cond_2

    const-string v8, "31"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    const-string v8, "*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 3061
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is temporary CLIR"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #dialNumber:Ljava/lang/String;
    .end local v7           #sc:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isIdleSsString: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    return v5

    .line 3063
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #dialNumber:Ljava/lang/String;
    .restart local v7       #sc:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 3065
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #dialNumber:Ljava/lang/String;
    .end local v7           #sc:Ljava/lang/String;
    :cond_3
    const-string v8, "#"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3066
    const/4 v5, 0x1

    goto :goto_0

    .line 3067
    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v11, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-eq v8, v9, :cond_1

    :cond_5
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "00"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3069
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isIncallSsString(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 3078
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 2075
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 8
    .parameter "number"
    .parameter "context"
    .parameter "useExactMatch"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2133
    const-string v5, "country_detector"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2136
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2137
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, countryIso:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_1
    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAirplaneModeOn:Z

    .line 2148
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2139
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2140
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2141
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #locale:Ljava/util/Locale;
    :cond_1
    move v3, v4

    .line 2145
    goto :goto_1
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 2446
    const/4 v2, 0x0

    .line 2447
    .local v2, retVal:Z
    if-eqz p0, :cond_2

    .line 2448
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2449
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2451
    const/4 v2, 0x1

    .line 2452
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2453
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2454
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2455
    const/4 v2, 0x0

    .line 2464
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 2452
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2462
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    const-string/jumbo v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 189
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isPauseOrWait(C)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x30

    if-lt p0, v1, :cond_2

    const/16 v1, 0x39

    if-le p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1081
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1082
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1083
    const/4 v2, 0x0

    .line 1086
    :goto_1
    return v2

    .line 1081
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1086
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 2471
    const/4 v1, 0x0

    .line 2472
    .local v1, retVal:Z
    if-eqz p0, :cond_1

    .line 2473
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2474
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2475
    const/4 v1, 0x1

    .line 2480
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2478
    :cond_1
    const-string/jumbo v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 207
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 1901
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 1967
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 2103
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 182
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 218
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimInsert()Z
    .locals 6

    .prologue
    .line 1860
    const/4 v1, 0x0

    .line 1861
    .local v1, isInsertSIM1:Z
    const/4 v2, 0x0

    .line 1862
    .local v2, isInsertSIM2:Z
    const/4 v0, 0x0

    .line 1864
    .local v0, isInsertSIM:Z
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSimInsertedBySlot(I)Z

    move-result v1

    .line 1865
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSimInsertedBySlot(I)Z

    move-result v2

    .line 1866
    or-int v0, v1, v2

    .line 1867
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInsertSIM1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInsertSIM2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return v0
.end method

.method public static isSimInsertedBySlot(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 1845
    const/4 v2, 0x0

    .line 1846
    .local v2, simInserted:Z
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1847
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1849
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1856
    :cond_0
    :goto_0
    return v2

    .line 1850
    :catch_0
    move-exception v0

    .line 1851
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1852
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 9
    .parameter "dialString"

    .prologue
    const/4 v6, 0x1

    .line 3086
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "120"

    aput-object v8, v1, v7

    const-string v7, "122"

    aput-object v7, v1, v6

    .line 3087
    .local v1, emergencyCTAList:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 3088
    .local v5, numberPlus:Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 3089
    .local v2, emergencyNum:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3090
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3092
    :cond_0
    const-string v7, "PhoneNumberUtils"

    const-string v8, "[isSpecialEmergencyNumber] CTA list: return true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    .end local v2           #emergencyNum:Ljava/lang/String;
    :goto_1
    return v6

    .line 3088
    .restart local v2       #emergencyNum:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3097
    .end local v2           #emergencyNum:Ljava/lang/String;
    :cond_2
    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v6, p0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    goto :goto_1
.end method

.method private static isSpecialMmiNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 3412
    const-string v2, "[0-5]{1}|[1-2]{1}[1-9]{1}"

    .line 3415
    .local v2, patternString:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3416
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3417
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 202
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 212
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2420
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2421
    const/4 v0, 0x1

    .line 2423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2496
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidNationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 3330
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v6, v7

    .line 3401
    :cond_1
    :goto_0
    return v6

    .line 3334
    :cond_2
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isValidNationalNumber]countryIso: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", phonenumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    const-string v8, "0"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3339
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isValidNationalNumber] cut \'0\' - phonenumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_3
    const/4 v6, 0x0

    .line 3343
    .local v6, result:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3347
    .local v4, number:Ljava/lang/String;
    const/16 v8, 0x153

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "10"

    aput-object v8, v0, v7

    const-string v8, "21"

    aput-object v8, v0, v11

    const/4 v8, 0x2

    const-string v9, "22"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "23"

    aput-object v9, v0, v8

    const/4 v8, 0x4

    const-string v9, "24"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    const-string v9, "25"

    aput-object v9, v0, v8

    const/4 v8, 0x6

    const-string v9, "26"

    aput-object v9, v0, v8

    const/4 v8, 0x7

    const-string v9, "27"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    const-string v9, "28"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    const-string v9, "29"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    const-string v9, "20"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "311"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    const-string v9, "312"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    const-string v9, "313"

    aput-object v9, v0, v8

    const/16 v8, 0xe

    const-string v9, "314"

    aput-object v9, v0, v8

    const/16 v8, 0xf

    const-string v9, "315"

    aput-object v9, v0, v8

    const/16 v8, 0x10

    const-string v9, "316"

    aput-object v9, v0, v8

    const/16 v8, 0x11

    const-string v9, "317"

    aput-object v9, v0, v8

    const/16 v8, 0x12

    const-string v9, "318"

    aput-object v9, v0, v8

    const/16 v8, 0x13

    const-string v9, "319"

    aput-object v9, v0, v8

    const/16 v8, 0x14

    const-string v9, "310"

    aput-object v9, v0, v8

    const/16 v8, 0x15

    const-string v9, "335"

    aput-object v9, v0, v8

    const/16 v8, 0x16

    const-string v9, "349"

    aput-object v9, v0, v8

    const/16 v8, 0x17

    const-string v9, "351"

    aput-object v9, v0, v8

    const/16 v8, 0x18

    const-string v9, "352"

    aput-object v9, v0, v8

    const/16 v8, 0x19

    const-string v9, "353"

    aput-object v9, v0, v8

    const/16 v8, 0x1a

    const-string v9, "354"

    aput-object v9, v0, v8

    const/16 v8, 0x1b

    const-string v9, "355"

    aput-object v9, v0, v8

    const/16 v8, 0x1c

    const-string v9, "356"

    aput-object v9, v0, v8

    const/16 v8, 0x1d

    const-string v9, "357"

    aput-object v9, v0, v8

    const/16 v8, 0x1e

    const-string v9, "358"

    aput-object v9, v0, v8

    const/16 v8, 0x1f

    const-string v9, "350"

    aput-object v9, v0, v8

    const/16 v8, 0x20

    const-string v9, "371"

    aput-object v9, v0, v8

    const/16 v8, 0x21

    const-string v9, "372"

    aput-object v9, v0, v8

    const/16 v8, 0x22

    const-string v9, "373"

    aput-object v9, v0, v8

    const/16 v8, 0x23

    const-string v9, "374"

    aput-object v9, v0, v8

    const/16 v8, 0x24

    const-string v9, "375"

    aput-object v9, v0, v8

    const/16 v8, 0x25

    const-string v9, "376"

    aput-object v9, v0, v8

    const/16 v8, 0x26

    const-string v9, "377"

    aput-object v9, v0, v8

    const/16 v8, 0x27

    const-string v9, "378"

    aput-object v9, v0, v8

    const/16 v8, 0x28

    const-string v9, "379"

    aput-object v9, v0, v8

    const/16 v8, 0x29

    const-string v9, "370"

    aput-object v9, v0, v8

    const/16 v8, 0x2a

    const-string v9, "391"

    aput-object v9, v0, v8

    const/16 v8, 0x2b

    const-string v9, "392"

    aput-object v9, v0, v8

    const/16 v8, 0x2c

    const-string v9, "393"

    aput-object v9, v0, v8

    const/16 v8, 0x2d

    const-string v9, "394"

    aput-object v9, v0, v8

    const/16 v8, 0x2e

    const-string v9, "395"

    aput-object v9, v0, v8

    const/16 v8, 0x2f

    const-string v9, "396"

    aput-object v9, v0, v8

    const-string v8, "397"

    aput-object v8, v0, v12

    const/16 v8, 0x31

    const-string v9, "398"

    aput-object v9, v0, v8

    const/16 v8, 0x32

    const-string v9, "411"

    aput-object v9, v0, v8

    const/16 v8, 0x33

    const-string v9, "412"

    aput-object v9, v0, v8

    const/16 v8, 0x34

    const-string v9, "414"

    aput-object v9, v0, v8

    const/16 v8, 0x35

    const-string v9, "415"

    aput-object v9, v0, v8

    const/16 v8, 0x36

    const-string v9, "416"

    aput-object v9, v0, v8

    const/16 v8, 0x37

    const-string v9, "417"

    aput-object v9, v0, v8

    const/16 v8, 0x38

    const-string v9, "418"

    aput-object v9, v0, v8

    const/16 v8, 0x39

    const-string v9, "419"

    aput-object v9, v0, v8

    const/16 v8, 0x3a

    const-string v9, "421"

    aput-object v9, v0, v8

    const/16 v8, 0x3b

    const-string v9, "427"

    aput-object v9, v0, v8

    const/16 v8, 0x3c

    const-string v9, "429"

    aput-object v9, v0, v8

    const/16 v8, 0x3d

    const-string v9, "431"

    aput-object v9, v0, v8

    const/16 v8, 0x3e

    const-string v9, "432"

    aput-object v9, v0, v8

    const/16 v8, 0x3f

    const-string v9, "433"

    aput-object v9, v0, v8

    const/16 v8, 0x40

    const-string v9, "434"

    aput-object v9, v0, v8

    const/16 v8, 0x41

    const-string v9, "435"

    aput-object v9, v0, v8

    const/16 v8, 0x42

    const-string v9, "436"

    aput-object v9, v0, v8

    const/16 v8, 0x43

    const-string v9, "437"

    aput-object v9, v0, v8

    const/16 v8, 0x44

    const-string v9, "438"

    aput-object v9, v0, v8

    const/16 v8, 0x45

    const-string v9, "439"

    aput-object v9, v0, v8

    const/16 v8, 0x46

    const-string v9, "451"

    aput-object v9, v0, v8

    const/16 v8, 0x47

    const-string v9, "452"

    aput-object v9, v0, v8

    const/16 v8, 0x48

    const-string v9, "453"

    aput-object v9, v0, v8

    const/16 v8, 0x49

    const-string v9, "454"

    aput-object v9, v0, v8

    const/16 v8, 0x4a

    const-string v9, "455"

    aput-object v9, v0, v8

    const/16 v8, 0x4b

    const-string v9, "456"

    aput-object v9, v0, v8

    const/16 v8, 0x4c

    const-string v9, "457"

    aput-object v9, v0, v8

    const/16 v8, 0x4d

    const-string v9, "458"

    aput-object v9, v0, v8

    const/16 v8, 0x4e

    const-string v9, "459"

    aput-object v9, v0, v8

    const/16 v8, 0x4f

    const-string v9, "464"

    aput-object v9, v0, v8

    const/16 v8, 0x50

    const-string v9, "467"

    aput-object v9, v0, v8

    const/16 v8, 0x51

    const-string v9, "468"

    aput-object v9, v0, v8

    const/16 v8, 0x52

    const-string v9, "469"

    aput-object v9, v0, v8

    const/16 v8, 0x53

    const-string v9, "471"

    aput-object v9, v0, v8

    const/16 v8, 0x54

    const-string v9, "472"

    aput-object v9, v0, v8

    const/16 v8, 0x55

    const-string v9, "473"

    aput-object v9, v0, v8

    const/16 v8, 0x56

    const-string v9, "474"

    aput-object v9, v0, v8

    const/16 v8, 0x57

    const-string v9, "475"

    aput-object v9, v0, v8

    const/16 v8, 0x58

    const-string v9, "476"

    aput-object v9, v0, v8

    const/16 v8, 0x59

    const-string v9, "477"

    aput-object v9, v0, v8

    const/16 v8, 0x5a

    const-string v9, "478"

    aput-object v9, v0, v8

    const/16 v8, 0x5b

    const-string v9, "479"

    aput-object v9, v0, v8

    const/16 v8, 0x5c

    const-string v9, "470"

    aput-object v9, v0, v8

    const/16 v8, 0x5d

    const-string v9, "482"

    aput-object v9, v0, v8

    const/16 v8, 0x5e

    const-string v9, "483"

    aput-object v9, v0, v8

    const/16 v8, 0x5f

    const-string v9, "511"

    aput-object v9, v0, v8

    const/16 v8, 0x60

    const-string v9, "512"

    aput-object v9, v0, v8

    const/16 v8, 0x61

    const-string v9, "513"

    aput-object v9, v0, v8

    const/16 v8, 0x62

    const-string v9, "514"

    aput-object v9, v0, v8

    const/16 v8, 0x63

    const-string v9, "515"

    aput-object v9, v0, v8

    const/16 v8, 0x64

    const-string v9, "516"

    aput-object v9, v0, v8

    const/16 v8, 0x65

    const-string v9, "517"

    aput-object v9, v0, v8

    const/16 v8, 0x66

    const-string v9, "518"

    aput-object v9, v0, v8

    const/16 v8, 0x67

    const-string v9, "519"

    aput-object v9, v0, v8

    const/16 v8, 0x68

    const-string v9, "510"

    aput-object v9, v0, v8

    const/16 v8, 0x69

    const-string v9, "523"

    aput-object v9, v0, v8

    const/16 v8, 0x6a

    const-string v9, "527"

    aput-object v9, v0, v8

    const/16 v8, 0x6b

    const-string v9, "531"

    aput-object v9, v0, v8

    const/16 v8, 0x6c

    const-string v9, "532"

    aput-object v9, v0, v8

    const/16 v8, 0x6d

    const-string v9, "533"

    aput-object v9, v0, v8

    const/16 v8, 0x6e

    const-string v9, "534"

    aput-object v9, v0, v8

    const/16 v8, 0x6f

    const-string v9, "535"

    aput-object v9, v0, v8

    const/16 v8, 0x70

    const-string v9, "536"

    aput-object v9, v0, v8

    const/16 v8, 0x71

    const-string v9, "537"

    aput-object v9, v0, v8

    const/16 v8, 0x72

    const-string v9, "538"

    aput-object v9, v0, v8

    const/16 v8, 0x73

    const-string v9, "539"

    aput-object v9, v0, v8

    const/16 v8, 0x74

    const-string v9, "530"

    aput-object v9, v0, v8

    const/16 v8, 0x75

    const-string v9, "543"

    aput-object v9, v0, v8

    const/16 v8, 0x76

    const-string v9, "546"

    aput-object v9, v0, v8

    const/16 v8, 0x77

    const-string v9, "631"

    aput-object v9, v0, v8

    const/16 v8, 0x78

    const-string v9, "632"

    aput-object v9, v0, v8

    const/16 v8, 0x79

    const-string v9, "633"

    aput-object v9, v0, v8

    const/16 v8, 0x7a

    const-string v9, "634"

    aput-object v9, v0, v8

    const/16 v8, 0x7b

    const-string v9, "635"

    aput-object v9, v0, v8

    const/16 v8, 0x7c

    const-string v9, "551"

    aput-object v9, v0, v8

    const/16 v8, 0x7d

    const-string v9, "552"

    aput-object v9, v0, v8

    const/16 v8, 0x7e

    const-string v9, "553"

    aput-object v9, v0, v8

    const/16 v8, 0x7f

    const-string v9, "554"

    aput-object v9, v0, v8

    const/16 v8, 0x80

    const-string v9, "555"

    aput-object v9, v0, v8

    const/16 v8, 0x81

    const-string v9, "555"

    aput-object v9, v0, v8

    const/16 v8, 0x82

    const-string v9, "556"

    aput-object v9, v0, v8

    const/16 v8, 0x83

    const-string v9, "557"

    aput-object v9, v0, v8

    const/16 v8, 0x84

    const-string v9, "558"

    aput-object v9, v0, v8

    const/16 v8, 0x85

    const-string v9, "559"

    aput-object v9, v0, v8

    const/16 v8, 0x86

    const-string v9, "561"

    aput-object v9, v0, v8

    const/16 v8, 0x87

    const-string v9, "562"

    aput-object v9, v0, v8

    const/16 v8, 0x88

    const-string v9, "563"

    aput-object v9, v0, v8

    const/16 v8, 0x89

    const-string v9, "564"

    aput-object v9, v0, v8

    const/16 v8, 0x8a

    const-string v9, "565"

    aput-object v9, v0, v8

    const/16 v8, 0x8b

    const-string v9, "566"

    aput-object v9, v0, v8

    const/16 v8, 0x8c

    const-string v9, "571"

    aput-object v9, v0, v8

    const/16 v8, 0x8d

    const-string v9, "572"

    aput-object v9, v0, v8

    const/16 v8, 0x8e

    const-string v9, "573"

    aput-object v9, v0, v8

    const/16 v8, 0x8f

    const-string v9, "574"

    aput-object v9, v0, v8

    const/16 v8, 0x90

    const-string v9, "575"

    aput-object v9, v0, v8

    const/16 v8, 0x91

    const-string v9, "576"

    aput-object v9, v0, v8

    const/16 v8, 0x92

    const-string v9, "577"

    aput-object v9, v0, v8

    const/16 v8, 0x93

    const-string v9, "578"

    aput-object v9, v0, v8

    const/16 v8, 0x94

    const-string v9, "579"

    aput-object v9, v0, v8

    const/16 v8, 0x95

    const-string v9, "570"

    aput-object v9, v0, v8

    const/16 v8, 0x96

    const-string v9, "580"

    aput-object v9, v0, v8

    const/16 v8, 0x97

    const-string v9, "591"

    aput-object v9, v0, v8

    const/16 v8, 0x98

    const-string v9, "592"

    aput-object v9, v0, v8

    const/16 v8, 0x99

    const-string v9, "593"

    aput-object v9, v0, v8

    const/16 v8, 0x9a

    const-string v9, "594"

    aput-object v9, v0, v8

    const/16 v8, 0x9b

    const-string v9, "595"

    aput-object v9, v0, v8

    const/16 v8, 0x9c

    const-string v9, "596"

    aput-object v9, v0, v8

    const/16 v8, 0x9d

    const-string v9, "597"

    aput-object v9, v0, v8

    const/16 v8, 0x9e

    const-string v9, "598"

    aput-object v9, v0, v8

    const/16 v8, 0x9f

    const-string v9, "599"

    aput-object v9, v0, v8

    const/16 v8, 0xa0

    const-string v9, "631"

    aput-object v9, v0, v8

    const/16 v8, 0xa1

    const-string v9, "632"

    aput-object v9, v0, v8

    const/16 v8, 0xa2

    const-string v9, "633"

    aput-object v9, v0, v8

    const/16 v8, 0xa3

    const-string v9, "634"

    aput-object v9, v0, v8

    const/16 v8, 0xa4

    const-string v9, "635"

    aput-object v9, v0, v8

    const/16 v8, 0xa5

    const-string v9, "660"

    aput-object v9, v0, v8

    const/16 v8, 0xa6

    const-string v9, "662"

    aput-object v9, v0, v8

    const/16 v8, 0xa7

    const-string v9, "663"

    aput-object v9, v0, v8

    const/16 v8, 0xa8

    const-string v9, "668"

    aput-object v9, v0, v8

    const/16 v8, 0xa9

    const-string v9, "691"

    aput-object v9, v0, v8

    const/16 v8, 0xaa

    const-string v9, "692"

    aput-object v9, v0, v8

    const/16 v8, 0xab

    const-string v9, "711"

    aput-object v9, v0, v8

    const/16 v8, 0xac

    const-string v9, "712"

    aput-object v9, v0, v8

    const/16 v8, 0xad

    const-string v9, "713"

    aput-object v9, v0, v8

    const/16 v8, 0xae

    const-string v9, "714"

    aput-object v9, v0, v8

    const/16 v8, 0xaf

    const-string v9, "715"

    aput-object v9, v0, v8

    const/16 v8, 0xb0

    const-string v9, "716"

    aput-object v9, v0, v8

    const/16 v8, 0xb1

    const-string v9, "717"

    aput-object v9, v0, v8

    const/16 v8, 0xb2

    const-string v9, "718"

    aput-object v9, v0, v8

    const/16 v8, 0xb3

    const-string v9, "719"

    aput-object v9, v0, v8

    const/16 v8, 0xb4

    const-string v9, "710"

    aput-object v9, v0, v8

    const/16 v8, 0xb5

    const-string v9, "722"

    aput-object v9, v0, v8

    const/16 v8, 0xb6

    const-string v9, "724"

    aput-object v9, v0, v8

    const/16 v8, 0xb7

    const-string v9, "728"

    aput-object v9, v0, v8

    const/16 v8, 0xb8

    const-string v9, "731"

    aput-object v9, v0, v8

    const/16 v8, 0xb9

    const-string v9, "734"

    aput-object v9, v0, v8

    const/16 v8, 0xba

    const-string v9, "735"

    aput-object v9, v0, v8

    const/16 v8, 0xbb

    const-string v9, "736"

    aput-object v9, v0, v8

    const/16 v8, 0xbc

    const-string v9, "737"

    aput-object v9, v0, v8

    const/16 v8, 0xbd

    const-string v9, "738"

    aput-object v9, v0, v8

    const/16 v8, 0xbe

    const-string v9, "739"

    aput-object v9, v0, v8

    const/16 v8, 0xbf

    const-string v9, "730"

    aput-object v9, v0, v8

    const/16 v8, 0xc0

    const-string v9, "743"

    aput-object v9, v0, v8

    const/16 v8, 0xc1

    const-string v9, "744"

    aput-object v9, v0, v8

    const/16 v8, 0xc2

    const-string v9, "745"

    aput-object v9, v0, v8

    const/16 v8, 0xc3

    const-string v9, "746"

    aput-object v9, v0, v8

    const/16 v8, 0xc4

    const-string v9, "750"

    aput-object v9, v0, v8

    const/16 v8, 0xc5

    const-string v9, "751"

    aput-object v9, v0, v8

    const/16 v8, 0xc6

    const-string v9, "752"

    aput-object v9, v0, v8

    const/16 v8, 0xc7

    const-string v9, "753"

    aput-object v9, v0, v8

    const/16 v8, 0xc8

    const-string v9, "754"

    aput-object v9, v0, v8

    const/16 v8, 0xc9

    const-string v9, "755"

    aput-object v9, v0, v8

    const/16 v8, 0xca

    const-string v9, "756"

    aput-object v9, v0, v8

    const/16 v8, 0xcb

    const-string v9, "757"

    aput-object v9, v0, v8

    const/16 v8, 0xcc

    const-string v9, "758"

    aput-object v9, v0, v8

    const/16 v8, 0xcd

    const-string v9, "759"

    aput-object v9, v0, v8

    const/16 v8, 0xce

    const-string v9, "760"

    aput-object v9, v0, v8

    const/16 v8, 0xcf

    const-string v9, "762"

    aput-object v9, v0, v8

    const/16 v8, 0xd0

    const-string v9, "763"

    aput-object v9, v0, v8

    const/16 v8, 0xd1

    const-string v9, "766"

    aput-object v9, v0, v8

    const/16 v8, 0xd2

    const-string v9, "768"

    aput-object v9, v0, v8

    const/16 v8, 0xd3

    const-string v9, "769"

    aput-object v9, v0, v8

    const/16 v8, 0xd4

    const-string v9, "660"

    aput-object v9, v0, v8

    const/16 v8, 0xd5

    const-string v9, "662"

    aput-object v9, v0, v8

    const/16 v8, 0xd6

    const-string v9, "663"

    aput-object v9, v0, v8

    const/16 v8, 0xd7

    const-string v9, "668"

    aput-object v9, v0, v8

    const/16 v8, 0xd8

    const-string v9, "771"

    aput-object v9, v0, v8

    const/16 v8, 0xd9

    const-string v9, "772"

    aput-object v9, v0, v8

    const/16 v8, 0xda

    const-string v9, "773"

    aput-object v9, v0, v8

    const/16 v8, 0xdb

    const-string v9, "774"

    aput-object v9, v0, v8

    const/16 v8, 0xdc

    const-string v9, "775"

    aput-object v9, v0, v8

    const/16 v8, 0xdd

    const-string v9, "776"

    aput-object v9, v0, v8

    const/16 v8, 0xde

    const-string v9, "777"

    aput-object v9, v0, v8

    const/16 v8, 0xdf

    const-string v9, "778"

    aput-object v9, v0, v8

    const/16 v8, 0xe0

    const-string v9, "779"

    aput-object v9, v0, v8

    const/16 v8, 0xe1

    const-string v9, "770"

    aput-object v9, v0, v8

    const/16 v8, 0xe2

    const-string v9, "791"

    aput-object v9, v0, v8

    const/16 v8, 0xe3

    const-string v9, "792"

    aput-object v9, v0, v8

    const/16 v8, 0xe4

    const-string v9, "793"

    aput-object v9, v0, v8

    const/16 v8, 0xe5

    const-string v9, "794"

    aput-object v9, v0, v8

    const/16 v8, 0xe6

    const-string v9, "795"

    aput-object v9, v0, v8

    const/16 v8, 0xe7

    const-string v9, "796"

    aput-object v9, v0, v8

    const/16 v8, 0xe8

    const-string v9, "797"

    aput-object v9, v0, v8

    const/16 v8, 0xe9

    const-string v9, "798"

    aput-object v9, v0, v8

    const/16 v8, 0xea

    const-string v9, "799"

    aput-object v9, v0, v8

    const/16 v8, 0xeb

    const-string v9, "790"

    aput-object v9, v0, v8

    const/16 v8, 0xec

    const-string v9, "701"

    aput-object v9, v0, v8

    const/16 v8, 0xed

    const-string v9, "812"

    aput-object v9, v0, v8

    const/16 v8, 0xee

    const-string v9, "813"

    aput-object v9, v0, v8

    const/16 v8, 0xef

    const-string v9, "816"

    aput-object v9, v0, v8

    const/16 v8, 0xf0

    const-string v9, "817"

    aput-object v9, v0, v8

    const/16 v8, 0xf1

    const-string v9, "818"

    aput-object v9, v0, v8

    const/16 v8, 0xf2

    const-string v9, "825"

    aput-object v9, v0, v8

    const/16 v8, 0xf3

    const-string v9, "826"

    aput-object v9, v0, v8

    const/16 v8, 0xf4

    const-string v9, "827"

    aput-object v9, v0, v8

    const/16 v8, 0xf5

    const-string v9, "831"

    aput-object v9, v0, v8

    const/16 v8, 0xf6

    const-string v9, "832"

    aput-object v9, v0, v8

    const/16 v8, 0xf7

    const-string v9, "833"

    aput-object v9, v0, v8

    const/16 v8, 0xf8

    const-string v9, "834"

    aput-object v9, v0, v8

    const/16 v8, 0xf9

    const-string v9, "835"

    aput-object v9, v0, v8

    const/16 v8, 0xfa

    const-string v9, "836"

    aput-object v9, v0, v8

    const/16 v8, 0xfb

    const-string v9, "837"

    aput-object v9, v0, v8

    const/16 v8, 0xfc

    const-string v9, "838"

    aput-object v9, v0, v8

    const/16 v8, 0xfd

    const-string v9, "839"

    aput-object v9, v0, v8

    const/16 v8, 0xfe

    const-string v9, "830"

    aput-object v9, v0, v8

    const/16 v8, 0xff

    const-string v9, "851"

    aput-object v9, v0, v8

    const/16 v8, 0x100

    const-string v9, "852"

    aput-object v9, v0, v8

    const/16 v8, 0x101

    const-string v9, "853"

    aput-object v9, v0, v8

    const/16 v8, 0x102

    const-string v9, "854"

    aput-object v9, v0, v8

    const/16 v8, 0x103

    const-string v9, "855"

    aput-object v9, v0, v8

    const/16 v8, 0x104

    const-string v9, "856"

    aput-object v9, v0, v8

    const/16 v8, 0x105

    const-string v9, "857"

    aput-object v9, v0, v8

    const/16 v8, 0x106

    const-string v9, "858"

    aput-object v9, v0, v8

    const/16 v8, 0x107

    const-string v9, "859"

    aput-object v9, v0, v8

    const/16 v8, 0x108

    const-string v9, "871"

    aput-object v9, v0, v8

    const/16 v8, 0x109

    const-string v9, "872"

    aput-object v9, v0, v8

    const/16 v8, 0x10a

    const-string v9, "873"

    aput-object v9, v0, v8

    const/16 v8, 0x10b

    const-string v9, "874"

    aput-object v9, v0, v8

    const/16 v8, 0x10c

    const-string v9, "875"

    aput-object v9, v0, v8

    const/16 v8, 0x10d

    const-string v9, "876"

    aput-object v9, v0, v8

    const/16 v8, 0x10e

    const-string v9, "877"

    aput-object v9, v0, v8

    const/16 v8, 0x10f

    const-string v9, "878"

    aput-object v9, v0, v8

    const/16 v8, 0x110

    const-string v9, "879"

    aput-object v9, v0, v8

    const/16 v8, 0x111

    const-string v9, "870"

    aput-object v9, v0, v8

    const/16 v8, 0x112

    const-string v9, "883"

    aput-object v9, v0, v8

    const/16 v8, 0x113

    const-string v9, "886"

    aput-object v9, v0, v8

    const/16 v8, 0x114

    const-string v9, "887"

    aput-object v9, v0, v8

    const/16 v8, 0x115

    const-string v9, "888"

    aput-object v9, v0, v8

    const/16 v8, 0x116

    const-string v9, "691"

    aput-object v9, v0, v8

    const/16 v8, 0x117

    const-string v9, "692"

    aput-object v9, v0, v8

    const/16 v8, 0x118

    const-string v9, "891"

    aput-object v9, v0, v8

    const/16 v8, 0x119

    const-string v9, "892"

    aput-object v9, v0, v8

    const/16 v8, 0x11a

    const-string v9, "893"

    aput-object v9, v0, v8

    const/16 v8, 0x11b

    const-string v9, "894"

    aput-object v9, v0, v8

    const/16 v8, 0x11c

    const-string v9, "895"

    aput-object v9, v0, v8

    const/16 v8, 0x11d

    const-string v9, "896"

    aput-object v9, v0, v8

    const/16 v8, 0x11e

    const-string v9, "897"

    aput-object v9, v0, v8

    const/16 v8, 0x11f

    const-string v9, "898"

    aput-object v9, v0, v8

    const/16 v8, 0x120

    const-string v9, "911"

    aput-object v9, v0, v8

    const/16 v8, 0x121

    const-string v9, "912"

    aput-object v9, v0, v8

    const/16 v8, 0x122

    const-string v9, "913"

    aput-object v9, v0, v8

    const/16 v8, 0x123

    const-string v9, "914"

    aput-object v9, v0, v8

    const/16 v8, 0x124

    const-string v9, "915"

    aput-object v9, v0, v8

    const/16 v8, 0x125

    const-string v9, "916"

    aput-object v9, v0, v8

    const/16 v8, 0x126

    const-string v9, "917"

    aput-object v9, v0, v8

    const/16 v8, 0x127

    const-string v9, "919"

    aput-object v9, v0, v8

    const/16 v8, 0x128

    const-string v9, "931"

    aput-object v9, v0, v8

    const/16 v8, 0x129

    const-string v9, "932"

    aput-object v9, v0, v8

    const/16 v8, 0x12a

    const-string v9, "933"

    aput-object v9, v0, v8

    const/16 v8, 0x12b

    const-string v9, "934"

    aput-object v9, v0, v8

    const/16 v8, 0x12c

    const-string v9, "935"

    aput-object v9, v0, v8

    const/16 v8, 0x12d

    const-string v9, "936"

    aput-object v9, v0, v8

    const/16 v8, 0x12e

    const-string v9, "937"

    aput-object v9, v0, v8

    const/16 v8, 0x12f

    const-string v9, "938"

    aput-object v9, v0, v8

    const/16 v8, 0x130

    const-string v9, "939"

    aput-object v9, v0, v8

    const/16 v8, 0x131

    const-string v9, "930"

    aput-object v9, v0, v8

    const/16 v8, 0x132

    const-string v9, "940"

    aput-object v9, v0, v8

    const/16 v8, 0x133

    const-string v9, "941"

    aput-object v9, v0, v8

    const/16 v8, 0x134

    const-string v9, "943"

    aput-object v9, v0, v8

    const/16 v8, 0x135

    const-string v9, "951"

    aput-object v9, v0, v8

    const/16 v8, 0x136

    const-string v9, "952"

    aput-object v9, v0, v8

    const/16 v8, 0x137

    const-string v9, "953"

    aput-object v9, v0, v8

    const/16 v8, 0x138

    const-string v9, "954"

    aput-object v9, v0, v8

    const/16 v8, 0x139

    const-string v9, "955"

    aput-object v9, v0, v8

    const/16 v8, 0x13a

    const-string v9, "971"

    aput-object v9, v0, v8

    const/16 v8, 0x13b

    const-string v9, "972"

    aput-object v9, v0, v8

    const/16 v8, 0x13c

    const-string v9, "973"

    aput-object v9, v0, v8

    const/16 v8, 0x13d

    const-string v9, "974"

    aput-object v9, v0, v8

    const/16 v8, 0x13e

    const-string v9, "975"

    aput-object v9, v0, v8

    const/16 v8, 0x13f

    const-string v9, "976"

    aput-object v9, v0, v8

    const/16 v8, 0x140

    const-string v9, "977"

    aput-object v9, v0, v8

    const/16 v8, 0x141

    const-string v9, "979"

    aput-object v9, v0, v8

    const/16 v8, 0x142

    const-string v9, "970"

    aput-object v9, v0, v8

    const/16 v8, 0x143

    const-string v9, "991"

    aput-object v9, v0, v8

    const/16 v8, 0x144

    const-string v9, "992"

    aput-object v9, v0, v8

    const/16 v8, 0x145

    const-string v9, "993"

    aput-object v9, v0, v8

    const/16 v8, 0x146

    const-string v9, "994"

    aput-object v9, v0, v8

    const/16 v8, 0x147

    const-string v9, "995"

    aput-object v9, v0, v8

    const/16 v8, 0x148

    const-string v9, "996"

    aput-object v9, v0, v8

    const/16 v8, 0x149

    const-string v9, "997"

    aput-object v9, v0, v8

    const/16 v8, 0x14a

    const-string v9, "998"

    aput-object v9, v0, v8

    const/16 v8, 0x14b

    const-string v9, "999"

    aput-object v9, v0, v8

    const/16 v8, 0x14c

    const-string v9, "990"

    aput-object v9, v0, v8

    const/16 v8, 0x14d

    const-string v9, "901"

    aput-object v9, v0, v8

    const/16 v8, 0x14e

    const-string v9, "902"

    aput-object v9, v0, v8

    const/16 v8, 0x14f

    const-string v9, "903"

    aput-object v9, v0, v8

    const/16 v8, 0x150

    const-string v9, "906"

    aput-object v9, v0, v8

    const/16 v8, 0x151

    const-string v9, "908"

    aput-object v9, v0, v8

    const/16 v8, 0x152

    const-string v9, "909"

    aput-object v9, v0, v8

    .line 3387
    .local v0, CHINA_AREA_PREFIXS:[Ljava/lang/String;
    const-string v8, "cn"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3388
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 3389
    .local v5, prefix:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3390
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_4

    .line 3391
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidNationalNumber = CN invalid number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3394
    :cond_4
    const-string v8, "PhoneNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidNationalNumber = CN number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const/4 v6, 0x1

    .line 3397
    goto/16 :goto_0

    .line 3388
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isValidNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    .line 3154
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[isValidNumber] countryIso: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", phoneNumber: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 3157
    :cond_0
    const/4 v15, 0x5

    .line 3245
    :cond_1
    :goto_0
    return v15

    .line 3160
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3161
    .local v11, number:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3162
    .local v10, matchResult:Z
    const/4 v4, 0x0

    .line 3163
    .local v4, areaCodeMatchResult:Z
    const/4 v15, 0x3

    .line 3164
    .local v15, result:I
    const-string v13, ""

    .line 3165
    .local v13, patternString:Ljava/lang/String;
    const-string v5, ""

    .line 3167
    .local v5, areaCodePattern:Ljava/lang/String;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v2, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "00"

    aput-object v17, v2, v16

    .line 3168
    .local v2, CHINA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v3, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "002"

    aput-object v17, v3, v16

    const/16 v16, 0x1

    const-string v17, "005"

    aput-object v17, v3, v16

    const/16 v16, 0x2

    const-string v17, "006"

    aput-object v17, v3, v16

    const/16 v16, 0x3

    const-string v17, "007"

    aput-object v17, v3, v16

    const/16 v16, 0x4

    const-string v17, "009"

    aput-object v17, v3, v16

    const/16 v16, 0x5

    const-string v17, "016"

    aput-object v17, v3, v16

    const/16 v16, 0x6

    const-string v17, "017"

    aput-object v17, v3, v16

    const/16 v16, 0x7

    const-string v17, "019"

    aput-object v17, v3, v16

    .line 3170
    .local v3, TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;
    const-string v16, "cn"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 3171
    const-string v13, "1[3-8]{1}[0-9]{1}[0-9]{8}|01[3-8]{1}[0-9]{1}[0-9]{8}|[1-9]{1}[0-9]{5,7}|11[0-9]{1}114|400[0-9]{7}|179[0-9]{8,}|125[0-9]{8,}|"

    .line 3179
    const-string v5, "010[1-9]{1}[0-9]{7}|02[0-9]{1}[1-9]{1}[0-9]{7}|0[3-9]{1}[0-9]{2}[1-9]{1}[0-9]{6,7}|010[1-9]{1}[0-9]{2,4}|02[0-9]{1}[1-9]{1}[0-9]{2,4}|0[3-9]{1}[0-9]{2}[1-9]{1}[0-9]{2,4}|01011[0-9]{1}114|02[0-9]{1}11[0-9]{1}114|0[3-9]{1}[0-9]{2}11[0-9]{1}114|"

    .line 3190
    move-object v6, v2

    .local v6, arr$:[Ljava/lang/String;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_7

    aget-object v14, v6, v7

    .line 3191
    .local v14, prefix:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 3192
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "isValidNumber = CN start with "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3190
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3197
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v14           #prefix:Ljava/lang/String;
    :cond_4
    const-string/jumbo v16, "tw"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 3198
    const-string v13, "09[0-9]{8}|0[2-8]{1}[0-9]{7,8}|"

    .line 3202
    move-object v6, v3

    .restart local v6       #arr$:[Ljava/lang/String;
    array-length v8, v6

    .restart local v8       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_2
    if-ge v7, v8, :cond_7

    aget-object v14, v6, v7

    .line 3203
    .restart local v14       #prefix:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 3204
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "isValidNumber = TW start with "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3202
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3210
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v14           #prefix:Ljava/lang/String;
    :cond_6
    const/4 v15, 0x3

    goto/16 :goto_0

    .line 3213
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "[1-9]{1}[0-9]{2,4}|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "000|08"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3216
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 3217
    .local v12, p:Ljava/util/regex/Pattern;
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 3218
    .local v9, m:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    .line 3219
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "number = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", matchResult = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    if-nez v10, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_8

    .line 3223
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 3224
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 3225
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    .line 3226
    const-string v16, "PhoneNumberUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "number = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", areaCodeMatchResult = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :cond_8
    if-nez v10, :cond_9

    if-eqz v4, :cond_d

    .line 3230
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3231
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 3232
    :cond_a
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3233
    const/4 v15, 0x2

    goto/16 :goto_0

    .line 3234
    :cond_b
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->isDomesticOnly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 3235
    const/4 v15, 0x4

    goto/16 :goto_0

    .line 3236
    :cond_c
    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->isValidNationalNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 3237
    const/4 v15, 0x5

    goto/16 :goto_0

    .line 3239
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialMmiNumber(Ljava/lang/String;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 3240
    const/4 v15, 0x6

    goto/16 :goto_0

    .line 3242
    :cond_e
    const/4 v15, 0x5

    goto/16 :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 2166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return v5

    .line 2171
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2173
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2175
    :try_start_0
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2176
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x0

    .local v3, slotId:I
    :goto_1
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v6, :cond_0

    .line 2177
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 2178
    .local v4, vmNumber:Ljava/lang/String;
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 2179
    const/4 v5, 0x1

    goto :goto_0

    .line 2176
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2182
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #slotId:I
    .end local v4           #vmNumber:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2183
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 2189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    .line 2190
    .restart local v4       #vmNumber:Ljava/lang/String;
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_0

    .line 2191
    .end local v4           #vmNumber:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2192
    .local v1, ex:Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isVoiceMailNumberGemini(Ljava/lang/String;I)Z
    .locals 6
    .parameter "number"
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 3025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3028
    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3029
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3036
    .local v2, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3040
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v1           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #vmNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 3030
    :catch_0
    move-exception v0

    .line 3031
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1054
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 459
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2603
    const/4 v2, 0x0

    .line 2604
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 2605
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2607
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2626
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2632
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 2609
    .restart local v0       #c:C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 2604
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2610
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2611
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2615
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2616
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2617
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2621
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2622
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2632
    .end local v0           #c:C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 2607
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2642
    const/4 v2, 0x0

    .line 2643
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 2644
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2646
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2678
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2682
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 2648
    .restart local v0       #c:C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 2643
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2649
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2650
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2654
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2655
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2656
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2660
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2661
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2667
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 2668
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2673
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2674
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2682
    .end local v0           #c:C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 2646
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a"
    .parameter "len"

    .prologue
    .line 2690
    const/4 v1, 0x0

    .line 2692
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2693
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2695
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 2696
    const/4 v1, 0x1

    .line 2692
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2697
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2698
    const/4 v1, 0x0

    .line 2702
    .end local v0           #c:C
    .end local v1           #found:Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 447
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 448
    if-ge p0, p1, :cond_1

    .line 454
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    move p0, p1

    .line 448
    goto :goto_0

    .line 449
    :cond_2
    if-gez p0, :cond_0

    .line 451
    if-ltz p1, :cond_3

    move p0, p1

    .line 452
    goto :goto_0

    .line 454
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1096
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1106
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 1559
    if-nez p0, :cond_0

    .line 1560
    const/4 v5, 0x0

    .line 1577
    :goto_0
    return-object v5

    .line 1563
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1564
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1565
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1566
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1568
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1569
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1570
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1565
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1571
    :cond_2
    if-nez v2, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 1572
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1573
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1574
    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1577
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"

    .prologue
    .line 1119
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1129
    .local v6, numberLenReal:I
    move v5, v6

    .line 1130
    .local v5, numberLenEffective:I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 1131
    .local v3, hasPlus:Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1133
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1158
    :goto_1
    return-object v9

    .line 1130
    .end local v3           #hasPlus:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1135
    .restart local v3       #hasPlus:Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1136
    .local v10, resultLen:I
    const/4 v2, 0x1

    .line 1137
    .local v2, extraBytes:I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1138
    :cond_3
    add-int/2addr v10, v2

    .line 1140
    new-array v9, v10, [B

    .line 1142
    .local v9, result:[B
    const/4 v1, 0x0

    .line 1143
    .local v1, digitCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 1144
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1145
    .local v0, c:C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4

    .line 1143
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1146
    :cond_4
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v11, 0x4

    .line 1147
    .local v11, shift:I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1146
    .end local v11           #shift:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1152
    .end local v0           #c:C
    :cond_6
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1154
    :cond_7
    const/4 v7, 0x0

    .line 1155
    .local v7, offset:I
    if-eqz p1, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7           #offset:I
    .local v8, offset:I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1156
    .end local v8           #offset:I
    .restart local v7       #offset:I
    :cond_8
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    :cond_9
    const/16 v12, 0x81

    goto :goto_5
.end method

.method public static prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2959
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2960
    .local v3, retString:Ljava/lang/String;
    const-string v4, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2961
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2962
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2963
    const-string v4, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2968
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2977
    .end local v2           #ret:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2978
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2979
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2986
    .end local v2           #ret:Ljava/lang/StringBuilder;
    :cond_1
    const-string v4, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2987
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2988
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2994
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3001
    .end local v2           #ret:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3002
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3003
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 2531
    move-object v2, p0

    .line 2536
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 2539
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2540
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2542
    move-object v2, v1

    .line 2550
    .end local v1           #newStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2544
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2546
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static recordAbnormalCases(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 17
    .parameter "file"
    .parameter "uinfo"
    .parameter "context"

    .prologue
    .line 3424
    const/4 v7, 0x0

    .line 3425
    .local v7, fout:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 3426
    .local v6, fin:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 3427
    .local v5, fileLen:I
    const-string v14, "GMT"

    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 3429
    .local v1, c:Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 3430
    .local v13, year:I
    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 3431
    .local v12, month:I
    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v3, v14, 0x1

    .line 3433
    .local v3, day:I
    const/16 v14, 0xb

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 3434
    .local v8, hour:I
    const/16 v14, 0xc

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 3436
    .local v11, minute:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3438
    .local v2, date:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3439
    .local v9, info:Ljava/lang/String;
    move-object/from16 v10, p2

    .line 3442
    .local v10, mContext:Landroid/content/Context;
    const v14, 0x8000

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 3443
    if-eqz v7, :cond_0

    .line 3446
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 3447
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 3450
    :cond_0
    const v14, 0x19000

    if-ge v5, v14, :cond_3

    .line 3452
    const-string/jumbo v14, "utf-8"

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3465
    :goto_0
    if-eqz v7, :cond_1

    .line 3466
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 3467
    :cond_1
    if-eqz v6, :cond_2

    .line 3468
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3473
    :cond_2
    :goto_1
    return-void

    .line 3455
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 3456
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 3457
    const-string/jumbo v14, "utf-8"

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 3459
    :catch_0
    move-exception v4

    .line 3460
    .local v4, e:Ljava/io/IOException;
    :try_start_3
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RIL_UNSOL_SIM_INSERTED_STATUS writes file exception with e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3465
    if-eqz v7, :cond_4

    .line 3466
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 3467
    :cond_4
    if-eqz v6, :cond_2

    .line 3468
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3469
    :catch_1
    move-exception v4

    .line 3470
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Exception happened when close the stream"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3469
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 3470
    .restart local v4       #e:Ljava/io/IOException;
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Exception happened when close the stream"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3461
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 3462
    .local v4, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NullPointerException happened"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3465
    if-eqz v7, :cond_5

    .line 3466
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 3467
    :cond_5
    if-eqz v6, :cond_2

    .line 3468
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 3469
    :catch_4
    move-exception v4

    .line 3470
    .local v4, e:Ljava/io/IOException;
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Exception happened when close the stream"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3464
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 3465
    if-eqz v7, :cond_6

    .line 3466
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 3467
    :cond_6
    if-eqz v6, :cond_7

    .line 3468
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3471
    :cond_7
    :goto_2
    throw v14

    .line 3469
    :catch_5
    move-exception v4

    .line 3470
    .restart local v4       #e:Ljava/io/IOException;
    const-string v15, "PhoneNumberUtils"

    const-string v16, "Exception happened when close the stream"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1419
    const/4 v0, 0x0

    .line 1420
    .local v0, p:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1421
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1422
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1427
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 1589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1590
    .local v5, normalizedDigits:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 1591
    .local v1, c:C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1592
    .local v2, digit:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1593
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1590
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1595
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1598
    .end local v1           #c:C
    .end local v2           #digit:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 880
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 886
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 882
    .restart local p0
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 382
    const/4 v5, 0x0

    .line 401
    :goto_0
    return-object v5

    .line 384
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 385
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 387
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 388
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 390
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 392
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 393
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 394
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 401
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 821
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, np:Ljava/lang/String;
    const/4 v0, 0x0

    .line 828
    .local v0, minMatchLen:I
    const/4 v0, 0x7

    .line 830
    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 896
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 897
    const/16 v0, 0x91

    .line 900
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 2769
    const/4 v5, 0x0

    .line 2770
    .local v5, state:I
    const/4 v0, 0x0

    .line 2771
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2772
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2773
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2774
    .local v1, ch:C
    packed-switch v5, :pswitch_data_0

    .line 2843
    .end local v1           #ch:C
    :cond_0
    :goto_1
    return-object v6

    .line 2776
    .restart local v1       #ch:C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 2772
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2777
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 2778
    :cond_3
    if-ne v1, v8, :cond_4

    .line 2779
    if-eqz p1, :cond_0

    .line 2780
    const/16 v5, 0x8

    goto :goto_2

    .line 2784
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2790
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 2791
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 2792
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2798
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 2799
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2810
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2811
    .local v4, ret:I
    if-lez v4, :cond_c

    .line 2812
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 2813
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2814
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2816
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 2817
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 2819
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2821
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2827
    .end local v4           #ret:I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 2828
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2833
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 2834
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2774
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 2740
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2741
    add-int/lit8 v0, p0, -0x30

    .line 2743
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v3, -0x1

    .line 2856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2857
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2858
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2859
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2860
    add-int/lit8 v3, v1, 0x1

    .line 2865
    .end local v0           #ch:C
    :cond_0
    return v3

    .line 2861
    .restart local v0       #ch:C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
