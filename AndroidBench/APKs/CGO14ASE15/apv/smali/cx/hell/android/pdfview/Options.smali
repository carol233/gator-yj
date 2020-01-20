.class public Lcx/hell/android/pdfview/Options;
.super Landroid/preference/PreferenceActivity;
.source "Options.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final COLOR_MODE_BLACK_ON_YELLOWISH:I = 0x4

.field public static final COLOR_MODE_GRAY:I = 0x2

.field public static final COLOR_MODE_GREEN_ON_BLACK:I = 0x5

.field public static final COLOR_MODE_INVERT:I = 0x1

.field public static final COLOR_MODE_INVERT_GRAY:I = 0x3

.field public static final COLOR_MODE_NORMAL:I = 0x0

.field public static final COLOR_MODE_RED_ON_BLACK:I = 0x6

.field public static final DOUBLE_TAP_NONE:I = 0x0

.field public static final DOUBLE_TAP_ZOOM:I = 0x1

.field public static final DOUBLE_TAP_ZOOM_IN_OUT:I = 0x2

.field public static final PAGE_NUMBER_DISABLED:I = 0x64

.field public static final PAIR_NONE:I = 0x0

.field public static final PAIR_PAGE:I = 0x2

.field public static final PAIR_PAGE_REV:I = 0xb

.field public static final PAIR_PAGE_TOP:I = 0x9

.field public static final PAIR_PAGE_TOP_REV:I = 0xc

.field public static final PAIR_SCREEN:I = 0x1

.field public static final PAIR_SCREEN_REV:I = 0xa

.field public static final PAIR_ZOOM_1020:I = 0x3

.field public static final PAIR_ZOOM_1050:I = 0x4

.field public static final PAIR_ZOOM_1100:I = 0x5

.field public static final PAIR_ZOOM_1200:I = 0x6

.field public static final PAIR_ZOOM_1414:I = 0x7

.field public static final PAIR_ZOOM_2000:I = 0x8

.field public static final PREF_BOX:Ljava/lang/String; = "boxType"

.field public static final PREF_COLOR_MODE:Ljava/lang/String; = "colorMode"

.field public static final PREF_DIRS_FIRST:Ljava/lang/String; = "dirsFirst"

.field public static final PREF_DOUBLE_TAP:Ljava/lang/String; = "doubleTap"

.field public static final PREF_EINK:Ljava/lang/String; = "eink"

.field public static final PREF_EXTRA_CACHE:Ljava/lang/String; = "extraCache"

.field public static final PREF_FADE_SPEED:Ljava/lang/String; = "fadeSpeed"

.field public static final PREF_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final PREF_HISTORY:Ljava/lang/String; = "history"

.field public static final PREF_KEEP_ON:Ljava/lang/String; = "keepOn"

.field public static final PREF_LEFT_RIGHT_PAIR:Ljava/lang/String; = "leftRightPair"

.field public static final PREF_LONG_ZOOM_PAIR:Ljava/lang/String; = "longZoomPair"

.field public static final PREF_NOOK2:Ljava/lang/String; = "nook2"

.field public static final PREF_OMIT_IMAGES:Ljava/lang/String; = "omitImages"

.field public static final PREF_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PREF_PAGE_ANIMATION:Ljava/lang/String; = "pageAnimation"

.field public static final PREF_PREV_ORIENTATION:Ljava/lang/String; = "prevOrientation"

.field public static final PREF_RENDER_AHEAD:Ljava/lang/String; = "renderAhead"

.field public static final PREF_RIGHT_UP_DOWN_PAIR:Ljava/lang/String; = "rightUpDownPair"

.field public static final PREF_SHOW_EXTENSION:Ljava/lang/String; = "showExtension"

.field public static final PREF_SHOW_ZOOM_ON_SCROLL:Ljava/lang/String; = "showZoomOnScroll"

.field public static final PREF_SIDE_MARGINS:Ljava/lang/String; = "sideMargins2"

.field public static final PREF_TAG:Ljava/lang/String; = "Options"

.field public static final PREF_TOP_BOTTOM_TAP_PAIR:Ljava/lang/String; = "topBottomTapPair"

.field public static final PREF_TOP_MARGIN:Ljava/lang/String; = "topMargin"

.field public static final PREF_UP_DOWN_PAIR:Ljava/lang/String; = "upDownPair"

.field public static final PREF_VERTICAL_SCROLL_LOCK:Ljava/lang/String; = "verticalScrollLock"

.field public static final PREF_VOLUME_PAIR:Ljava/lang/String; = "volumePair"

.field public static final PREF_ZOOM_ANIMATION:Ljava/lang/String; = "zoomAnimation"

.field public static final PREF_ZOOM_PAIR:Ljava/lang/String; = "zoomPair"

