.class public Lorg/sipdroid/media/RtpStreamSender;
.super Ljava/lang/Thread;
.source "RtpStreamSender.java"


# static fields
.field public static DEBUG:Z

.field public static changed:Z

.field public static delay:I

.field public static m:I

.field private static rtpEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field call_recorder:Lorg/sipdroid/media/CallRecorder;

.field do_sync:Z

.field dtmf:Ljava/lang/String;

.field dtmf_payload_type:I

.field frame_rate:I

.field frame_size:I

.field mu:I

.field muted:Z

.field nearend:I

.field p_type:Lorg/sipdroid/codecs/Codecs$Map;

.field random:Ljava/util/Random;

.field rtp_socket:Lorg/sipdroid/net/RtpSocket;

.field running:Z

.field s:D

.field smin:D

.field sync_adj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lorg/sipdroid/media/RtpStreamSender;->DEBUG:Z

    .line 91
    new-instance v0, Lorg/sipdroid/media/RtpStreamSender$1;

    invoke-direct {v0}, Lorg/sipdroid/media/RtpStreamSender$1;-><init>()V

    sput-object v0, Lorg/sipdroid/media/RtpStreamSender;->rtpEventMap:Ljava/util/HashMap;

    .line 191
    const/4 v0, 0x0

    sput v0, Lorg/sipdroid/media/RtpStreamSender;->delay:I

    return-void
.end method

.method public constructor <init>(ZLorg/sipdroid/codecs/Codecs$Map;JILorg/sipdroid/net/SipdroidSocket;Ljava/lang/String;ILorg/sipdroid/media/CallRecorder;)V
    .locals 3
    .param p1, "do_sync"    # Z
    .param p2, "payload_type"    # Lorg/sipdroid/codecs/Codecs$Map;
    .param p3, "frame_rate"    # J
    .param p5, "frame_size"    # I
    .param p6, "src_socket"    # Lorg/sipdroid/net/SipdroidSocket;
    .param p7, "dest_addr"    # Ljava/lang/String;
    .param p8, "dest_port"    # I
    .param p9, "rec"    # Lorg/sipdroid/media/CallRecorder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 59
    iput-object v2, p0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/media/RtpStreamSender;->do_sync:Z

    .line 81
    iput v1, p0, Lorg/sipdroid/media/RtpStreamSender;->sync_adj:I

    .line 84
    iput-boolean v1, p0, Lorg/sipdroid/media/RtpStreamSender;->running:Z

    .line 85
    iput-boolean v1, p0, Lorg/sipdroid/media/RtpStreamSender;->muted:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    .line 89
    const/16 v0, 0x65

    iput v0, p0, Lorg/sipdroid/media/RtpStreamSender;->dtmf_payload_type:I

    .line 111
    iput-object v2, p0, Lorg/sipdroid/media/RtpStreamSender;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    .line 200
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lorg/sipdroid/media/RtpStreamSender;->smin:D

    .line 141
    invoke-direct/range {p0 .. p8}, Lorg/sipdroid/media/RtpStreamSender;->init(ZLorg/sipdroid/codecs/Codecs$Map;JILorg/sipdroid/net/SipdroidSocket;Ljava/lang/String;I)V

    .line 143
    iput-object p9, p0, Lorg/sipdroid/media/RtpStreamSender;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    .line 144
    return-void
.end method

