.class public Lorg/sipdroid/sipua/ui/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Receiver.java"


# static fields
.field static final ACTION_DATA_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"

.field static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field static final ACTION_VPN_CONNECTIVITY:Ljava/lang/String; = "vpn.connectivity"

.field public static final AUTO_ANSWER_NOTIFICATION:I = 0x4

.field public static final CALL_NOTIFICATION:I = 0x2

.field static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field static final GPS_UPDATES:I = 0x3d0900

.field static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final MISSED_CALL_NOTIFICATION:I = 0x3

.field static final MSG_ENABLE:I = 0x2

.field static final MSG_HOLD:I = 0x3

.field static final MSG_SCAN:I = 0x1

.field public static final MWI_NOTIFICATION:I = 0x1

.field public static MWI_account:Ljava/lang/String; = null

.field static final NET_UPDATES:I = 0x927c0

.field static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final REGISTER_NOTIFICATION:I = 0x5

.field static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field static am:Landroid/app/AlarmManager;

.field private static autoAnswerState:I

.field public static bluetooth:I

.field static cache_res:I

.field static cache_text:Ljava/lang/String;

.field public static call_end_reason:I

.field public static call_state:I

.field public static ccCall:Lorg/sipdroid/sipua/phone/Call;

.field public static ccConn:Lorg/sipdroid/sipua/phone/Connection;

.field public static docked:I

.field public static expire_time:J

.field static gps_sender:Landroid/app/PendingIntent;

.field public static headset:I

.field private static lastnumber:Ljava/lang/String;

.field static lastscan:J

.field private static laststate:Ljava/lang/String;

.field public static listener_video:Lorg/sipdroid/sipua/ui/SipdroidListener;

.field static lm:Landroid/location/LocationManager;

.field static loctrydate:J

.field public static mContext:Landroid/content/Context;

.field static mHandler:Landroid/os/Handler;

.field public static mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

.field static net_enabled:Z

.field static net_sender:Landroid/app/PendingIntent;

.field public static oRingtone:Landroid/media/Ringtone;

.field public static on_wlan:Z

.field public static pstn_state:Ljava/lang/String;

.field public static pstn_time:J

.field static v:Landroid/os/Vibrator;