.field private static final TAG:Ljava/lang/String; = "cx.hell.android.pdfview"

.field public static final ZOOM_BUTTONS_DISABLED:I = 0x64

.field private static final backColors:[I

.field private static final colorMatrices:[[F

.field private static final foreColors:[I

.field private static final summaryDefaults:[I

.field private static final summaryEntries:[I

.field private static final summaryEntryValues:[I

.field private static final summaryKeys:[Ljava/lang/String;


# instance fields
.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x11

    const/4 v7, 0x7

    const/high16 v6, -0x1000000

    const/16 v5, 0x14

    .line 77
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcx/hell/android/pdfview/Options;->foreColors:[I

    .line 80
    new-array v0, v7, [I

    const/4 v1, 0x0

    .line 81
    const/4 v2, -0x1

    aput v2, v0, v1

    aput v6, v0, v9

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v6, v0, v1

    const/4 v1, 0x4

    .line 82
    const/16 v2, 0xef

    const/16 v3, 0xdb

    const/16 v4, 0xbd

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 83
    aput v6, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    .line 80
    sput-object v0, Lcx/hell/android/pdfview/Options;->backColors:[I

    .line 85
    new-array v0, v7, [[F

    .line 88
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    .line 91
    aput-object v1, v0, v9

    const/4 v1, 0x2

    .line 93
    new-array v2, v5, [F

    fill-array-data v2, :array_2

    .line 96
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 98
    new-array v2, v5, [F

    fill-array-data v2, :array_3

    .line 101
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 103
    new-array v2, v5, [F

    fill-array-data v2, :array_4

    .line 106
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 108
    new-array v2, v5, [F

    fill-array-data v2, :array_5

    .line 111
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 113
    new-array v2, v5, [F

    fill-array-data v2, :array_6

    .line 116
    aput-object v2, v0, v1

    .line 85
    sput-object v0, Lcx/hell/android/pdfview/Options;->colorMatrices:[[F

    .line 121
    new-array v0, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "zoomAnimation"

    aput-object v2, v0, v1

    const-string v1, "orientation"

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "pageAnimation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 122
    const-string v2, "fadeSpeed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "colorMode"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "boxType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sideMargins2"

    aput-object v2, v0, v1

    const-string v1, "topMargin"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    .line 123
    const-string v2, "extraCache"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "doubleTap"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "volumePair"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "zoomPair"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 124
    const-string v2, "longZoomPair"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "upDownPair"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "leftRightPair"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rightUpDownPair"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 125
    const-string v2, "topBottomTapPair"

    aput-object v2, v0, v1

    .line 121
    sput-object v0, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    .line 126
    new-array v0, v8, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcx/hell/android/pdfview/Options;->summaryEntryValues:[I

    .line 130
    new-array v0, v8, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcx/hell/android/pdfview/Options;->summaryEntries:[I

    .line 134
    new-array v0, v8, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcx/hell/android/pdfview/Options;->summaryDefaults:[I

    .line 15
    return-void

    .line 77
    :array_0
    .array-data 4
        -0x1000000
        -0x1
        -0x1000000
        -0x1
        -0x1000000
        -0xff0100
        -0x10000
    .end array-data

    .line 88
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data

    .line 93
    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data

    .line 98
    :array_3
    .array-data 4
        -0x41666666    # -0.3f
        -0x40e8f5c3    # -0.59f
        -0x421eb852    # -0.11f
        0x0
        0x437f0000    # 255.0f
        -0x41666666    # -0.3f
        -0x40e8f5c3    # -0.59f
        -0x421eb852    # -0.11f
        0x0
        0x437f0000    # 255.0f
        -0x41666666    # -0.3f
        -0x40e8f5c3    # -0.59f
        -0x421eb852    # -0.11f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data

    .line 103
    :array_4
    .array-data 4
        0x3f70a3d7    # 0.94f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x0
        0x0
        0x3ca3d70a    # 0.02f
        0x3f5c28f6    # 0.86f
        0x3ca3d70a    # 0.02f
        0x0
        0x0
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3f3d70a4    # 0.74f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 108
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x41666666    # -0.3f
        -0x40e8f5c3    # -0.59f
        -0x421eb852    # -0.11f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 113
    :array_6
    .array-data 4
        -0x41666666    # -0.3f
        -0x40e8f5c3    # -0.59f
        -0x421eb852    # -0.11f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x437f0000    # 255.0f
    .end array-data

    .line 126
    :array_7
    .array-data 4
        0x7f080000
        0x7f080007
        0x7f080002
        0x7f080004
        0x7f080009
        0x7f08000b
        0x7f08000e
        0x7f08000e
        0x7f08000c
        0x7f080010
        0x7f080012
        0x7f080012
        0x7f080012
        0x7f080012
        0x7f080012
        0x7f080012
        0x7f080012
    .end array-data

    .line 130
    :array_8
    .array-data 4
        0x7f080001
        0x7f080006
        0x7f080003
        0x7f080005
        0x7f080008
        0x7f08000a
        0x7f08000f
        0x7f08000f
        0x7f08000d
        0x7f080011
        0x7f080013
        0x7f080013
        0x7f080013
        0x7f080013
        0x7f080013
        0x7f080013
        0x7f080013
    .end array-data

    .line 134
    :array_9
    .array-data 4
        0x7f070016
        0x7f07001f
        0x7f070018
        0x7f07001a
        0x7f070029
        0x7f07002e
        0x7f070033
        0x7f070035
        0x7f070031
        0x7f070038
        0x7f070041
        0x7f070044
        0x7f070045
        0x7f070042
        0x7f070043
        0x7f070046
        0x7f070047
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getBackColor(I)I
    .locals 1
    .param p0, "colorMode"    # I

    .prologue
    .line 194
    sget-object v0, Lcx/hell/android/pdfview/Options;->backColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getColorMode(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 198
    const-string v0, "colorMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcx/hell/android/pdfview/Options;->getIntFromString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getColorModeMatrix(I)[F
    .locals 1
    .param p0, "colorMode"    # I

    .prologue
    .line 186
    sget-object v0, Lcx/hell/android/pdfview/Options;->colorMatrices:[[F

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getForeColor(I)I
    .locals 1
    .param p0, "colorMode"    # I

    .prologue
    .line 190
    sget-object v0, Lcx/hell/android/pdfview/Options;->foreColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getIntFromString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "options"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 147
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 145
    :cond_0
    sget-object v1, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lcx/hell/android/pdfview/Options;->summaryDefaults:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setOrientation(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 224
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, "options":Landroid/content/SharedPreferences;
    const-string v5, "orientation"

    const-string v6, "0"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 226
    .local v1, "orientation":I
    packed-switch v1, :pswitch_data_0

    :goto_0
    move v3, v4

    .line 244
    :goto_1
    return v3

    .line 228
    :pswitch_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 237
    :pswitch_3
    const-string v4, "prevOrientation"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 238
    .local v2, "prev":I
    const-string v4, "cx.hell.android.pdfview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoring orientation: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "options"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcx/hell/android/pdfview/Options;->resources:Landroid/content/res/Resources;

    invoke-static {v0, p1, p2}, Lcx/hell/android/pdfview/Options;->getString(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcx/hell/android/pdfview/Options;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/Options;->resources:Landroid/content/res/Resources;

    .line 207
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/Options;->addPreferencesFromResource(I)V

    .line 208
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 214
    invoke-static {p0}, Lcx/hell/android/pdfview/Options;->setOrientation(Landroid/app/Activity;)Z

    .line 216
    invoke-virtual {p0}, Lcx/hell/android/pdfview/Options;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 217
    invoke-virtual {p0}, Lcx/hell/android/pdfview/Options;->setSummaries()V

    .line 218
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "options"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0, p2}, Lcx/hell/android/pdfview/Options;->setSummary(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setSummaries()V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 154
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/Options;->setSummary(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSummary(I)V
    .locals 9
    .param p1, "i"    # I

    .prologue
    .line 166
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 168
    .local v2, "options":Landroid/content/SharedPreferences;
    sget-object v6, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {p0, v6}, Lcx/hell/android/pdfview/Options;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 169
    .local v3, "pref":Landroid/preference/Preference;
    sget-object v6, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    aget-object v6, v6, p1

    iget-object v7, p0, Lcx/hell/android/pdfview/Options;->resources:Landroid/content/res/Resources;

    sget-object v8, Lcx/hell/android/pdfview/Options;->summaryDefaults:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "value":Ljava/lang/String;
    iget-object v6, p0, Lcx/hell/android/pdfview/Options;->resources:Landroid/content/res/Resources;

    sget-object v7, Lcx/hell/android/pdfview/Options;->summaryEntryValues:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "valueArray":[Ljava/lang/String;
    iget-object v6, p0, Lcx/hell/android/pdfview/Options;->resources:Landroid/content/res/Resources;

    sget-object v7, Lcx/hell/android/pdfview/Options;->summaryEntries:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "entryArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v6, v5

    if-lt v1, v6, :cond_0

    .line 179
    :goto_1
    return-void

    .line 175
    :cond_0
    aget-object v6, v5, v1

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    aget-object v6, v0, v1

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 163
    :goto_1
    return-void

    .line 158
    :cond_0
    sget-object v1, Lcx/hell/android/pdfview/Options;->summaryKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/Options;->setSummary(I)V

    goto :goto_1

    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