.method private init(ZLorg/sipdroid/codecs/Codecs$Map;JILorg/sipdroid/net/SipdroidSocket;Ljava/lang/String;I)V
    .locals 3
    .param p1, "do_sync"    # Z
    .param p2, "payload_type"    # Lorg/sipdroid/codecs/Codecs$Map;
    .param p3, "frame_rate"    # J
    .param p5, "frame_size"    # I
    .param p6, "src_socket"    # Lorg/sipdroid/net/SipdroidSocket;
    .param p7, "dest_addr"    # Ljava/lang/String;
    .param p8, "dest_port"    # I

    .prologue
    .line 151
    iput-object p2, p0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    .line 152
    long-to-int v0, p3

    iput v0, p0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    .line 153
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pbxes.org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p2, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 163
    iput p5, p0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    .line 168
    :goto_0
    iput-boolean p1, p0, Lorg/sipdroid/media/RtpStreamSender;->do_sync:Z

    .line 170
    :try_start_0
    new-instance v0, Lorg/sipdroid/net/RtpSocket;

    invoke-static {p7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p6, v1, p8}, Lorg/sipdroid/net/RtpSocket;-><init>(Lorg/sipdroid/net/SipdroidSocket;Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    return-void

    .line 157
    :sswitch_0
    const/16 v0, 0x400

    iput v0, p0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    goto :goto_0

    .line 160
    :sswitch_1
    const/16 v0, 0x3c0

    iput v0, p0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    goto :goto_0

    .line 167
    :cond_0
    iput p5, p0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    goto :goto_1

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private static println(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 529
    return-void
.end method


# virtual methods
.method calc([SII)V
    .locals 12
    .param p1, "lin"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 205
    const-wide v4, 0x40dd4c0000000000L    # 30000.0

    .line 207
    .local v4, "sm":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 208
    add-int v6, v0, p2

    aget-short v1, p1, v6

    .line 209
    .local v1, "j":I
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3fef0a3d70a3d70aL    # 0.97

    iget-wide v10, p0, Lorg/sipdroid/media/RtpStreamSender;->s:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/sipdroid/media/RtpStreamSender;->s:D

    .line 210
    iget-wide v6, p0, Lorg/sipdroid/media/RtpStreamSender;->s:D

    cmpg-double v6, v6, v4

    if-gez v6, :cond_0

    iget-wide v4, p0, Lorg/sipdroid/media/RtpStreamSender;->s:D

    .line 211
    :cond_0
    iget-wide v6, p0, Lorg/sipdroid/media/RtpStreamSender;->s:D

    iget-wide v8, p0, Lorg/sipdroid/media/RtpStreamSender;->smin:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    iget v6, p0, Lorg/sipdroid/media/RtpStreamSender;->mu:I

    mul-int/lit16 v6, v6, 0xbb8

    div-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/sipdroid/media/RtpStreamSender;->nearend:I

    .line 207
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 212
    :cond_2
    iget v6, p0, Lorg/sipdroid/media/RtpStreamSender;->nearend:I

    if-lez v6, :cond_1

    iget v6, p0, Lorg/sipdroid/media/RtpStreamSender;->nearend:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/sipdroid/media/RtpStreamSender;->nearend:I

    goto :goto_1

    .line 214
    .end local v1    # "j":I
    :cond_3
    int-to-double v6, p3

    const v8, 0x186a0

    iget v9, p0, Lorg/sipdroid/media/RtpStreamSender;->mu:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 215
    .local v2, "r":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/sipdroid/media/RtpStreamSender;->smin:D

    mul-double/2addr v6, v8

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_4

    iget-wide v6, p0, Lorg/sipdroid/media/RtpStreamSender;->smin:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    .line 216
    :cond_4
    mul-double v6, v4, v2

    iget-wide v8, p0, Lorg/sipdroid/media/RtpStreamSender;->smin:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/sipdroid/media/RtpStreamSender;->smin:D

    .line 217
    :cond_5
    return-void
.end method

.method calc1([SII)V
    .locals 4
    .param p1, "lin"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 223
    add-int v2, v0, p2

    aget-short v1, p1, v2

    .line 224
    .local v1, "j":I
    add-int v2, v0, p2

    shr-int/lit8 v3, v1, 0x2

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method calc10([SII)V
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

.method calc2([SII)V
    .locals 4
    .param p1, "lin"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 232
    add-int v2, v0, p2

    aget-short v1, p1, v2

    .line 233
    .local v1, "j":I
    add-int v2, v0, p2

    shr-int/lit8 v3, v1, 0x1

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/media/RtpStreamSender;->running:Z

    .line 197
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/sipdroid/media/RtpStreamSender;->running:Z

    return v0
.end method

.method public mute()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/sipdroid/media/RtpStreamSender;->muted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/sipdroid/media/RtpStreamSender;->muted:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method noise([SIID)V
    .locals 5
    .param p1, "lin"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "power"    # D

    .prologue
    .line 252
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, p4

    double-to-int v1, v3

    .line 255
    .local v1, "r":I
    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 256
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 257
    iget-object v3, p0, Lorg/sipdroid/media/RtpStreamSender;->random:Ljava/util/Random;

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-short v2, v3

    .line 258
    .local v2, "ran":S
    add-int v3, v0, p2

    aput-short v2, p1, v3

    .line 259
    add-int v3, v0, p2

    add-int/lit8 v3, v3, 0x1

    aput-short v2, p1, v3

    .line 260
    add-int v3, v0, p2

    add-int/lit8 v3, v3, 0x2

    aput-short v2, p1, v3

    .line 261
    add-int v3, v0, p2

    add-int/lit8 v3, v3, 0x3

    aput-short v2, p1, v3

    .line 256
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 263
    .end local v2    # "ran":S
    :cond_1
    return-void
.end method

.method public run()V
    .locals 49

    .prologue
    .line 270
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/net/wifi/WifiManager;

    .line 271
    .local v48, "wm":Landroid/net/wifi/WifiManager;
    const-wide/16 v30, 0x0

    .local v30, "lastscan":J
    const-wide/16 v32, 0x0

    .line 273
    .local v32, "lastsent":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    if-nez v4, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/16 v44, 0x0

    .line 276
    .local v44, "seqn":I
    const-wide/16 v46, 0x0

    .line 277
    .local v46, "time":J
    const-wide/16 v39, 0x0

    .line 278
    .local v39, "p":D
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "improve"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 279
    .local v27, "improve":Z
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "selectwifi"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 280
    .local v43, "selectWifi":Z
    const/16 v34, 0x0

    .line 281
    .local v34, "micgain":I
    const-wide/16 v28, 0x0

    .line 284
    .local v28, "last_tx_time":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/sipdroid/media/RtpStreamSender;->running:Z

    .line 285
    const/4 v4, 0x1

    sput v4, Lorg/sipdroid/media/RtpStreamSender;->m:I

    .line 286
    const/16 v19, 0x4

    .line 288
    .local v19, "dtframesize":I
    const/16 v4, -0x13

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f40

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->mu:I

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 293
    .local v8, "min":I
    const/16 v4, 0x280

    if-ne v8, v4, :cond_a

    .line 294
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    const/16 v5, 0x3c0

    if-ne v4, v5, :cond_2

    const/16 v4, 0x140

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    const/16 v5, 0x400

    if-ne v4, v5, :cond_3

    const/16 v4, 0xa0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    .line 296
    :cond_3
    const/16 v8, 0x1800

    .line 307
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    .line 308
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    div-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 309
    .local v24, "frame_period":J
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    .line 310
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    add-int/lit8 v4, v4, 0xc

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 311
    .local v17, "buffer":[B
    new-instance v42, Lorg/sipdroid/net/RtpPacket;

    const/4 v4, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lorg/sipdroid/net/RtpPacket;-><init>([BI)V

    .line 312
    .local v42, "rtp_packet":Lorg/sipdroid/net/RtpPacket;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/sipdroid/net/RtpPacket;->setPayloadType(I)V

    .line 313
    sget-boolean v4, Lorg/sipdroid/media/RtpStreamSender;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading blocks of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/sipdroid/media/RtpStreamSender;->println(Ljava/lang/String;)V

    .line 316
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sample rate  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v5, v5, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v5}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/sipdroid/media/RtpStreamSender;->println(Ljava/lang/String;)V

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/sipdroid/media/RtpStreamSender;->println(Ljava/lang/String;)V

    .line 319
    const/4 v3, 0x0

    .line 321
    .local v3, "record":Landroid/media/AudioRecord;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    new-array v10, v4, [S

    .line 322
    .local v10, "lin":[S
    const/16 v41, 0x0

    .line 323
    .local v41, "ring":I
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->random:Ljava/util/Random;

    .line 324
    const/4 v15, 0x0

    .line 326
    .local v15, "alerting":Ljava/io/InputStream;
    :try_start_0
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "alerting"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v15

    .line 330
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->init()V

    .line 331
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/sipdroid/media/RtpStreamSender;->running:Z

    if-eqz v4, :cond_9

    .line 332
    sget-boolean v4, Lorg/sipdroid/media/RtpStreamSender;->changed:Z

    if-nez v4, :cond_7

    if-nez v3, :cond_10

    .line 333
    :cond_7
    if-eqz v3, :cond_8

    .line 334
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 335
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 336
    sget-boolean v4, Lorg/sipdroid/media/RtpStreamReceiver;->samsung:Z

    if-eqz v4, :cond_8

    .line 337
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    .line 338
    .local v16, "am":Landroid/media/AudioManager;
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 339
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 342
    .end local v16    # "am":Landroid/media/AudioManager;
    :cond_8
    const/4 v4, 0x0

    sput-boolean v4, Lorg/sipdroid/media/RtpStreamSender;->changed:Z

    .line 343
    new-instance v3, Landroid/media/AudioRecord;

    .end local v3    # "record":Landroid/media/AudioRecord;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v5, v5, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v5}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 345
    .restart local v3    # "record":Landroid/media/AudioRecord;
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    .line 346
    sget-object v4, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->rejectcall()V

    .line 347
    const/4 v3, 0x0

    .line 499
    :cond_9
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_29

    .line 500
    :goto_4
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    .line 502
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Lorg/sipdroid/media/RtpStreamSender;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 503
    :catch_0
    move-exception v4

    goto :goto_4

    .line 297
    .end local v3    # "record":Landroid/media/AudioRecord;
    .end local v10    # "lin":[S
    .end local v15    # "alerting":Ljava/io/InputStream;
    .end local v17    # "buffer":[B
    .end local v24    # "frame_period":J
    .end local v41    # "ring":I
    .end local v42    # "rtp_packet":Lorg/sipdroid/net/RtpPacket;
    :cond_a
    const/16 v4, 0x1000

    if-ge v8, v4, :cond_c

    .line 298
    const/16 v4, 0x800

    if-gt v8, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    const/16 v5, 0x400

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    .line 299
    :cond_b
    const/16 v8, 0x1800

    goto/16 :goto_1

    .line 300
    :cond_c
    const/16 v4, 0x1000

    if-ne v8, v4, :cond_d

    .line 301
    mul-int/lit8 v8, v8, 0x1

    .line 302
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    const/16 v5, 0x3c0

    if-ne v4, v5, :cond_4

    const/16 v4, 0x140

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    goto/16 :goto_1

    .line 304
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    const/16 v5, 0x3c0

    if-ne v4, v5, :cond_e

    const/16 v4, 0x140

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    .line 305
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    const/16 v5, 0x400

    if-ne v4, v5, :cond_4

    const/16 v4, 0xa0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    goto/16 :goto_1

    .line 350
    .restart local v3    # "record":Landroid/media/AudioRecord;
    .restart local v10    # "lin":[S
    .restart local v15    # "alerting":Ljava/io/InputStream;
    .restart local v17    # "buffer":[B
    .restart local v24    # "frame_period":J
    .restart local v41    # "ring":I
    .restart local v42    # "rtp_packet":Lorg/sipdroid/net/RtpPacket;
    :cond_f
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 351
    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getMicGain()F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v34, v0

    .line 353
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/sipdroid/media/RtpStreamSender;->muted:Z

    if-nez v4, :cond_11

    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_15

    .line 354
    :cond_11
    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_12

    .line 355
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->restoreMode()V

    .line 356
    :cond_12
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 357
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/sipdroid/media/RtpStreamSender;->running:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/sipdroid/media/RtpStreamSender;->muted:Z

    if-nez v4, :cond_13

    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    .line 359
    :cond_13
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Lorg/sipdroid/media/RtpStreamSender;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 360
    :catch_1
    move-exception v4

    goto :goto_5

    .line 363
    :cond_14
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 366
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    .line 367
    const/16 v4, 0x10

    new-array v0, v4, [B

    move-object/from16 v20, v0

    .line 368
    .local v20, "dtmfbuf":[B
    new-instance v18, Lorg/sipdroid/net/RtpPacket;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lorg/sipdroid/net/RtpPacket;-><init>([BI)V

    .line 369
    .local v18, "dt_packet":Lorg/sipdroid/net/RtpPacket;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->dtmf_payload_type:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/sipdroid/net/RtpPacket;->setPayloadType(I)V

    .line 370
    invoke-virtual/range {v18 .. v19}, Lorg/sipdroid/net/RtpPacket;->setPayloadLength(I)V

    .line 371
    invoke-virtual/range {v42 .. v42}, Lorg/sipdroid/net/RtpPacket;->getSscr()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lorg/sipdroid/net/RtpPacket;->setSscr(J)V

    .line 372
    move-wide/from16 v21, v46

    .line 375
    .local v21, "dttime":J
    const/16 v26, 0x0

    .local v26, "i":I
    move/from16 v45, v44

    .end local v44    # "seqn":I
    .local v45, "seqn":I
    :goto_6
    const/4 v4, 0x6

    move/from16 v0, v26

    if-ge v0, v4, :cond_16

    .line 376
    const-wide/16 v4, 0xa0

    add-long v46, v46, v4

    .line 377
    sub-long v4, v46, v21

    long-to-int v0, v4

    move/from16 v23, v0

    .line 378
    .local v23, "duration":I
    add-int/lit8 v44, v45, 0x1

    .end local v45    # "seqn":I
    .restart local v44    # "seqn":I
    move-object/from16 v0, v18

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpPacket;->setSequenceNumber(I)V

    .line 379
    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setTimestamp(J)V

    .line 380
    const/16 v5, 0xc

    sget-object v4, Lorg/sipdroid/media/RtpStreamSender;->rtpEventMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v20, v5

    .line 381
    const/16 v4, 0xd

    const/16 v5, 0xa

    aput-byte v5, v20, v4

    .line 382
    const/16 v4, 0xe

    shr-int/lit8 v5, v23, 0x8

    int-to-byte v5, v5

    aput-byte v5, v20, v4

    .line 383
    const/16 v4, 0xf

    move/from16 v0, v23

    int-to-byte v5, v0

    aput-byte v5, v20, v4

    .line 385
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V

    .line 386
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Lorg/sipdroid/media/RtpStreamSender;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 375
    :goto_7
    add-int/lit8 v26, v26, 0x1

    move/from16 v45, v44

    .end local v44    # "seqn":I
    .restart local v45    # "seqn":I
    goto :goto_6

    .line 390
    .end local v23    # "duration":I
    :cond_16
    const/16 v26, 0x0

    :goto_8
    const/4 v4, 0x3

    move/from16 v0, v26

    if-ge v0, v4, :cond_17

    .line 391
    sub-long v4, v46, v21

    long-to-int v0, v4

    move/from16 v23, v0

    .line 392
    .restart local v23    # "duration":I
    move-object/from16 v0, v18

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpPacket;->setSequenceNumber(I)V

    .line 393
    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setTimestamp(J)V

    .line 394
    const/16 v5, 0xc

    sget-object v4, Lorg/sipdroid/media/RtpStreamSender;->rtpEventMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v20, v5

    .line 395
    const/16 v4, 0xd

    const/16 v5, -0x76

    aput-byte v5, v20, v4

    .line 396
    const/16 v4, 0xe

    shr-int/lit8 v5, v23, 0x8

    int-to-byte v5, v5

    aput-byte v5, v20, v4

    .line 397
    const/16 v4, 0xf

    move/from16 v0, v23

    int-to-byte v5, v0

    aput-byte v5, v20, v4

    .line 399
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 390
    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 403
    .end local v23    # "duration":I
    :cond_17
    const-wide/16 v4, 0xa0

    add-long v46, v46, v4

    add-int/lit8 v44, v45, 0x1

    .line 404
    .end local v45    # "seqn":I
    .restart local v44    # "seqn":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    .line 408
    .end local v18    # "dt_packet":Lorg/sipdroid/net/RtpPacket;
    .end local v20    # "dtmfbuf":[B
    .end local v21    # "dttime":J
    .end local v26    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    const/16 v5, 0x1e0

    if-ge v4, v5, :cond_19

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    .line 410
    .local v37, "now":J
    sub-long v4, v37, v28

    sub-long v35, v24, v4

    .line 411
    .local v35, "next_tx_delay":J
    move-wide/from16 v28, v37

    .line 412
    const-wide/16 v4, 0x0

    cmp-long v4, v35, v4

    if-lez v4, :cond_19

    .line 414
    :try_start_5
    invoke-static/range {v35 .. v36}, Lorg/sipdroid/media/RtpStreamSender;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 417
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->sync_adj:I

    int-to-long v4, v4

    sub-long v4, v35, v4

    add-long v28, v28, v4

    .line 420
    .end local v35    # "next_tx_delay":J
    .end local v37    # "now":J
    :cond_19
    sget v4, Lorg/sipdroid/media/RtpStreamSender;->delay:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v41

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    rem-int v11, v4, v5

    .line 421
    .local v11, "pos":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    invoke-virtual {v3, v10, v11, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v12

    .line 422
    .local v12, "num":I
    if-lez v12, :cond_6

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->isValid()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    if-eqz v4, :cond_1a

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    invoke-virtual {v4, v10, v11, v12}, Lorg/sipdroid/media/CallRecorder;->writeOutgoing([SII)V

    .line 431
    :cond_1a
    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    if-nez v4, :cond_21

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/sipdroid/media/RtpStreamSender;->calc([SII)V

    .line 433
    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->nearend:I

    if-eqz v4, :cond_20

    sget-wide v4, Lorg/sipdroid/media/RtpStreamReceiver;->down_time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_20

    .line 434
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v13, v39, v4

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lorg/sipdroid/media/RtpStreamSender;->noise([SIID)V

    .line 448
    :cond_1b
    :goto_b
    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_22

    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_22

    if-eqz v15, :cond_22

    .line 451
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->mu:I

    div-int v5, v12, v5

    if-ge v4, v5, :cond_1c

    .line 452
    invoke-virtual {v15}, Ljava/io/InputStream;->reset()V

    .line 453
    :cond_1c
    const/16 v4, 0xc

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->mu:I

    div-int v5, v12, v5

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 457
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1d

    .line 458
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->mu:I

    move-object/from16 v0, v17

    invoke-static {v0, v10, v12, v4}, Lorg/sipdroid/codecs/G711;->alaw2linear([B[SII)V

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v4, v10, v5, v0, v12}, Lorg/sipdroid/codecs/Codec;->encode([SI[BI)I

    move-result v12

    .line 466
    :cond_1d
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    add-int v41, v41, v4

    .line 467
    add-int/lit8 v45, v44, 0x1

    .end local v44    # "seqn":I
    .restart local v45    # "seqn":I
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpPacket;->setSequenceNumber(I)V

    .line 468
    move-object/from16 v0, v42

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setTimestamp(J)V

    .line 469
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Lorg/sipdroid/net/RtpPacket;->setPayloadLength(I)V

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v37

    .line 471
    .restart local v37    # "now":J
    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    if-eqz v4, :cond_1e

    sget-boolean v4, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-nez v4, :cond_1e

    sub-long v4, v37, v32

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_23

    .line 473
    :cond_1e
    move-wide/from16 v32, v37

    .line 474
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V

    .line 475
    sget v4, Lorg/sipdroid/media/RtpStreamSender;->m:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_23

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    if-eqz v4, :cond_1f

    sget-boolean v4, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v4, :cond_23

    .line 476
    :cond_1f
    const/16 v26, 0x1

    .restart local v26    # "i":I
    :goto_e
    sget v4, Lorg/sipdroid/media/RtpStreamSender;->m:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_23

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 476
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 435
    .end local v26    # "i":I
    .end local v37    # "now":J
    .end local v45    # "seqn":I
    .restart local v44    # "seqn":I
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->nearend:I

    if-nez v4, :cond_1b

    .line 436
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double v4, v4, v39

    const-wide v6, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/sipdroid/media/RtpStreamSender;->s:D

    mul-double/2addr v6, v13

    add-double v39, v4, v6

    goto/16 :goto_b

    .line 437
    :cond_21
    sparse-switch v34, :sswitch_data_0

    goto/16 :goto_b

    .line 439
    :sswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/sipdroid/media/RtpStreamSender;->calc1([SII)V

    goto/16 :goto_b

    .line 442
    :sswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/sipdroid/media/RtpStreamSender;->calc2([SII)V

    goto/16 :goto_b

    .line 445
    :sswitch_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/sipdroid/media/RtpStreamSender;->calc10([SII)V

    goto/16 :goto_b

    .line 462
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_rate:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    rem-int v5, v41, v5

    move-object/from16 v0, v17

    invoke-interface {v4, v10, v5, v0, v12}, Lorg/sipdroid/codecs/Codec;->encode([SI[BI)I

    move-result v12

    goto/16 :goto_d

    .line 478
    .end local v44    # "seqn":I
    .restart local v37    # "now":J
    .restart local v45    # "seqn":I
    :catch_2
    move-exception v4

    .line 480
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_26

    .line 481
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long v46, v46, v4

    .line 484
    :goto_f
    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_28

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->loss2:F

    sget v5, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v4, v6

    if-lez v4, :cond_28

    .line 486
    if-eqz v43, :cond_24

    sget-boolean v4, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v4, :cond_24

    sub-long v4, v37, v30

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_24

    .line 487
    invoke-virtual/range {v48 .. v48}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 488
    move-wide/from16 v30, v37

    .line 490
    :cond_24
    if-eqz v27, :cond_27

    sget v4, Lorg/sipdroid/media/RtpStreamSender;->delay:I

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_27

    .line 492
    :cond_25
    const/4 v4, 0x2

    sput v4, Lorg/sipdroid/media/RtpStreamSender;->m:I

    move/from16 v44, v45

    .end local v45    # "seqn":I
    .restart local v44    # "seqn":I
    goto/16 :goto_3

    .line 483
    .end local v44    # "seqn":I
    .restart local v45    # "seqn":I
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Lorg/sipdroid/media/RtpStreamSender;->frame_size:I

    int-to-long v4, v4

    add-long v46, v46, v4

    goto :goto_f

    .line 495
    :cond_27
    const/4 v4, 0x1

    sput v4, Lorg/sipdroid/media/RtpStreamSender;->m:I

    move/from16 v44, v45

    .end local v45    # "seqn":I
    .restart local v44    # "seqn":I
    goto/16 :goto_3

    .line 497
    .end local v44    # "seqn":I
    .restart local v45    # "seqn":I
    :cond_28
    const/4 v4, 0x1

    sput v4, Lorg/sipdroid/media/RtpStreamSender;->m:I

    move/from16 v44, v45

    .end local v45    # "seqn":I
    .restart local v44    # "seqn":I
    goto/16 :goto_3

    .line 505
    .end local v11    # "pos":I
    .end local v12    # "num":I
    .end local v37    # "now":J
    :cond_29
    if-eqz v3, :cond_2a

    .line 506
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 507
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 509
    :cond_2a
    const/4 v4, 0x0

    sput v4, Lorg/sipdroid/media/RtpStreamSender;->m:I

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->p_type:Lorg/sipdroid/codecs/Codecs$Map;

    iget-object v4, v4, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v4}, Lorg/sipdroid/codecs/Codec;->close()V

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v4}, Lorg/sipdroid/net/RtpSocket;->close()V

    .line 513
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    if-eqz v4, :cond_2b

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    invoke-virtual {v4}, Lorg/sipdroid/media/CallRecorder;->stopOutgoing()V

    .line 519
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/sipdroid/media/RtpStreamSender;->call_recorder:Lorg/sipdroid/media/CallRecorder;

    .line 522
    :cond_2b
    sget-boolean v4, Lorg/sipdroid/media/RtpStreamSender;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 523
    const-string v4, "rtp sender terminated"

    invoke-static {v4}, Lorg/sipdroid/media/RtpStreamSender;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    .restart local v35    # "next_tx_delay":J
    .restart local v37    # "now":J
    :catch_3
    move-exception v4

    goto/16 :goto_a

    .line 454
    .end local v35    # "next_tx_delay":J
    .end local v37    # "now":J
    .restart local v11    # "pos":I
    .restart local v12    # "num":I
    :catch_4
    move-exception v4

    goto/16 :goto_c

    .line 400
    .end local v11    # "pos":I
    .end local v12    # "num":I
    .end local v44    # "seqn":I
    .restart local v18    # "dt_packet":Lorg/sipdroid/net/RtpPacket;
    .restart local v20    # "dtmfbuf":[B
    .restart local v21    # "dttime":J
    .restart local v23    # "duration":I
    .restart local v26    # "i":I
    .restart local v45    # "seqn":I
    :catch_5
    move-exception v4

    goto/16 :goto_9

    .line 387
    .end local v45    # "seqn":I
    .restart local v44    # "seqn":I
    :catch_6
    move-exception v4

    goto/16 :goto_7

    .line 327
    .end local v18    # "dt_packet":Lorg/sipdroid/net/RtpPacket;
    .end local v20    # "dtmfbuf":[B
    .end local v21    # "dttime":J
    .end local v23    # "duration":I
    .end local v26    # "i":I
    :catch_7
    move-exception v4

    goto/16 :goto_2

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public sendDTMF(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/media/RtpStreamSender;->dtmf:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setDTMFpayloadType(I)V
    .locals 0
    .param p1, "payload_type"    # I

    .prologue
    .line 533
    iput p1, p0, Lorg/sipdroid/media/RtpStreamSender;->dtmf_payload_type:I

    .line 534
    return-void
.end method

.method public setSyncAdj(I)V
    .locals 0
    .param p1, "millisecs"    # I

    .prologue
    .line 179
    iput p1, p0, Lorg/sipdroid/media/RtpStreamSender;->sync_adj:I

    .line 180
    return-void
.end method
