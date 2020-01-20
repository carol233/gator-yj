.class public Lorg/sipdroid/media/RtpStreamReceiver;
.super Ljava/lang/Thread;
.source "RtpStreamReceiver.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x400

.field public static DEBUG:Z = false

.field static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final SO_TIMEOUT:I = 0x3e8

.field public static bluetoothmode:Z

.field static codec:Ljava/lang/String;

.field static down_time:J

.field static gain:F

.field public static good:F

.field public static jitter:I

.field public static late:F

.field public static loss:F

.field public static loss2:F

.field public static lost:F

.field public static mu:I

.field public static nearend:I

.field static ogain:F

.field static oldvol:I

.field static restored:Z

.field static ringbackPlayer:Landroid/media/ToneGenerator;

.field static samsung:Z

.field public static speakermode:I

.field public static timeout:I

.field static was_enabled:Z


# instance fields
.field am:Landroid/media/AudioManager;

.field avgcnt:I

.field avgheadroom:D

.field call_recorder:Lorg/sipdroid/media/CallRecorder;

.field cnt:I

.field cnt2:I

.field cr:Landroid/content/ContentResolver;

.field devheadroom:D

.field keepon:Z

.field lockFirst:Z

.field lockLast:Z

.field lserver:I

.field luser:I

.field luser2:I

.field maxjitter:I

.field minjitter:I

.field minjitteradjust:I

.field p_type:Lorg/sipdroid/codecs/Codecs$Map;

.field pwl:Landroid/os/PowerManager$WakeLock;

.field pwl2:Landroid/os/PowerManager$WakeLock;

.field rtp_packet:Lorg/sipdroid/net/RtpPacket;

.field rtp_socket:Lorg/sipdroid/net/RtpSocket;

.field running:Z

.field s:D

.field seq:I

.field smin:D

.field track:Landroid/media/AudioTrack;

.field user:I

.field wwl:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lorg/sipdroid/media/RtpStreamReceiver;->DEBUG:Z

    .line 65
    const-string v0, ""

    sput-object v0, Lorg/sipdroid/media/RtpStreamReceiver;->codec:Ljava/lang/String;

    .line 80
    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    .line 173
    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    return-void
.end method

.method public constructor <init>(Lorg/sipdroid/net/SipdroidSocket;Lorg/sipdroid/codecs/Codecs$Map;Lorg/sipdroid/media/CallRecorder;)V
    .locals 2
    .param p1, "socket"    # Lorg/sipdroid/net/SipdroidSocket;
    .param p2, "payload_type"    # Lorg/sipdroid/codecs/Codecs$Map;
    .param p3, "rec"    # Lorg/sipdroid/media/CallRecorder;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 74
    iput-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    .line 82
    iput-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    .line 209
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->smin:D

    .line 93
    invoke-direct {p0, p1}, Lorg/sipdroid/media/RtpStreamReceiver;->init(Lorg/sipdroid/net/SipdroidSocket;)V

    .line 94
    iput-object p2, p0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    .line 95
    iput-object p3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    .line 96
    return-void
.end method

.method public static adjust(IZ)V
    .locals 11
    .param p0, "keyCode"    # I
    .param p1, "down"    # Z

    .prologue
    const/16 v10, 0x18

    const/high16 v9, 0x40000000    # 2.0f

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 254
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 257
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    if-nez v1, :cond_0

    .line 258
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    xor-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 259
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 260
    :cond_0
    if-eqz p1, :cond_1

    sget-wide v4, Lorg/sipdroid/media/RtpStreamReceiver;->down_time:J

    cmp-long v1, v4, v7

    if-nez v1, :cond_1

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lorg/sipdroid/media/RtpStreamReceiver;->down_time:J

    .line 262
    :cond_1
    if-nez p1, :cond_6

    move v1, v2

    :goto_1
    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    xor-int/2addr v1, v3

    if-eqz v1, :cond_9

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lorg/sipdroid/media/RtpStreamReceiver;->down_time:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v1, v3, v5

    if-gez v1, :cond_9

    .line 264
    if-nez p1, :cond_3

    .line 265
    sput-wide v7, Lorg/sipdroid/media/RtpStreamReceiver;->down_time:J

    .line 266
    :cond_3
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    .line 267
    if-ne p0, v10, :cond_a

    .line 268
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7

    .line 269
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    .line 292
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v1, v3

    .line 258
    goto :goto_0

    :cond_6
    move v1, v3

    .line 262
    goto :goto_1

    .line 272
    :cond_7
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 274
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    div-float/2addr v1, v9

    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    .line 283
    :cond_8
    :goto_3
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v3

    if-ne p0, v10, :cond_c

    move v1, v2

    :goto_4
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 290
    :cond_9
    if-nez p1, :cond_4

    .line 291
    sput-wide v7, Lorg/sipdroid/media/RtpStreamReceiver;->down_time:J

    goto :goto_2

    .line 276
    :cond_a
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_b

    .line 277
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    div-float/2addr v1, v9

    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    goto :goto_2

    .line 280
    :cond_b
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 281
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    goto :goto_3

    .line 283
    :cond_c
    const/4 v1, -0x1

    goto :goto_4
