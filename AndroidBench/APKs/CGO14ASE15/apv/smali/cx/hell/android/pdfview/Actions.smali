.class public Lcx/hell/android/pdfview/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# static fields
.field public static final ACTION_FULL_PAGE_DOWN:I = 0x3

.field public static final ACTION_FULL_PAGE_UP:I = 0x4

.field public static final ACTION_NEXT_PAGE:I = 0x6

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_PREV_PAGE:I = 0x5

.field public static final ACTION_SCREEN_DOWN:I = 0x1

.field public static final ACTION_SCREEN_UP:I = 0x2

.field public static final ACTION_ZOOM_IN_1020:I = 0x7

.field public static final ACTION_ZOOM_IN_1050:I = 0x8

.field public static final ACTION_ZOOM_IN_1100:I = 0x9

.field public static final ACTION_ZOOM_IN_1200:I = 0xa

.field public static final ACTION_ZOOM_IN_1414:I = 0xb

.field public static final ACTION_ZOOM_IN_2000:I = 0xc

.field public static final ACTION_ZOOM_OUT_1020:I = 0xd

.field public static final ACTION_ZOOM_OUT_1050:I = 0xe

.field public static final ACTION_ZOOM_OUT_1100:I = 0xf

.field public static final ACTION_ZOOM_OUT_1200:I = 0x10

.field public static final ACTION_ZOOM_OUT_1414:I = 0x11

.field public static final ACTION_ZOOM_OUT_2000:I = 0x12

.field public static final BOTTOM_TAP:I = 0xf4245

.field public static final LONG_ZOOM_IN:I = 0xf4242

.field public static final LONG_ZOOM_OUT:I = 0xf4243

.field public static final TOP_TAP:I = 0xf4244

.field public static final ZOOM_IN:I = 0xf4240

.field public static final ZOOM_OUT:I = 0xf4241


# instance fields
.field public leftRight:I

.field public longZoom:I

.field public rightUpDown:I

.field public topBottomTap:I

.field public upDown:I

.field public volume:I

.field public zoom:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "zoomPair"

    const-string v1, "7"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/Actions;->zoom:I

    .line 44
    const-string v0, "longZoomPair"

    const-string v1, "8"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/Actions;->longZoom:I

    .line 45
    const-string v0, "upDownPair"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/Actions;->upDown:I

    .line 46
    const-string v0, "volumePair"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/Actions;->volume:I

    .line 47
    const-string v0, "upDownPair"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/Actions;->leftRight:I

    .line 48
    const-string v0, "rightUpDownPair"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/Actions;->rightUpDown:I

    .line 49
    const-string v0, "topBottomTapPair"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/Actions;->topBottomTap:I

    .line 50
    return-void
.end method

.method public static getAction(II)I
    .locals 5
    .param p0, "pairAction"    # I
    .param p1, "item"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 86
    :pswitch_0
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 88
    :pswitch_1
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 90
    :pswitch_2
    if-nez p1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 92
    :pswitch_3
    if-eq p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 94
    :pswitch_4
    if-ne p1, v1, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 96
    :pswitch_5
    if-ne p1, v1, :cond_4

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x6

    goto :goto_2

    .line 98
    :pswitch_6
    if-nez p1, :cond_5

    const/16 v0, 0xd

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    goto :goto_0

    .line 100
    :pswitch_7
    if-nez p1, :cond_6

    const/16 v0, 0xe

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    goto :goto_0

    .line 102
    :pswitch_8
    if-nez p1, :cond_7

    const/16 v0, 0xf

    goto :goto_0

    :cond_7
    const/16 v0, 0x9

    goto :goto_0

    .line 104
    :pswitch_9
    if-nez p1, :cond_8

    const/16 v0, 0x10

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0

    .line 106
    :pswitch_a
    if-nez p1, :cond_9

    const/16 v0, 0x11

    goto :goto_0

    :cond_9
    const/16 v0, 0xb

    goto :goto_0

    .line 108
    :pswitch_b
    if-nez p1, :cond_a

    const/16 v0, 0x12

    goto :goto_0

    :cond_a
    const/16 v0, 0xc

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getZoomValue(I)F
    .locals 2
    .param p0, "action"    # I

    .prologue
    const v1, 0x3fb4fdf4    # 1.414f

    const v0, 0x3f350bf3

    .line 53
    packed-switch p0, :pswitch_data_0

    .line 79
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    :pswitch_0
    return v0

    .line 55
    :pswitch_1
    const v0, 0x3f7afafb

    goto :goto_0

    .line 57
    :pswitch_2
    const v0, 0x3f73cf3e

    goto :goto_0

    .line 59
    :pswitch_3
    const v0, 0x3f68ba2e

    goto :goto_0

    .line 61
    :pswitch_4
    const v0, 0x3f555555

    goto :goto_0

    .line 67
    :pswitch_5
    const v0, 0x3f828f5c    # 1.02f

    goto :goto_0

    .line 69
    :pswitch_6
    const v0, 0x3f866666    # 1.05f

    goto :goto_0

    .line 71
    :pswitch_7
    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_0

    .line 73
    :pswitch_8
    const v0, 0x3f99999a    # 1.2f

    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 75
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 77
    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public getAction(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 115
    sparse-switch p1, :sswitch_data_0

    .line 147
    :goto_0
    return v0

    .line 117
    :sswitch_0
    iget v1, p0, Lcx/hell/android/pdfview/Actions;->topBottomTap:I

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 119
    :sswitch_1
    iget v0, p0, Lcx/hell/android/pdfview/Actions;->topBottomTap:I

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 121
    :sswitch_2
    iget v1, p0, Lcx/hell/android/pdfview/Actions;->zoom:I

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 123
    :sswitch_3
    iget v0, p0, Lcx/hell/android/pdfview/Actions;->zoom:I

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 125
    :sswitch_4
    iget v1, p0, Lcx/hell/android/pdfview/Actions;->longZoom:I

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 127
    :sswitch_5
    iget v0, p0, Lcx/hell/android/pdfview/Actions;->longZoom:I

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 129
    :sswitch_6
    iget v1, p0, Lcx/hell/android/pdfview/Actions;->rightUpDown:I

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 131
    :sswitch_7
    iget v0, p0, Lcx/hell/android/pdfview/Actions;->rightUpDown:I

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 133
    :sswitch_8
    iget v1, p0, Lcx/hell/android/pdfview/Actions;->volume:I

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 135
    :sswitch_9
    iget v0, p0, Lcx/hell/android/pdfview/Actions;->volume:I

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 138
    :sswitch_a
    iget v1, p0, Lcx/hell/android/pdfview/Actions;->upDown:I

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 141
    :sswitch_b
    iget v0, p0, Lcx/hell/android/pdfview/Actions;->upDown:I

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 143
    :sswitch_c
    iget v1, p0, Lcx/hell/android/pdfview/Actions;->leftRight:I

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 145
    :sswitch_d
    iget v0, p0, Lcx/hell/android/pdfview/Actions;->leftRight:I

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/Actions;->getAction(II)I

    move-result v0

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x18 -> :sswitch_8
        0x19 -> :sswitch_9
        0x5c -> :sswitch_a
        0x5d -> :sswitch_b
        0x5e -> :sswitch_6
        0x5f -> :sswitch_7
        0xf4240 -> :sswitch_3
        0xf4241 -> :sswitch_2
        0xf4242 -> :sswitch_5
        0xf4243 -> :sswitch_4
        0xf4244 -> :sswitch_0
        0xf4245 -> :sswitch_1
    .end sparse-switch
.end method