.field static final vibratePattern:[J

.field static was_playing:Z

.field static wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/sipdroid/sipua/ui/Receiver;->vibratePattern:[J

    .line 109
    sput v1, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    sput v1, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    sput v1, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    .line 117
    sput v1, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    .line 366
    sput v1, Lorg/sipdroid/sipua/ui/Receiver;->autoAnswerState:I

    .line 673
    new-instance v0, Lorg/sipdroid/sipua/ui/Receiver$2;

    invoke-direct {v0}, Lorg/sipdroid/sipua/ui/Receiver$2;-><init>()V

    sput-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mHandler:Landroid/os/Handler;

    return-void

    .line 107
    nop

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static alarm(ILjava/lang/Class;)V
    .locals 8
    .param p0, "renew_time"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 517
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 520
    .local v2, "sender":Landroid/app/PendingIntent;
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 521
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 522
    if-lez p0, :cond_0

    .line 523
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v6, p0, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 524
    :cond_0
    return-void
.end method

.method static broadcastCallStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 490
    if-nez p0, :cond_0

    .line 491
    sget-object p0, Lorg/sipdroid/sipua/ui/Receiver;->laststate:Ljava/lang/String;

    .line 492
    sget-object p1, Lorg/sipdroid/sipua/ui/Receiver;->lastnumber:Ljava/lang/String;

    .line 494
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    if-eqz p1, :cond_1

    .line 497
    const-string v2, "incoming_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    :cond_1
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 500
    const-string v2, "IDLE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 501
    sget-boolean v2, Lorg/sipdroid/sipua/ui/Receiver;->was_playing:Z

    if-eqz v2, :cond_4

    .line 502
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v3, "IDLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    :cond_2
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lorg/sipdroid/sipua/ui/Receiver;->was_playing:Z

    .line 511
    :cond_4
    :goto_0
    sput-object p0, Lorg/sipdroid/sipua/ui/Receiver;->laststate:Ljava/lang/String;

    .line 512
    sput-object p1, Lorg/sipdroid/sipua/ui/Receiver;->lastnumber:Ljava/lang/String;

    .line 513
    return-void

    .line 507
    :cond_5
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 508
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->laststate:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->laststate:Ljava/lang/String;

    const-string v3, "IDLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    sput-boolean v2, Lorg/sipdroid/sipua/ui/Receiver;->was_playing:Z

    if-eqz v2, :cond_4

    .line 509
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand.pause"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 546
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    return-object v0
.end method

.method static createHomeDockIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 552
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .local v1, "intent":Landroid/content/Intent;
    sget v3, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 554
    const-string v3, "android.intent.category.CAR_DOCK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    :goto_0
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 563
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    move-object v1, v2

    .line 572
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-object v1

    .line 555
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    sget v3, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 556
    const-string v3, "android.intent.category.DESK_DOCK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 558
    goto :goto_1

    .line 567
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 568
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 572
    goto :goto_1
.end method

.method public static createHomeIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 576
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 577
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 585
    :goto_0
    return-object v0

    .line 583
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 584
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static createIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v0, "startActivity":Landroid/content/Intent;
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 541
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    return-object v0
.end method

.method static createMWIIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 591
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->MWI_account:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->MWI_account:Ljava/lang/String;

    const-string v3, "sip:"

    const-string v4, "sipdroid:"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 594
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method static enable_wifi(Z)V
    .locals 7
    .param p0, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 450
    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "ownwifi"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    if-eqz p0, :cond_2

    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "wifi_disabled"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 454
    :cond_2
    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 455
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 456
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez p0, :cond_3

    const-string v5, "wifi_on"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    :cond_3
    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 460
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "wifi_disabled"

    if-nez p0, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 462
    if-eqz p0, :cond_5

    .line 463
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "newState"

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v3, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public static declared-synchronized engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-class v1, Lorg/sipdroid/sipua/ui/Receiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReceiverRestrictedContext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    sput-object p0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    .line 127
    :cond_1
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    if-nez v0, :cond_3

    .line 128
    new-instance v0, Lorg/sipdroid/sipua/SipdroidEngine;

    invoke-direct {v0}, Lorg/sipdroid/sipua/SipdroidEngine;-><init>()V

    sput-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    .line 129
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->StartEngine()Z

    .line 130
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    .line 131
    invoke-static {}, Lorg/sipdroid/media/Bluetooth;->init()V

    .line 134
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/sipdroid/sipua/ui/RegisterService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 133
    :cond_3
    :try_start_1
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->CheckEngine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isFast(I)Z
    .locals 7
    .param p0, "i"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 630
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 631
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 633
    .local v0, "wi":Landroid/net/wifi/WifiInfo;
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "username"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v3

    .line 649
    :goto_2
    return v2

    .line 633
    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 636
    :cond_3
    if-eqz v0, :cond_8

    .line 639
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v4, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_8

    .line 641
    :cond_4
    sput-boolean v6, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    .line 642
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->on_vpn()Z

    move-result v2

    if-nez v2, :cond_6

    .line 643
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wlan"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    goto :goto_3

    .line 645
    :cond_6
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vpn"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_2

    :cond_7
    const-string v2, ""

    goto :goto_4

    .line 648
    :cond_8
    sput-boolean v3, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    .line 649
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->isFastGSM(I)Z

    move-result v2

    goto/16 :goto_2
.end method

.method static isFastGSM(I)Z
    .locals 5
    .param p0, "i"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 653
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 657
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->on_vpn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-lt v1, v4, :cond_1

    .line 658
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vpn"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 663
    :goto_1
    return v1

    .line 658
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_3

    .line 660
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3g"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 661
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 662
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p0, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_3

    :cond_5
    move v1, v2

    .line 663
    goto :goto_1
.end method

.method public static moveTop()V
    .locals 2

    .prologue
    .line 599
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->progress()V

    .line 600
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v1, Lorg/sipdroid/sipua/ui/Activity2;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 601
    return-void
.end method

.method public static onState(ILjava/lang/String;)V
    .locals 13
    .param p0, "state"    # I
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    if-nez v8, :cond_0

    .line 155
    new-instance v8, Lorg/sipdroid/sipua/phone/Call;

    invoke-direct {v8}, Lorg/sipdroid/sipua/phone/Call;-><init>()V

    sput-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    .line 156
    new-instance v8, Lorg/sipdroid/sipua/phone/Connection;

    invoke-direct {v8}, Lorg/sipdroid/sipua/phone/Connection;-><init>()V

    sput-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    .line 157
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Call;->setConn(Lorg/sipdroid/sipua/phone/Connection;)V

    .line 158
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Connection;->setCall(Lorg/sipdroid/sipua/phone/Call;)V

    .line 160
    :cond_0
    sget v8, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eq v8, p0, :cond_3

    .line 161
    if-eqz p0, :cond_1

    .line 162
    const/4 v8, -0x1

    sput v8, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    .line 163
    :cond_1
    sput p0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    .line 164
    sget v8, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    packed-switch v8, :pswitch_data_0

    .line 265
    :cond_2
    :goto_0
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/sipdroid/sipua/ui/Receiver;->pos(Z)V

    .line 266
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/sipdroid/media/RtpStreamReceiver;->ringback(Z)V

    .line 268
    :cond_3
    return-void

    .line 167
    :pswitch_0
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/sipdroid/sipua/ui/Receiver;->enable_wifi(Z)V

    .line 168
    const/4 v8, 0x0

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    .line 169
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->speakermode()I

    move-result v8

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    .line 170
    const/4 v8, -0x1

    sput v8, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "text":Ljava/lang/String;
    const-string v8, "<sip:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_4

    const-string v8, "@"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_4

    .line 173
    const-string v8, "<sip:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    const-string v9, "@"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 174
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "text2":Ljava/lang/String;
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_5

    .line 176
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 177
    :cond_5
    const-string v8, "RINGING"

    invoke-static {v8, p1}, Lorg/sipdroid/sipua/ui/Receiver;->broadcastCallStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v9, Lorg/sipdroid/sipua/phone/Call$State;->INCOMING:Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Call;->setState(Lorg/sipdroid/sipua/phone/Call$State;)V

    .line 180
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Connection;->setUserData(Ljava/lang/Object;)V

    .line 181
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    invoke-virtual {v8, v5, v6}, Lorg/sipdroid/sipua/phone/Connection;->setAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Connection;->setIncoming(Z)V

    .line 183
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, Lorg/sipdroid/sipua/phone/Connection;->date:J

    .line 184
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lorg/sipdroid/sipua/phone/Call;->base:J

    .line 185
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 186
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 187
    .local v3, "rm":I
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v7

    .line 188
    .local v7, "vs":I
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 189
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->v:Landroid/os/Vibrator;

    if-nez v8, :cond_6

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    sput-object v8, Lorg/sipdroid/sipua/ui/Receiver;->v:Landroid/os/Vibrator;

    .line 190
    :cond_6
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v8, :cond_7

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v9, "IDLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_7
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "auto_on"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_a

    .line 193
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->v:Landroid/os/Vibrator;

    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->vibratePattern:[J

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 208
    :cond_8
    :goto_1
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->moveTop()V

    .line 209
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v8, :cond_9

    .line 210
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 211
    .local v2, "pm":Landroid/os/PowerManager;
    const v8, 0x1000000a

    const-string v9, "Sipdroid.onState"

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    sput-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    .line 214
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_9
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 215
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/sipdroid/sipua/ui/Checkin;->checkin(Z)V

    goto/16 :goto_0

    .line 195
    :cond_a
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v8, :cond_b

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v9, "IDLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_b
    const/4 v8, 0x1

    if-eq v3, v8, :cond_c

    const/4 v8, 0x2

    if-ne v3, v8, :cond_d

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 198
    :cond_c
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->v:Landroid/os/Vibrator;

    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->vibratePattern:[J

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 199
    :cond_d
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    if-lez v8, :cond_8

    .line 200
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "sipringtone"

    sget-object v10, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "sUriSipRingtone":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 203
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    sput-object v8, Lorg/sipdroid/sipua/ui/Receiver;->oRingtone:Landroid/media/Ringtone;

    .line 204
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->oRingtone:Landroid/media/Ringtone;

    if-eqz v8, :cond_8

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->oRingtone:Landroid/media/Ringtone;

    invoke-virtual {v8}, Landroid/media/Ringtone;->play()V

    goto :goto_1

    .line 218
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .end local v3    # "rm":I
    .end local v4    # "sUriSipRingtone":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "text2":Ljava/lang/String;
    .end local v7    # "vs":I
    :pswitch_1
    const/4 v8, 0x0

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    .line 219
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->speakermode()I

    move-result v8

    sput v8, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    .line 220
    const/4 v8, -0x1

    sput v8, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    .line 221
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 222
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v8

    invoke-virtual {v8}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    .line 223
    const-string v8, "OFFHOOK"

    invoke-static {v8, p1}, Lorg/sipdroid/sipua/ui/Receiver;->broadcastCallStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v9, Lorg/sipdroid/sipua/phone/Call$State;->DIALING:Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Call;->setState(Lorg/sipdroid/sipua/phone/Call$State;)V

    .line 225
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Connection;->setUserData(Ljava/lang/Object;)V

    .line 226
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    invoke-virtual {v8, p1, p1}, Lorg/sipdroid/sipua/phone/Connection;->setAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Connection;->setIncoming(Z)V

    .line 228
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, Lorg/sipdroid/sipua/phone/Connection;->date:J

    .line 229
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lorg/sipdroid/sipua/phone/Call;->base:J

    .line 230
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->moveTop()V

    .line 231
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/sipdroid/sipua/ui/Checkin;->checkin(Z)V

    goto/16 :goto_0

    .line 234
    :pswitch_2
    const-string v8, "IDLE"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/sipdroid/sipua/ui/Receiver;->broadcastCallStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 236
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v9, Lorg/sipdroid/sipua/phone/Call$State;->DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Call;->setState(Lorg/sipdroid/sipua/phone/Call$State;)V

    .line 237
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->listener_video:Lorg/sipdroid/sipua/ui/SipdroidListener;

    if-eqz v8, :cond_e

    .line 238
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->listener_video:Lorg/sipdroid/sipua/ui/SipdroidListener;

    invoke-interface {v8}, Lorg/sipdroid/sipua/ui/SipdroidListener;->onHangup()V

    .line 239
    :cond_e
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->stopRingtone()V

    .line 240
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_f

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 241
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 242
    :cond_f
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v9, Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-static {v9}, Lorg/sipdroid/sipua/ui/Receiver;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    iget-wide v9, v9, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-virtual {v8, v9, v10}, Lorg/sipdroid/sipua/phone/Connection;->log(J)V

    .line 244
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lorg/sipdroid/sipua/phone/Connection;->date:J

    .line 245
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v8

    invoke-virtual {v8}, Lorg/sipdroid/sipua/SipdroidEngine;->listen()V

    goto/16 :goto_0

    .line 248
    :pswitch_3
    const-string v8, "OFFHOOK"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/sipdroid/sipua/ui/Receiver;->broadcastCallStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    iget-wide v8, v8, Lorg/sipdroid/sipua/phone/Call;->base:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_10

    .line 250
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v8, Lorg/sipdroid/sipua/phone/Call;->base:J

    .line 252
    :cond_10
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->progress()V

    .line 253
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v9, Lorg/sipdroid/sipua/phone/Call$State;->ACTIVE:Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Call;->setState(Lorg/sipdroid/sipua/phone/Call$State;)V

    .line 254
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->stopRingtone()V

    .line 255
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_11

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 256
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :cond_11
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v9, Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-static {v9}, Lorg/sipdroid/sipua/ui/Receiver;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 260
    :pswitch_4
    const/4 v8, 0x2

    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v10, 0x7f060083

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x1080086

    sget-object v11, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    iget-wide v11, v11, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-static {v8, v9, v10, v11, v12}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 261
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v9, Lorg/sipdroid/sipua/phone/Call$State;->HOLDING:Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v8, v9}, Lorg/sipdroid/sipua/phone/Call;->setState(Lorg/sipdroid/sipua/phone/Call$State;)V

    .line 262
    sget-boolean v8, Lorg/sipdroid/sipua/ui/InCallScreen;->started:Z

    if-eqz v8, :cond_2

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v8, :cond_12

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v9, "RINGING"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_12
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v9, Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-static {v9}, Lorg/sipdroid/sipua/ui/Receiver;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static onText(ILjava/lang/String;IJ)V
    .locals 11
    .param p0, "type"    # I
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mInCallResId"    # I
    .param p3, "base"    # J

    .prologue
    const v1, 0x7f080038

    const/16 v10, 0xb3b

    const/16 v9, 0x7d

    const/4 v8, 0x5

    const/4 v5, 0x0

    .line 274
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget v2, v2, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    add-int/lit8 v2, v2, 0x5

    if-ne p0, v2, :cond_0

    .line 275
    sput-object p1, Lorg/sipdroid/sipua/ui/Receiver;->cache_text:Ljava/lang/String;

    .line 276
    sput p2, Lorg/sipdroid/sipua/ui/Receiver;->cache_res:I

    .line 278
    :cond_0
    if-lt p0, v8, :cond_1

    const v2, 0x7f0200a0

    if-ne p2, v2, :cond_1

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "registration"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    const/4 p1, 0x0

    .line 281
    :cond_1
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 282
    .local v6, "mNotificationMgr":Landroid/app/NotificationManager;
    if-eqz p1, :cond_c

    .line 283
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 284
    .local v7, "notification":Landroid/app/Notification;
    iput p2, v7, Landroid/app/Notification;->icon:I

    .line 285
    const/4 v2, 0x3

    if-ne p0, v2, :cond_5

    .line 286
    iget v1, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v7, Landroid/app/Notification;->flags:I

    .line 287
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v7, v1, p1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 289
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notify"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget v1, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v7, Landroid/app/Notification;->flags:I

    .line 291
    const v1, -0xffff01

    iput v1, v7, Landroid/app/Notification;->ledARGB:I

    .line 292
    iput v9, v7, Landroid/app/Notification;->ledOnMS:I

    .line 293
    iput v10, v7, Landroid/app/Notification;->ledOffMS:I

    .line 345
    :cond_2
    :goto_0
    invoke-virtual {v6, p0, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 349
    .end local v7    # "notification":Landroid/app/Notification;
    :goto_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    .line 350
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->updateAutoAnswer()V

    .line 351
    :cond_3
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    if-eqz v1, :cond_4

    if-lt p0, v8, :cond_4

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget v1, v1, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    add-int/lit8 v1, v1, 0x5

    if-eq p0, v1, :cond_4

    .line 352
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget v1, v1, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    add-int/lit8 v1, v1, 0x5

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->cache_text:Ljava/lang/String;

    sget v3, Lorg/sipdroid/sipua/ui/Receiver;->cache_res:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 353
    :cond_4
    return-void

    .line 296
    .restart local v7    # "notification":Landroid/app/Notification;
    :cond_5
    packed-switch p0, :pswitch_data_0

    .line 311
    :pswitch_0
    if-lt p0, v8, :cond_8

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    if-eqz v2, :cond_8

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget v2, v2, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    add-int/lit8 v2, v2, 0x5

    if-eq p0, v2, :cond_8

    const v2, 0x7f0200a0

    if-ne p2, v2, :cond_8

    .line 313
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v3, Lorg/sipdroid/sipua/ui/ChangeAccount;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 318
    :goto_2
    const v2, 0x7f0200a1

    if-ne p2, v2, :cond_6

    .line 319
    iget v2, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v7, Landroid/app/Notification;->flags:I

    .line 320
    const/high16 v2, -0x10000

    iput v2, v7, Landroid/app/Notification;->ledARGB:I

    .line 321
    iput v9, v7, Landroid/app/Notification;->ledOnMS:I

    .line 322
    iput v10, v7, Landroid/app/Notification;->ledOffMS:I

    .line 326
    :cond_6
    :goto_3
    iget v2, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v7, Landroid/app/Notification;->flags:I

    .line 327
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030008

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 329
    .local v0, "contentView":Landroid/widget/RemoteViews;
    const v2, 0x7f080037

    iget v3, v7, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 330
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_9

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (%s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-wide v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 343
    :cond_7
    :goto_4
    iput-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 298
    .end local v0    # "contentView":Landroid/widget/RemoteViews;
    :pswitch_1
    iget v2, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v7, Landroid/app/Notification;->flags:I

    .line 299
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->createMWIIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 301
    iget v2, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v7, Landroid/app/Notification;->flags:I

    .line 302
    const v2, -0xff0100

    iput v2, v7, Landroid/app/Notification;->ledARGB:I

    .line 303
    iput v9, v7, Landroid/app/Notification;->ledOnMS:I

    .line 304
    iput v10, v7, Landroid/app/Notification;->ledOffMS:I

    goto :goto_3

    .line 307
    :pswitch_2
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v3, Lorg/sipdroid/sipua/ui/AutoAnswer;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3

    .line 316
    :cond_8
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v3, Lorg/sipdroid/sipua/ui/Sipdroid;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 332
    .restart local v0    # "contentView":Landroid/widget/RemoteViews;
    :cond_9
    if-lt p0, v8, :cond_b

    .line 333
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pos"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 334
    const v2, 0x7f080039

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v5, 0x7f060057

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    :goto_5
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    if-eqz v2, :cond_7

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget-object v3, v3, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    add-int/lit8 v4, p0, -0x5

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget-object v3, v3, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    add-int/lit8 v4, p0, -0x5

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->realm_orig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 336
    :cond_a
    const v2, 0x7f080039

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 342
    :cond_b
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 347
    .end local v0    # "contentView":Landroid/widget/RemoteViews;
    .end local v7    # "notification":Landroid/app/Notification;
    :cond_c
    invoke-virtual {v6, p0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static on_vpn(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 623
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 625
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "on_vpn"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 627
    return-void
.end method

.method static on_vpn()Z
    .locals 3

    .prologue
    .line 619
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "on_vpn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static pos(Z)V
    .locals 9
    .param p0, "enable"    # Z

    .prologue
    const-wide/32 v7, 0x3d0900

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 398
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->lm:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    sput-object v1, Lorg/sipdroid/sipua/ui/Receiver;->lm:Landroid/location/LocationManager;

    .line 399
    :cond_0
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->am:Landroid/app/AlarmManager;

    if-nez v1, :cond_1

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    sput-object v1, Lorg/sipdroid/sipua/ui/Receiver;->am:Landroid/app/AlarmManager;

    .line 400
    :cond_1
    invoke-static {v5}, Lorg/sipdroid/sipua/ui/Receiver;->pos_gps(Z)V

    .line 401
    if-eqz p0, :cond_3

    .line 402
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v1, :cond_5

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pos"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "posurl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 405
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->lm:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 406
    .local v0, "last":Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lorg/sipdroid/sipua/ui/Receiver;->loctrydate:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-lez v1, :cond_4

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-lez v1, :cond_4

    .line 407
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/sipdroid/sipua/ui/Receiver;->loctrydate:J

    .line 408
    invoke-static {v6}, Lorg/sipdroid/sipua/ui/Receiver;->pos_gps(Z)V

    .line 409
    invoke-static {v5}, Lorg/sipdroid/sipua/ui/Receiver;->pos_net(Z)V

    .line 412
    :goto_0
    invoke-static {v6}, Lorg/sipdroid/sipua/ui/Receiver;->pos_net(Z)V

    .line 416
    .end local v0    # "last":Landroid/location/Location;
    :cond_3
    :goto_1
    return-void

    .line 411
    .restart local v0    # "last":Landroid/location/Location;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&rad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->url(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    .end local v0    # "last":Landroid/location/Location;
    :cond_5
    invoke-static {v5}, Lorg/sipdroid/sipua/ui/Receiver;->pos_net(Z)V

    goto :goto_1
.end method

.method static pos_gps(Z)V
    .locals 7
    .param p0, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 419
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->gps_sender:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 420
    new-instance v6, Landroid/content/Intent;

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v1, Lorg/sipdroid/sipua/ui/OneShotLocation;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .local v6, "intent":Landroid/content/Intent;
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lorg/sipdroid/sipua/ui/Receiver;->gps_sender:Landroid/app/PendingIntent;

    .line 424
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p0, :cond_1

    .line 425
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0x3d0900

    const v4, 0x453b8000    # 3000.0f

    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->gps_sender:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 426
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->am:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->gps_sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->am:Landroid/app/AlarmManager;

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->gps_sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 429
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->lm:Landroid/location/LocationManager;

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->gps_sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static pos_net(Z)V
    .locals 7
    .param p0, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 434
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->net_sender:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 435
    new-instance v6, Landroid/content/Intent;

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-class v1, Lorg/sipdroid/sipua/ui/LoopLocation;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v6, "loopintent":Landroid/content/Intent;
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lorg/sipdroid/sipua/ui/Receiver;->net_sender:Landroid/app/PendingIntent;

    .line 439
    .end local v6    # "loopintent":Landroid/content/Intent;
    :cond_0
    sget-boolean v0, Lorg/sipdroid/sipua/ui/Receiver;->net_enabled:Z

    if-eq v0, p0, :cond_1

    .line 440
    if-eqz p0, :cond_2

    .line 441
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x927c0

    const v4, 0x453b8000    # 3000.0f

    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->net_sender:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 445
    :goto_0
    sput-boolean p0, Lorg/sipdroid/sipua/ui/Receiver;->net_enabled:Z

    .line 447
    :cond_1
    return-void

    .line 443
    :cond_2
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->lm:Landroid/location/LocationManager;

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->net_sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static progress()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 604
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v1, :cond_0

    .line 614
    .local v0, "mode":I
    :goto_0
    return-void

    .line 605
    .end local v0    # "mode":I
    :cond_0
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    .line 606
    .restart local v0    # "mode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 607
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->speakermode()I

    move-result v0

    .line 608
    :cond_1
    if-nez v0, :cond_2

    .line 609
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v2, 0x7f060079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080087

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    iget-wide v3, v3, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-static {v5, v1, v2, v3, v4}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_0

    .line 610
    :cond_2
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    if-lez v1, :cond_3

    .line 611
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008d

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    iget-wide v3, v3, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-static {v5, v1, v2, v3, v4}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_0

    .line 613
    :cond_3
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008c

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    iget-wide v3, v3, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-static {v5, v1, v2, v3, v4}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static declared-synchronized reRegister(I)V
    .locals 6
    .param p0, "renew_time"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 529
    const-class v1, Lorg/sipdroid/sipua/ui/Receiver;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 530
    const-wide/16 v2, 0x0

    :try_start_0
    sput-wide v2, Lorg/sipdroid/sipua/ui/Receiver;->expire_time:J

    .line 535
    :goto_0
    add-int/lit8 v0, p0, -0xf

    const-class v2, Lorg/sipdroid/sipua/ui/OneShotAlarm;

    invoke-static {v0, v2}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_0
    monitor-exit v1

    return-void

    .line 532
    :cond_1
    :try_start_1
    sget-wide v2, Lorg/sipdroid/sipua/ui/Receiver;->expire_time:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    sget-wide v4, Lorg/sipdroid/sipua/ui/Receiver;->expire_time:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 533
    :cond_2
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lorg/sipdroid/sipua/ui/Receiver;->expire_time:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registered()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->pos(Z)V

    .line 386
    return-void
.end method

.method public static speakermode()I
    .locals 1

    .prologue
    .line 667
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    if-lez v0, :cond_0

    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    if-gtz v0, :cond_0

    .line 668
    const/4 v0, 0x0

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static stopRingtone()V
    .locals 2

    .prologue
    .line 142
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->v:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->v:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 144
    :cond_0
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->oRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 145
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->oRingtone:Landroid/media/Ringtone;

    .line 146
    .local v0, "ringtone":Landroid/media/Ringtone;
    const/4 v1, 0x0

    sput-object v1, Lorg/sipdroid/sipua/ui/Receiver;->oRingtone:Landroid/media/Ringtone;

    .line 147
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 149
    :cond_1
    return-void
.end method

.method static updateAutoAnswer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_on_demand"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_demand"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->updateAutoAnswer(I)V

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Receiver;->updateAutoAnswer(I)V

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->updateAutoAnswer(I)V

    goto :goto_0
.end method

.method static updateAutoAnswer(I)V
    .locals 5
    .param p0, "status"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x4

    .line 369
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->autoAnswerState:I

    if-eq p0, v0, :cond_0

    .line 370
    sput p0, Lorg/sipdroid/sipua/ui/Receiver;->autoAnswerState:I

    packed-switch p0, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 372
    :pswitch_0
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v2, v0, v1, v3, v4}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_0

    .line 375
    :pswitch_1
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v2, v0, v1, v3, v4}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_0

    .line 378
    :pswitch_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static url(Ljava/lang/String;)V
    .locals 1
    .param p0, "opt"    # Ljava/lang/String;

    .prologue
    .line 471
    new-instance v0, Lorg/sipdroid/sipua/ui/Receiver$1;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/Receiver$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/Receiver$1;->start()V

    .line 485
    return-void
.end method


# virtual methods
.method asu(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "scan"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 691
    if-nez p1, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    int-to-float v0, v0

    const/high16 v1, 0x42e20000    # 113.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 701
    .local v13, "intentAction":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    if-nez v23, :cond_2

    sput-object p1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    .line 704
    :cond_2
    const-string v23, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 705
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/Receiver;->on_vpn(Z)V

    .line 706
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    goto :goto_0

    .line 708
    :cond_3
    const-string v23, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 712
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    goto :goto_0

    .line 714
    :cond_5
    const-string v23, "vpn.connectivity"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    const-string v23, "connection_state"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 715
    const-string v23, "connection_state"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 716
    .local v20, "state":Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->on_vpn()Z

    move-result v23

    const-string v24, "CONNECTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 717
    const-string v23, "CONNECTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/Receiver;->on_vpn(Z)V

    .line 718
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    .local v6, "arr$":[Lorg/zoolu/sip/provider/SipProvider;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v14, :cond_7

    aget-object v19, v6, v11

    .line 719
    .local v19, "sip_provider":Lorg/zoolu/sip/provider/SipProvider;
    if-eqz v19, :cond_6

    .line 720
    invoke-virtual/range {v19 .. v19}, Lorg/zoolu/sip/provider/SipProvider;->haltConnections()V

    .line 718
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 721
    .end local v19    # "sip_provider":Lorg/zoolu/sip/provider/SipProvider;
    :cond_7
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    goto/16 :goto_0

    .line 724
    .end local v6    # "arr$":[Lorg/zoolu/sip/provider/SipProvider;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v20    # "state":Ljava/lang/String;
    :cond_8
    const-string v23, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 725
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/sipdroid/sipua/SipdroidEngine;->registerMore()V

    goto/16 :goto_0

    .line 727
    :cond_9
    const-string v23, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    const/high16 v23, 0x7f060000

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_c

    .line 729
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->stopRingtone()V

    .line 730
    const-string v23, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sput-wide v23, Lorg/sipdroid/sipua/ui/Receiver;->pstn_time:J

    .line 732
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v24, "IDLE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    sget v23, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eqz v23, :cond_a

    .line 733
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/sipdroid/sipua/ui/Receiver;->broadcastCallStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_a
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v24, "IDLE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    sget v23, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 735
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x3

    const-wide/16 v25, 0x1388

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 736
    :cond_b
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v24, "IDLE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 737
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    sget v23, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 739
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 742
    :cond_c
    const-string v23, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 743
    const-string v23, "android.intent.extra.DOCK_STATE"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    and-int/lit8 v23, v23, 0x7

    sput v23, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    .line 744
    sget v23, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 745
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v23

    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->speakermode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/sipdroid/sipua/SipdroidEngine;->speaker(I)I

    goto/16 :goto_0

    .line 747
    :cond_d
    const-string v23, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 748
    const-string v23, "android.media.extra.SCO_AUDIO_STATE"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    sput v23, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    .line 749
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->progress()V

    .line 750
    const/16 v23, 0x1

    sput-boolean v23, Lorg/sipdroid/media/RtpStreamSender;->changed:Z

    goto/16 :goto_0

    .line 752
    :cond_e
    const-string v23, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 753
    const-string v23, "state"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    sput v23, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    .line 754
    sget v23, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 755
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v23

    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->speakermode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/sipdroid/sipua/SipdroidEngine;->speaker(I)I

    goto/16 :goto_0

    .line 757
    :cond_f
    const-string v23, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 758
    const/16 v23, 0x0

    const-class v24, Lorg/sipdroid/sipua/ui/OwnWifi;

    invoke-static/range {v23 .. v24}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    goto/16 :goto_0

    .line 760
    :cond_10
    const-string v23, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 761
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x2

    const-wide/16 v25, 0xbb8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 763
    :cond_11
    const-string v23, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 764
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 765
    .local v22, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 766
    .local v21, "wi":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v23

    if-nez v23, :cond_14

    .line 768
    :cond_12
    const/16 v23, 0x78

    const-class v24, Lorg/sipdroid/sipua/ui/OwnWifi;

    invoke-static/range {v23 .. v24}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    .line 771
    :goto_2
    sget-object v23, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    if-eqz v23, :cond_0

    .line 772
    sget-object v6, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    .local v6, "arr$":[Landroid/os/PowerManager$WakeLock;
    array-length v14, v6

    .restart local v14    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_3
    if-ge v11, v14, :cond_0

    aget-object v17, v6, v11

    .line 773
    .local v17, "pwl":Landroid/os/PowerManager$WakeLock;
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 774
    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 775
    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 772
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 770
    .end local v6    # "arr$":[Landroid/os/PowerManager$WakeLock;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "pwl":Landroid/os/PowerManager$WakeLock;
    :cond_14
    const/16 v23, 0x384

    const-class v24, Lorg/sipdroid/sipua/ui/OwnWifi;

    invoke-static/range {v23 .. v24}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    goto :goto_2

    .line 778
    .end local v21    # "wi":Landroid/net/wifi/WifiInfo;
    .end local v22    # "wm":Landroid/net/wifi/WifiManager;
    :cond_15
    const-string v23, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 779
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mHandler:Landroid/os/Handler;

    const/16 v24, 0x1

    const-wide/16 v25, 0xbb8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 781
    :cond_16
    const-string v23, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    sget-wide v25, Lorg/sipdroid/sipua/ui/Receiver;->lastscan:J

    const-wide/32 v27, 0xafc8

    add-long v25, v25, v27

    cmp-long v23, v23, v25

    if-lez v23, :cond_0

    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "selectwifi"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 784
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 785
    .restart local v22    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 786
    .restart local v21    # "wi":Landroid/net/wifi/WifiInfo;
    const/4 v3, 0x0

    .line 787
    .local v3, "activeSSID":Ljava/lang/String;
    if-eqz v21, :cond_17

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 788
    :cond_17
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_18

    const/4 v3, 0x0

    .line 789
    :cond_18
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v15

    .line 790
    .local v15, "mScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v10

    .line 791
    .local v10, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v10, :cond_0

    .line 792
    const/4 v7, 0x0

    .local v7, "bestconfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v16, 0x0

    .local v16, "maxconfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 793
    .local v4, "activeconfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 794
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v16, :cond_1a

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1b

    .line 795
    :cond_1a
    move-object/from16 v16, v9

    .line 797
    :cond_1b
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 798
    move-object v4, v9

    goto :goto_4

    .line 800
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1c
    const/4 v8, 0x0

    .local v8, "bestscan":Landroid/net/wifi/ScanResult;
    const/4 v5, 0x0

    .line 801
    .local v5, "activescan":Landroid/net/wifi/ScanResult;
    if-eqz v15, :cond_21

    .line 802
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/ScanResult;

    .line 803
    .local v18, "scan":Landroid/net/wifi/ScanResult;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 804
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1e

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 805
    if-eqz v8, :cond_1f

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v23, v0

    iget v0, v8, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_20

    .line 806
    :cond_1f
    move-object/from16 v8, v18

    .line 807
    move-object v7, v9

    .line 809
    :cond_20
    if-ne v9, v4, :cond_1e

    .line 810
    move-object/from16 v5, v18

    goto :goto_5

    .line 814
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "scan":Landroid/net/wifi/ScanResult;
    :cond_21
    if-eqz v7, :cond_28

    if-eqz v4, :cond_22

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_28

    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/sipdroid/sipua/ui/Receiver;->asu(Landroid/net/wifi/ScanResult;)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/sipdroid/sipua/ui/Receiver;->asu(Landroid/net/wifi/ScanResult;)I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3ff8000000000000L    # 1.5

    mul-double v25, v25, v27

    cmpl-double v23, v23, v25

    if-lez v23, :cond_28

    if-eqz v3, :cond_23

    if-eqz v5, :cond_28

    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/sipdroid/sipua/ui/Receiver;->asu(Landroid/net/wifi/ScanResult;)I

    move-result v23

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_28

    .line 819
    if-eqz v3, :cond_24

    iget-object v0, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_25

    .line 820
    :cond_24
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 821
    :cond_25
    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 822
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 823
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 824
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 825
    if-eqz v3, :cond_26

    iget-object v0, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_27

    .line 826
    :cond_26
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 827
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    sput-wide v23, Lorg/sipdroid/sipua/ui/Receiver;->lastscan:J

    goto/16 :goto_0

    .line 828
    :cond_28
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/sipdroid/sipua/ui/Receiver;->asu(Landroid/net/wifi/ScanResult;)I

    move-result v23

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 829
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 830
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 831
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0
.end method