.end method

.method public static byte2int(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 778
    add-int/lit16 v0, p0, 0x100

    rem-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static byte2int(BB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 782
    add-int/lit16 v0, p0, 0x100

    rem-int/lit16 v0, v0, 0x100

    shl-int/lit8 v0, v0, 0x8

    add-int/lit16 v1, p1, 0x100

    rem-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    return v0
.end method

.method static enableBluetooth(Z)V
    .locals 1
    .param p0, "mode"    # Z

    .prologue
    .line 122
    sget-boolean v0, Lorg/sipdroid/media/RtpStreamReceiver;->bluetoothmode:Z

    if-eq v0, p0, :cond_2

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/sipdroid/media/RtpStreamReceiver;->was_enabled:Z

    .line 124
    :cond_1
    sput-boolean p0, Lorg/sipdroid/media/RtpStreamReceiver;->bluetoothmode:Z

    invoke-static {p0}, Lorg/sipdroid/media/Bluetooth;->enable(Z)V

    .line 126
    :cond_2
    return-void
.end method

.method public static getCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lorg/sipdroid/media/RtpStreamReceiver;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public static getMode()I
    .locals 3

    .prologue
    .line 358
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 359
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 360
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 362
    :goto_0
    return v1

    .line 360
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    goto :goto_0
.end method

.method private init(Lorg/sipdroid/net/SipdroidSocket;)V
    .locals 1
    .param p1, "socket"    # Lorg/sipdroid/net/SipdroidSocket;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Lorg/sipdroid/net/RtpSocket;

    invoke-direct {v0, p1}, Lorg/sipdroid/net/RtpSocket;-><init>(Lorg/sipdroid/net/SipdroidSocket;)V

    iput-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    .line 102
    :cond_0
    return-void
.end method

.method public static isBluetoothAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 141
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    if-gtz v1, :cond_0

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    if-lez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->isBluetoothSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lorg/sipdroid/media/Bluetooth;->isAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public static isBluetoothSupported()Z
    .locals 2

    .prologue
    .line 149
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/sipdroid/media/Bluetooth;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method private static println(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 774
    return-void
.end method

.method public static restoreMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 380
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "setmode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 382
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "setmode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v3, "IDLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    :cond_0
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 386
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 387
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 392
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    :goto_0
    return-void

    .line 389
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method public static restoreSettings()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 403
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "oldvalid"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 404
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 405
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 406
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "oldvibrate"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 407
    .local v5, "oldvibrate":I
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "oldvibrate2"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 408
    .local v6, "oldvibrate2":I
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "oldpolicy"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 409
    .local v3, "oldpolicy":I
    invoke-virtual {v0, v11, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 410
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 411
    const-string v9, "wifi_sleep_policy"

    invoke-static {v1, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "oldring"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 413
    .local v4, "oldring":I
    if-lez v4, :cond_0

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v4, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 414
    :cond_0
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 415
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v9, "oldvalid"

    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 418
    .local v7, "pm":Landroid/os/PowerManager;
    const v9, 0x1000000a

    const-string v10, "Sipdroid.RtpStreamReceiver"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    .line 420
    .local v8, "wl":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 422
    :cond_1
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreMode()V

    .line 423
    return-void
.end method

.method public static declared-synchronized ringback(Z)V
    .locals 8
    .param p0, "ringback"    # Z

    .prologue
    const/4 v1, 0x3

    .line 180
    const-class v2, Lorg/sipdroid/media/RtpStreamReceiver;

    monitor-enter v2

    if-eqz p0, :cond_2

    :try_start_0
    sget-object v3, Lorg/sipdroid/media/RtpStreamReceiver;->ringbackPlayer:Landroid/media/ToneGenerator;

    if-nez v3, :cond_2

    .line 181
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 183
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    sput v3, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    .line 184
    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    invoke-static {v3}, Lorg/sipdroid/media/RtpStreamReceiver;->setMode(I)V

    .line 185
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "bluetooth"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lorg/sipdroid/media/RtpStreamReceiver;->enableBluetooth(Z)V

    .line 187
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v3

    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    sget v7, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    if-nez v7, :cond_0

    const/4 v1, 0x4

    :cond_0
    mul-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x4

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 192
    new-instance v1, Landroid/media/ToneGenerator;

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getEarGain()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v1, Lorg/sipdroid/media/RtpStreamReceiver;->ringbackPlayer:Landroid/media/ToneGenerator;

    .line 193
    sget-object v1, Lorg/sipdroid/media/RtpStreamReceiver;->ringbackPlayer:Landroid/media/ToneGenerator;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 194
    :cond_2
    if-nez p0, :cond_1

    :try_start_1
    sget-object v1, Lorg/sipdroid/media/RtpStreamReceiver;->ringbackPlayer:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 195
    sget-object v1, Lorg/sipdroid/media/RtpStreamReceiver;->ringbackPlayer:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 196
    sget-object v1, Lorg/sipdroid/media/RtpStreamReceiver;->ringbackPlayer:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 197
    const/4 v1, 0x0

    sput-object v1, Lorg/sipdroid/media/RtpStreamReceiver;->ringbackPlayer:Landroid/media/ToneGenerator;

    .line 198
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v1, :cond_1

    .line 199
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 201
    .restart local v0    # "am":Landroid/media/AudioManager;
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreMode()V

    .line 202
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/sipdroid/media/RtpStreamReceiver;->enableBluetooth(Z)V

    .line 203
    const/4 v1, 0x3

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 204
    const/4 v1, -0x1

    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "am":Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setMode(I)V
    .locals 5
    .param p0, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 368
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 369
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "setmode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 372
    .local v0, "am":Landroid/media/AudioManager;
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    .line 373
    if-nez p0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 374
    sget-boolean v2, Lorg/sipdroid/media/RtpStreamReceiver;->samsung:Z

    if-eqz v2, :cond_0

    sput-boolean v3, Lorg/sipdroid/media/RtpStreamSender;->changed:Z

    .line 377
    :cond_0
    :goto_1
    return-void

    .line 373
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1
.end method

.method static setStreamVolume(III)V
    .locals 1
    .param p0, "stream"    # I
    .param p1, "vol"    # I
    .param p2, "flags"    # I

    .prologue
    .line 295
    new-instance v0, Lorg/sipdroid/media/RtpStreamReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/sipdroid/media/RtpStreamReceiver$1;-><init>(III)V

    invoke-virtual {v0}, Lorg/sipdroid/media/RtpStreamReceiver$1;->start()V

    .line 302
    return-void
.end method

.method static stream()I
    .locals 2

    .prologue
    .line 176
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method bluetooth()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/sipdroid/media/RtpStreamReceiver;->speaker(I)I

    .line 116
    sget-boolean v0, Lorg/sipdroid/media/RtpStreamReceiver;->bluetoothmode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/sipdroid/media/RtpStreamReceiver;->enableBluetooth(Z)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method calc([SII)V
    .locals 12
    .param p1, "lin"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 214
    const-wide v4, 0x40dd4c0000000000L    # 30000.0

    .line 216
    .local v4, "sm":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 217
    add-int v6, v0, p2

    aget-short v1, p1, v6

    .line 218
    .local v1, "j":I
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3fef0a3d70a3d70aL    # 0.97

    iget-wide v10, p0, Lorg/sipdroid/media/RtpStreamReceiver;->s:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/sipdroid/media/RtpStreamReceiver;->s:D

    .line 219
    iget-wide v6, p0, Lorg/sipdroid/media/RtpStreamReceiver;->s:D

    cmpg-double v6, v6, v4

    if-gez v6, :cond_0

    iget-wide v4, p0, Lorg/sipdroid/media/RtpStreamReceiver;->s:D

    .line 220
    :cond_0
    iget-wide v6, p0, Lorg/sipdroid/media/RtpStreamReceiver;->s:D

    iget-wide v8, p0, Lorg/sipdroid/media/RtpStreamReceiver;->smin:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    sget v6, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v6, v6, 0x1770

    div-int/lit8 v6, v6, 0x5

    sput v6, Lorg/sipdroid/media/RtpStreamReceiver;->nearend:I

    .line 216
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 221
    :cond_2
    sget v6, Lorg/sipdroid/media/RtpStreamReceiver;->nearend:I

    if-lez v6, :cond_1

    sget v6, Lorg/sipdroid/media/RtpStreamReceiver;->nearend:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lorg/sipdroid/media/RtpStreamReceiver;->nearend:I

    goto :goto_1

    .line 223
    .end local v1    # "j":I
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_6

    .line 224
    add-int v6, v0, p2

    aget-short v1, p1, v6

    .line 225
    .restart local v1    # "j":I
    const/16 v6, 0x1996

    if-le v1, v6, :cond_4

    .line 226
    add-int v6, v0, p2

    const/16 v7, 0x7fee

    aput-short v7, p1, v6

    .line 223
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_4
    const/16 v6, -0x1996

    if-ge v1, v6, :cond_5

    .line 228
    add-int v6, v0, p2

    const/16 v7, -0x7fee

    aput-short v7, p1, v6

    goto :goto_3

    .line 230
    :cond_5
    add-int v6, v0, p2

    mul-int/lit8 v7, v1, 0x5

    int-to-short v7, v7

    aput-short v7, p1, v6

    goto :goto_3

    .line 232
    .end local v1    # "j":I
    :cond_6
    int-to-double v6, p3

    const v8, 0x186a0

    sget v9, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 233
    .local v2, "r":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/sipdroid/media/RtpStreamReceiver;->smin:D

    mul-double/2addr v6, v8

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_7

    iget-wide v6, p0, Lorg/sipdroid/media/RtpStreamReceiver;->smin:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    cmpg-double v6, v4, v6

    if-gez v6, :cond_8

    .line 234
    :cond_7
    mul-double v6, v4, v2

    iget-wide v8, p0, Lorg/sipdroid/media/RtpStreamReceiver;->smin:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/sipdroid/media/RtpStreamReceiver;->smin:D

    .line 235
    :cond_8
    return-void
.end method

.method calc2([SII)V
    .locals 4
    .param p1, "lin"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 241
    add-int v2, v0, p2

    aget-short v1, p1, v2

    .line 242
    .local v1, "j":I
    const/16 v2, 0x3fde

    if-le v1, v2, :cond_0

    .line 243
    add-int v2, v0, p2

    const/16 v3, 0x7fbc

    aput-short v3, p1, v2

    .line 240
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/16 v2, -0x3fde

    if-ge v1, v2, :cond_1

    .line 245
    add-int v2, v0, p2

    const/16 v3, -0x7fbc

    aput-short v3, p1, v2

    goto :goto_1

    .line 247
    :cond_1
    add-int v2, v0, p2

    shl-int/lit8 v3, v1, 0x1

    int-to-short v3, v3

    aput-short v3, p1, v2

    goto :goto_1

    .line 249
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method cleanupBluetooth()V
    .locals 2

    .prologue
    .line 129
    sget-boolean v0, Lorg/sipdroid/media/RtpStreamReceiver;->was_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/sipdroid/media/RtpStreamReceiver;->enableBluetooth(Z)V

    .line 132
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 138
    :cond_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method empty()V
    .locals 2

    .prologue
    .line 433
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v0}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/SipdroidSocket;->setSoTimeout(I)V

    .line 435
    :goto_0
    iget-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_packet:Lorg/sipdroid/net/RtpPacket;

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpSocket;->receive(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 441
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v0}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/SipdroidSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->seq:I

    .line 446
    return-void

    .line 442
    :catch_1
    move-exception v0

    goto :goto_2

    .line 438
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->running:Z

    .line 112
    return-void
.end method

.method initMode()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 395
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SAMSUNG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SPH-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lorg/sipdroid/media/RtpStreamReceiver;->samsung:Z

    .line 397
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-ne v0, v2, :cond_2

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v2, "IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    :cond_1
    invoke-static {v1}, Lorg/sipdroid/media/RtpStreamReceiver;->setMode(I)V

    .line 400
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 395
    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->running:Z

    return v0
.end method

.method lock(Z)V
    .locals 7
    .param p1, "lock"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 496
    if-eqz p1, :cond_6

    .line 497
    :try_start_0
    iget-boolean v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->keepon:Z

    if-nez v3, :cond_0

    sget v3, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    sget v3, Lorg/sipdroid/media/RtpStreamSender;->delay:I

    if-eqz v3, :cond_1

    :cond_0
    move v0, v4

    .line 500
    .local v0, "lockNew":Z
    :cond_1
    iget-boolean v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->lockFirst:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->lockLast:Z

    if-eq v3, v0, :cond_3

    .line 501
    :cond_2
    iput-boolean v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->lockLast:Z

    .line 502
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/sipdroid/media/RtpStreamReceiver;->lock(Z)V

    .line 503
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->lockFirst:Z

    .line 504
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_3

    .line 505
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 506
    .local v1, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_5

    const v3, 0x10000006

    :goto_0
    const-string v5, "Sipdroid.Receiver"

    invoke-virtual {v1, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl:Landroid/os/PowerManager$WakeLock;

    .line 507
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v0    # "lockNew":Z
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    .line 520
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl2:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_4

    .line 521
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 522
    .restart local v1    # "pm":Landroid/os/PowerManager;
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 523
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    const-string v3, "Sipdroid.Receiver"

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl2:Landroid/os/PowerManager$WakeLock;

    .line 524
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl2:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 525
    const/4 v3, 0x3

    const-string v4, "Sipdroid.Receiver"

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->wwl:Landroid/net/wifi/WifiManager$WifiLock;

    .line 526
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->wwl:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 533
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    :cond_4
    :goto_2
    return-void

    .line 506
    .restart local v0    # "lockNew":Z
    .restart local v1    # "pm":Landroid/os/PowerManager;
    :cond_5
    const/16 v3, 0x20

    goto :goto_0

    .line 511
    .end local v0    # "lockNew":Z
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_6
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->lockFirst:Z

    .line 512
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    .line 513
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 514
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 517
    :catch_0
    move-exception v3

    goto :goto_1

    .line 528
    :cond_7
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl2:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    .line 529
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl2:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 530
    iput-object v6, p0, Lorg/sipdroid/media/RtpStreamReceiver;->pwl2:Landroid/os/PowerManager$WakeLock;

    .line 531
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->wwl:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_2
.end method

.method newjitter(Z)V
    .locals 8
    .param p1, "inc"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 536
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_0

    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    div-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v3, v5

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-wide v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->devheadroom:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v1, v3

    mul-int/lit8 v3, v1, 0x5

    if-eqz p1, :cond_6

    iget v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->minjitteradjust:I

    :goto_1
    add-int v0, v3, v1

    .line 539
    .local v0, "newjitter":I
    iget v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->minjitter:I

    if-ge v0, v1, :cond_2

    .line 540
    iget v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->minjitter:I

    .line 541
    :cond_2
    iget v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    if-le v0, v1, :cond_3

    .line 542
    iget v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    .line 543
    :cond_3
    if-nez p1, :cond_4

    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lorg/sipdroid/media/RtpStreamReceiver;->minjitteradjust:I

    if-lt v1, v3, :cond_0

    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    if-ge v0, v1, :cond_0

    .line 545
    :cond_4
    if-eqz p1, :cond_5

    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    if-le v0, v1, :cond_0

    .line 547
    :cond_5
    sput v0, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    .line 548
    sput v7, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    .line 549
    iput v2, p0, Lorg/sipdroid/media/RtpStreamReceiver;->avgcnt:I

    .line 550
    iget v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    iput v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->luser2:I

    goto :goto_0

    .end local v0    # "newjitter":I
    :cond_6
    move v1, v2

    .line 538
    goto :goto_1
.end method

.method restoreVolume()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 308
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v2

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    if-nez v1, :cond_3

    const/4 v1, 0x4

    :goto_1
    mul-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1, v6}, Lorg/sipdroid/media/RtpStreamReceiver;->setStreamVolume(III)V

    .line 329
    return-void

    .line 310
    :pswitch_1
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "oldring"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 311
    .local v0, "oldring":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getEarGain()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v3, v1, v6}, Lorg/sipdroid/media/RtpStreamReceiver;->setStreamVolume(III)V

    .line 314
    :cond_1
    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getEarGain()F

    move-result v3

    mul-float/2addr v3, v5

    sput v3, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    mul-float/2addr v2, v3

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getEarGain()F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 318
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    :cond_2
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->ogain:F

    sput v1, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    goto/16 :goto_0

    .line 321
    .end local v0    # "oldring":I
    :pswitch_2
    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto/16 :goto_0

    .line 324
    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 26

    .prologue
    .line 557
    sget-object v20, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "nodata"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 558
    .local v15, "nodata":Z
    sget-object v20, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "keepon"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->keepon:Z

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 561
    sget-boolean v20, Lorg/sipdroid/media/RtpStreamReceiver;->DEBUG:Z

    if-eqz v20, :cond_0

    .line 562
    const-string v20, "ERROR: RTP socket is null"

    invoke-static/range {v20 .. v20}, Lorg/sipdroid/media/RtpStreamReceiver;->println(Ljava/lang/String;)V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const/16 v20, 0x40c

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 567
    .local v3, "buffer":[B
    new-instance v20, Lorg/sipdroid/net/RtpPacket;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lorg/sipdroid/net/RtpPacket;-><init>([BI)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_packet:Lorg/sipdroid/net/RtpPacket;

    .line 569
    sget-boolean v20, Lorg/sipdroid/media/RtpStreamReceiver;->DEBUG:Z

    if-eqz v20, :cond_2

    .line 570
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reading blocks of max "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v3

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/sipdroid/media/RtpStreamReceiver;->println(Ljava/lang/String;)V

    .line 572
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->running:Z

    .line 573
    sget-object v20, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "bluetooth"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Lorg/sipdroid/media/RtpStreamReceiver;->enableBluetooth(Z)V

    .line 575
    const/16 v20, 0x0

    sput-boolean v20, Lorg/sipdroid/media/RtpStreamReceiver;->restored:Z

    .line 577
    const/16 v20, -0x10

    invoke-static/range {v20 .. v20}, Landroid/os/Process;->setThreadPriority(I)V

    .line 578
    sget-object v20, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    .line 579
    sget-object v20, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->cr:Landroid/content/ContentResolver;

    .line 580
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->saveSettings()V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "wifi_sleep_policy"

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 584
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v20

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    .line 585
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->initMode()V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->setCodec()V

    .line 587
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v12, v0, [S

    .line 588
    .local v12, "lin":[S
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v13, v0, [S

    .line 589
    .local v13, "lin2":[S
    const/4 v11, 0x0

    .local v11, "len":I
    const/4 v14, 0x1

    .local v14, "m":I
    const/16 v19, 0x1

    .line 590
    .local v19, "vm":I
    new-instance v17, Landroid/media/ToneGenerator;

    const/16 v20, 0x0

    const/high16 v21, 0x43480000    # 200.0f

    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getEarGain()F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 591
    .local v17, "tg":Landroid/media/ToneGenerator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->play()V

    .line 592
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->empty()V

    .line 594
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->lockFirst:Z

    .line 595
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->running:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 596
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->lock(Z)V

    .line 597
    sget v20, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 598
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->lock(Z)V

    .line 599
    invoke-virtual/range {v17 .. v17}, Landroid/media/ToneGenerator;->stopTone()V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->pause()V

    .line 601
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->running:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    sget v20, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 603
    const-wide/16 v20, 0x3e8

    :try_start_0
    invoke-static/range {v20 .. v21}, Lorg/sipdroid/media/RtpStreamReceiver;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 604
    :catch_0
    move-exception v20

    goto :goto_2

    .line 607
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->play()V

    .line 608
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 609
    const/16 v20, 0x1

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    .line 610
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    move/from16 v0, v20

    mul-int/lit16 v0, v0, -0x1f40

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->luser2:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->luser:I

    .line 613
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_packet:Lorg/sipdroid/net/RtpPacket;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/sipdroid/net/RtpSocket;->receive(Lorg/sipdroid/net/RtpPacket;)V

    .line 614
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    if-eqz v20, :cond_9

    .line 615
    invoke-virtual/range {v17 .. v17}, Landroid/media/ToneGenerator;->stopTone()V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->pause()V

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    move/from16 v20, v0

    mul-int/lit8 v10, v20, 0x4

    .local v10, "i":I
    :goto_3
    if-lez v10, :cond_8

    .line 618
    const/16 v21, 0x0

    const/16 v20, 0x400

    move/from16 v0, v20

    if-le v10, v0, :cond_7

    const/16 v20, 0x400

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lorg/sipdroid/media/RtpStreamReceiver;->write([SII)V

    .line 617
    add-int/lit16 v10, v10, -0x400

    goto :goto_3

    :cond_7
    move/from16 v20, v10

    .line 618
    goto :goto_4

    .line 619
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->play()V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->empty()V

    .line 623
    .end local v10    # "i":I
    :cond_9
    const/16 v20, 0x0

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 634
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->running:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    if-nez v20, :cond_4

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_packet:Lorg/sipdroid/net/RtpPacket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/sipdroid/net/RtpPacket;->getSequenceNumber()I

    move-result v8

    .line 636
    .local v8, "gseq":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->seq:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_f

    .line 637
    add-int/lit8 v14, v14, 0x1

    .line 638
    goto/16 :goto_1

    .line 624
    .end local v8    # "gseq":I
    :catch_1
    move-exception v4

    .line 625
    .local v4, "e":Ljava/io/IOException;
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    if-nez v20, :cond_b

    if-eqz v15, :cond_b

    .line 626
    const/16 v20, 0x17

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 628
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/sipdroid/net/SipdroidSocket;->disconnect()V

    .line 629
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    const/16 v21, 0x3c

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 630
    sget-object v20, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/sipdroid/sipua/SipdroidEngine;->rejectcall()V

    .line 742
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->lock(Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->stop()V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->release()V

    .line 745
    invoke-virtual/range {v17 .. v17}, Landroid/media/ToneGenerator;->stopTone()V

    .line 746
    invoke-virtual/range {v17 .. v17}, Landroid/media/ToneGenerator;->release()V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->saveVolume()V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    sget v22, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 749
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreSettings()V

    .line 750
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lorg/sipdroid/media/RtpStreamReceiver;->enableBluetooth(Z)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    sget v22, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 752
    const/16 v20, -0x1

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->oldvol:I

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/sipdroid/codecs/Codec;->close()V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/sipdroid/net/RtpSocket;->close()V

    .line 755
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    .line 756
    const-string v20, ""

    sput-object v20, Lorg/sipdroid/media/RtpStreamReceiver;->codec:Ljava/lang/String;

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/sipdroid/media/CallRecorder;->stopIncoming()V

    .line 762
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    .line 765
    :cond_d
    sget-boolean v20, Lorg/sipdroid/media/RtpStreamReceiver;->DEBUG:Z

    if-eqz v20, :cond_e

    .line 766
    const-string v20, "rtp receiver terminated"

    invoke-static/range {v20 .. v20}, Lorg/sipdroid/media/RtpStreamReceiver;->println(Ljava/lang/String;)V

    .line 768
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->cleanupBluetooth()V

    goto/16 :goto_0

    .line 640
    .restart local v8    # "gseq":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->seq:I

    move/from16 v20, v0

    sub-int v20, v8, v20

    move/from16 v0, v20

    and-int/lit16 v6, v0, 0xff

    .line 641
    .local v6, "gap":I
    const/16 v20, 0xf0

    move/from16 v0, v20

    if-gt v6, v0, :cond_4

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v16

    .line 644
    .local v16, "server":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    move/from16 v20, v0

    sub-int v9, v20, v16

    .line 646
    .local v9, "headroom":I
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    if-le v9, v0, :cond_22

    .line 647
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    move/from16 v20, v0

    add-int v20, v20, v11

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    .line 651
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->lserver:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_23

    .line 652
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt2:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->cnt2:I

    .line 656
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    move/from16 v20, v0

    sget v21, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x1f4

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt2:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    sub-int v20, v9, v20

    move/from16 v0, v20

    if-lt v0, v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v20

    if-eqz v20, :cond_13

    .line 658
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_packet:Lorg/sipdroid/net/RtpPacket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/sipdroid/net/RtpPacket;->getPayloadType()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_packet:Lorg/sipdroid/net/RtpPacket;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/sipdroid/net/RtpPacket;->getPayloadType()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/sipdroid/codecs/Codecs$Map;->change(I)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 659
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->saveVolume()V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->setCodec()V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreVolume()V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/sipdroid/codecs/Codec;->getTitle()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lorg/sipdroid/media/RtpStreamReceiver;->codec:Ljava/lang/String;

    .line 664
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->rtp_packet:Lorg/sipdroid/net/RtpPacket;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/sipdroid/net/RtpPacket;->getPayloadLength()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v0, v3, v12, v1}, Lorg/sipdroid/codecs/Codec;->decode([B[SI)I

    move-result v11

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1, v11}, Lorg/sipdroid/media/CallRecorder;->writeIncoming([SII)V

    .line 671
    :cond_12
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    if-nez v20, :cond_24

    .line 672
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1, v11}, Lorg/sipdroid/media/RtpStreamReceiver;->calc([SII)V

    .line 677
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    move/from16 v20, v0

    if-nez v20, :cond_14

    .line 678
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->avgheadroom:D

    move-wide/from16 v20, v0

    const-wide v22, 0x3fefae147ae147aeL    # 0.99

    mul-double v20, v20, v22

    int-to-double v0, v9

    move-wide/from16 v22, v0

    const-wide v24, 0x3f847ae147ae147bL    # 0.01

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/sipdroid/media/RtpStreamReceiver;->avgheadroom:D

    .line 679
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->avgcnt:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->avgcnt:I

    const/16 v21, 0x12c

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    .line 680
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->devheadroom:D

    move-wide/from16 v20, v0

    const-wide v22, 0x3feff7ced916872bL    # 0.999

    mul-double v20, v20, v22

    int-to-double v0, v9

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->avgheadroom:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v24, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/sipdroid/media/RtpStreamReceiver;->devheadroom:D

    .line 682
    :cond_15
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0xfa

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_18

    .line 683
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->avgcnt:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0xa

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->avgcnt:I

    .line 685
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->avgcnt:I

    move/from16 v20, v0

    const/16 v21, 0x190

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    .line 686
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->newjitter(Z)V

    .line 687
    :cond_16
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    sub-int v18, v20, v9

    .line 688
    .local v18, "todo":I
    const/16 v20, 0x0

    const/16 v21, 0x400

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_17

    const/16 v18, 0x400

    .end local v18    # "todo":I
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Lorg/sipdroid/media/RtpStreamReceiver;->write([SII)V

    .line 691
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    move/from16 v20, v0

    sget v21, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x1f4

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt2:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_25

    .line 692
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    sub-int v18, v9, v20

    .line 693
    .restart local v18    # "todo":I
    move/from16 v0, v18

    if-ge v0, v11, :cond_19

    .line 694
    sub-int v20, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Lorg/sipdroid/media/RtpStreamReceiver;->write([SII)V

    .line 698
    .end local v18    # "todo":I
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->seq:I

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    .line 699
    and-int/lit16 v7, v8, 0xff

    .line 700
    .local v7, "getseq":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->seq:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->seq:I

    move/from16 v0, v20

    and-int/lit16 v5, v0, 0xff

    .line 701
    .local v5, "expseq":I
    sget v20, Lorg/sipdroid/media/RtpStreamSender;->m:I

    move/from16 v0, v20

    if-ne v14, v0, :cond_1a

    move/from16 v19, v14

    .line 702
    :cond_1a
    sub-int v20, v7, v5

    move/from16 v0, v20

    and-int/lit16 v6, v0, 0xff

    .line 703
    if-lez v6, :cond_26

    .line 704
    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v6, v0, :cond_1b

    const/4 v6, 0x1

    .line 705
    :cond_1b
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    int-to-float v0, v6

    move/from16 v21, v0

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    .line 706
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    int-to-float v0, v6

    move/from16 v21, v0

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    .line 707
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    add-int/lit8 v21, v6, -0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    .line 708
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss2:F

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss2:F

    .line 715
    :cond_1c
    :goto_9
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    .line 716
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    const/high16 v21, 0x42dc0000    # 110.0f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1d

    .line 717
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fefae147ae147aeL    # 0.99

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    .line 718
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fefae147ae147aeL    # 0.99

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    .line 719
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fefae147ae147aeL    # 0.99

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    .line 720
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss2:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fefae147ae147aeL    # 0.99

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss2:F

    .line 721
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fefae147ae147aeL    # 0.99

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    .line 724
    .end local v5    # "expseq":I
    .end local v7    # "getseq":I
    :cond_1d
    const/4 v14, 0x1

    .line 725
    move-object/from16 v0, p0

    iput v8, v0, Lorg/sipdroid/media/RtpStreamReceiver;->seq:I

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->luser:I

    move/from16 v21, v0

    sget v22, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x1f40

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_21

    sget v20, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    sget v20, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 730
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->luser:I

    move/from16 v20, v0

    sget v21, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    move/from16 v0, v21

    mul-int/lit16 v0, v0, -0x1f40

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->getMode()I

    move-result v20

    sget v21, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_20

    .line 731
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->saveVolume()V

    .line 732
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    invoke-static/range {v20 .. v20}, Lorg/sipdroid/media/RtpStreamReceiver;->setMode(I)V

    .line 733
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreVolume()V

    .line 735
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->luser:I

    .line 736
    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/media/RtpStreamReceiver;->luser2:I

    move/from16 v21, v0

    const v22, 0x27100

    sget v23, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int v22, v22, v23

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_21

    .line 737
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->newjitter(Z)V

    .line 739
    :cond_21
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->lserver:I

    goto/16 :goto_1

    .line 649
    :cond_22
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    goto/16 :goto_5

    .line 654
    :cond_23
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sipdroid/media/RtpStreamReceiver;->cnt2:I

    goto/16 :goto_6

    .line 673
    :cond_24
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->gain:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_13

    .line 674
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1, v11}, Lorg/sipdroid/media/RtpStreamReceiver;->calc2([SII)V

    goto/16 :goto_7

    .line 696
    :cond_25
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1, v11}, Lorg/sipdroid/media/RtpStreamReceiver;->write([SII)V

    goto/16 :goto_8

    .line 710
    .restart local v5    # "expseq":I
    .restart local v7    # "getseq":I
    :cond_26
    move/from16 v0, v19

    if-ge v14, v0, :cond_1c

    .line 711
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    .line 712
    sget v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss2:F

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    sput v20, Lorg/sipdroid/media/RtpStreamReceiver;->loss2:F

    goto/16 :goto_9
.end method

.method saveSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 340
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "oldvalid"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    iget-object v4, p0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 342
    .local v2, "oldvibrate":I
    iget-object v4, p0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    .line 343
    .local v3, "oldvibrate2":I
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "oldvibrate2"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    const/4 v3, 0x1

    .line 345
    :cond_0
    iget-object v4, p0, Lorg/sipdroid/media/RtpStreamReceiver;->cr:Landroid/content/ContentResolver;

    const-string v5, "wifi_sleep_policy"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 347
    .local v1, "oldpolicy":I
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "oldvibrate"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string v4, "oldvibrate2"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 350
    const-string v4, "oldpolicy"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    const-string v4, "oldring"

    iget-object v5, p0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    const-string v4, "oldvalid"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "oldpolicy":I
    .end local v2    # "oldvibrate":I
    .end local v3    # "oldvibrate2":I
    :cond_1
    return-void
.end method

.method saveVolume()V
    .locals 4

    .prologue
    .line 332
    sget-boolean v1, Lorg/sipdroid/media/RtpStreamReceiver;->restored:Z

    if-eqz v1, :cond_0

    .line 333
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/media/RtpStreamReceiver;->am:Landroid/media/AudioManager;

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method setCodec()V
    .locals 8

    .prologue
    .line 455
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->init()V

    .line 459
    iget-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->getTitle()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/sipdroid/media/RtpStreamReceiver;->codec:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f40

    sput v0, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    .line 461
    iget-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v0, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    .line 464
    iget v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v1, v1, 0x6000

    if-ge v0, v1, :cond_0

    .line 465
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v0, v0, 0x6000

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    .line 466
    :cond_0
    iget-object v7, p0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    .line 467
    .local v7, "oldtrack":Landroid/media/AudioTrack;
    new-instance v0, Landroid/media/AudioTrack;

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v1

    iget-object v2, p0, Lorg/sipdroid/media/RtpStreamReceiver;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v2, v2, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v2}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    .line 469
    iget v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->maxjitter:I

    .line 470
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->minjitteradjust:I

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->minjitter:I

    .line 471
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v0, v0, 0x36b

    sput v0, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    .line 472
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    div-int/lit8 v0, v0, 0x5

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->devheadroom:D

    .line 473
    const/4 v0, 0x1

    sput v0, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    .line 474
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v0, v0, -0x1f40

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->luser2:I

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->luser:I

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->lserver:I

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt2:I

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->cnt:I

    .line 476
    if-eqz v7, :cond_1

    .line 477
    invoke-virtual {v7}, Landroid/media/AudioTrack;->stop()V

    .line 478
    invoke-virtual {v7}, Landroid/media/AudioTrack;->release()V

    .line 480
    :cond_1
    monitor-exit p0

    .line 481
    return-void

    .line 480
    .end local v7    # "oldtrack":Landroid/media/AudioTrack;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public speaker(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 155
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    .line 157
    .local v0, "old":I
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    if-gtz v1, :cond_0

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    if-gtz v1, :cond_0

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    if-lez v1, :cond_2

    :cond_0
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->speakermode()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 169
    :cond_1
    :goto_0
    return v0

    .line 160
    :cond_2
    if-eq p1, v0, :cond_1

    .line 162
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/sipdroid/media/RtpStreamReceiver;->enableBluetooth(Z)V

    .line 163
    invoke-virtual {p0}, Lorg/sipdroid/media/RtpStreamReceiver;->saveVolume()V

    .line 164
    sput p1, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    invoke-static {p1}, Lorg/sipdroid/media/RtpStreamReceiver;->setMode(I)V

    .line 165
    invoke-virtual {p0}, Lorg/sipdroid/media/RtpStreamReceiver;->setCodec()V

    .line 166
    invoke-virtual {p0}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreVolume()V

    .line 167
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "main"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v2, 0x7f06008e

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method write([SII)V
    .locals 2
    .param p1, "a"    # [S
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    iget v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamReceiver;->track:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/sipdroid/media/RtpStreamReceiver;->user:I

    .line 486
    monitor-exit p0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
