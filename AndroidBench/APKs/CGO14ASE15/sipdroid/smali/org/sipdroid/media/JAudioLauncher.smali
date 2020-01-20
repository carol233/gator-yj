.class public Lorg/sipdroid/media/JAudioLauncher;
.super Ljava/lang/Object;
.source "JAudioLauncher.java"

# interfaces
.implements Lorg/sipdroid/media/MediaLauncher;


# static fields
.field public static final TONE:Ljava/lang/String; = "TONE"

.field public static tone_amp:D

.field public static tone_freq:I


# instance fields
.field big_endian:Z

.field dir:I

.field frame_rate:I

.field frame_size:I

.field log:Lorg/zoolu/tools/Log;

.field media_process:Ljava/lang/Process;

.field receiver:Lorg/sipdroid/media/RtpStreamReceiver;

.field sample_rate:I

.field sample_size:I

.field sender:Lorg/sipdroid/media/RtpStreamSender;

.field signed:Z

.field socket:Lorg/sipdroid/net/SipdroidSocket;

.field useDTMF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const/16 v0, 0x64

    sput v0, Lorg/sipdroid/media/JAudioLauncher;->tone_freq:I

    .line 57
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lorg/sipdroid/media/JAudioLauncher;->tone_amp:D

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILorg/zoolu/tools/Log;Lorg/sipdroid/codecs/Codecs$Map;I)V
    .locals 13
    .param p1, "local_port"    # I
    .param p2, "remote_addr"    # Ljava/lang/String;
    .param p3, "remote_port"    # I
    .param p4, "direction"    # I
    .param p5, "audiofile_in"    # Ljava/lang/String;
    .param p6, "audiofile_out"    # Ljava/lang/String;
    .param p7, "sample_rate"    # I
    .param p8, "sample_size"    # I
    .param p9, "frame_size"    # I
    .param p10, "logger"    # Lorg/zoolu/tools/Log;
    .param p11, "payload_type"    # Lorg/sipdroid/codecs/Codecs$Map;
    .param p12, "dtmf_pt"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->log:Lorg/zoolu/tools/Log;

    .line 39
    const/16 v1, 0x1f40

    iput v1, p0, Lorg/sipdroid/media/JAudioLauncher;->sample_rate:I

    .line 41
    const/4 v1, 0x1

    iput v1, p0, Lorg/sipdroid/media/JAudioLauncher;->sample_size:I

    .line 43
    const/16 v1, 0xa0

    iput v1, p0, Lorg/sipdroid/media/JAudioLauncher;->frame_size:I

    .line 45
    const/16 v1, 0x32

    iput v1, p0, Lorg/sipdroid/media/JAudioLauncher;->frame_rate:I

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/sipdroid/media/JAudioLauncher;->signed:Z

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/sipdroid/media/JAudioLauncher;->big_endian:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->media_process:Ljava/lang/Process;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->socket:Lorg/sipdroid/net/SipdroidSocket;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/sipdroid/media/JAudioLauncher;->useDTMF:Z

    .line 80
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->log:Lorg/zoolu/tools/Log;

    .line 81
    div-int v1, p7, p9

    iput v1, p0, Lorg/sipdroid/media/JAudioLauncher;->frame_rate:I

    .line 82
    if-eqz p12, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/sipdroid/media/JAudioLauncher;->useDTMF:Z

    .line 85
    const/4 v10, 0x0

    .line 86
    .local v10, "call_recorder":Lorg/sipdroid/media/CallRecorder;
    :try_start_0
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "callrecord"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v11, Lorg/sipdroid/media/CallRecorder;

    const/4 v1, 0x0

    move-object/from16 v0, p11

    iget-object v2, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v2}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v2

    invoke-direct {v11, v1, v2}, Lorg/sipdroid/media/CallRecorder;-><init>(Ljava/lang/String;I)V

    .end local v10    # "call_recorder":Lorg/sipdroid/media/CallRecorder;
    .local v11, "call_recorder":Lorg/sipdroid/media/CallRecorder;
    move-object v10, v11

    .line 89
    .end local v11    # "call_recorder":Lorg/sipdroid/media/CallRecorder;
    .restart local v10    # "call_recorder":Lorg/sipdroid/media/CallRecorder;
    :cond_0
    new-instance v1, Lorg/sipdroid/net/SipdroidSocket;

    invoke-direct {v1, p1}, Lorg/sipdroid/net/SipdroidSocket;-><init>(I)V

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->socket:Lorg/sipdroid/net/SipdroidSocket;

    .line 90
    move/from16 v0, p4

    iput v0, p0, Lorg/sipdroid/media/JAudioLauncher;->dir:I

    .line 92
    iget v1, p0, Lorg/sipdroid/media/JAudioLauncher;->dir:I

    if-ltz v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new audio sender to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 95
    new-instance v1, Lorg/sipdroid/media/RtpStreamSender;

    const/4 v2, 0x1

    iget v3, p0, Lorg/sipdroid/media/JAudioLauncher;->frame_rate:I

    int-to-long v4, v3

    iget-object v7, p0, Lorg/sipdroid/media/JAudioLauncher;->socket:Lorg/sipdroid/net/SipdroidSocket;

    move-object/from16 v3, p11

    move/from16 v6, p9

    move-object v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v10}, Lorg/sipdroid/media/RtpStreamSender;-><init>(ZLorg/sipdroid/codecs/Codecs$Map;JILorg/sipdroid/net/SipdroidSocket;Ljava/lang/String;ILorg/sipdroid/media/CallRecorder;)V

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    .line 96
    iget-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/sipdroid/media/RtpStreamSender;->setSyncAdj(I)V

    .line 97
    iget-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    move/from16 v0, p12

    invoke-virtual {v1, v0}, Lorg/sipdroid/media/RtpStreamSender;->setDTMFpayloadType(I)V

    .line 101
    :cond_1
    iget v1, p0, Lorg/sipdroid/media/JAudioLauncher;->dir:I

    if-gtz v1, :cond_2

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new audio receiver on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 103
    new-instance v1, Lorg/sipdroid/media/RtpStreamReceiver;

    iget-object v2, p0, Lorg/sipdroid/media/JAudioLauncher;->socket:Lorg/sipdroid/net/SipdroidSocket;

    move-object/from16 v0, p11

    invoke-direct {v1, v2, v0, v10}, Lorg/sipdroid/media/RtpStreamReceiver;-><init>(Lorg/sipdroid/net/SipdroidSocket;Lorg/sipdroid/codecs/Codecs$Map;Lorg/sipdroid/media/CallRecorder;)V

    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_2
    :goto_1
    return-void

    .line 82
    .end local v10    # "call_recorder":Lorg/sipdroid/media/CallRecorder;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 106
    .restart local v10    # "call_recorder":Lorg/sipdroid/media/CallRecorder;
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v12, v1}, Lorg/sipdroid/media/JAudioLauncher;->printException(Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/sipdroid/media/RtpStreamSender;Lorg/sipdroid/media/RtpStreamReceiver;Lorg/zoolu/tools/Log;)V
    .locals 3
    .param p1, "rtp_sender"    # Lorg/sipdroid/media/RtpStreamSender;
    .param p2, "rtp_receiver"    # Lorg/sipdroid/media/RtpStreamReceiver;
    .param p3, "logger"    # Lorg/zoolu/tools/Log;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->log:Lorg/zoolu/tools/Log;

    .line 39
    const/16 v0, 0x1f40

    iput v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sample_rate:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sample_size:I

    .line 43
    const/16 v0, 0xa0

    iput v0, p0, Lorg/sipdroid/media/JAudioLauncher;->frame_size:I

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lorg/sipdroid/media/JAudioLauncher;->frame_rate:I

    .line 46
    iput-boolean v2, p0, Lorg/sipdroid/media/JAudioLauncher;->signed:Z

    .line 47
    iput-boolean v2, p0, Lorg/sipdroid/media/JAudioLauncher;->big_endian:Z

    .line 60
    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->media_process:Ljava/lang/Process;

    .line 64
    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->socket:Lorg/sipdroid/net/SipdroidSocket;

    .line 65
    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    .line 66
    iput-object v1, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    .line 69
    iput-boolean v2, p0, Lorg/sipdroid/media/JAudioLauncher;->useDTMF:Z

    .line 73
    iput-object p3, p0, Lorg/sipdroid/media/JAudioLauncher;->log:Lorg/zoolu/tools/Log;

    .line 74
    iput-object p1, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    .line 75
    iput-object p2, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    .line 76
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method private printLog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 179
    return-void
.end method


# virtual methods
.method public bluetoothMedia()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    invoke-virtual {v0}, Lorg/sipdroid/media/RtpStreamReceiver;->bluetooth()V

    .line 159
    :cond_0
    return-void
.end method

.method public muteMedia()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    invoke-virtual {v0}, Lorg/sipdroid/media/RtpStreamSender;->mute()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method printException(Ljava/lang/Exception;I)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # I

    .prologue
    .line 187
    return-void
.end method

.method public sendDTMF(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/sipdroid/media/JAudioLauncher;->useDTMF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    invoke-virtual {v0, p1}, Lorg/sipdroid/media/RtpStreamSender;->sendDTMF(C)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public speakerMedia(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    invoke-virtual {v0, p1}, Lorg/sipdroid/media/RtpStreamReceiver;->speaker(I)I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMedia()Z
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 111
    const-string v0, "starting java audio.."

    invoke-direct {p0, v0, v1}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "start sending"

    invoke-direct {p0, v0, v2}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    invoke-virtual {v0}, Lorg/sipdroid/media/RtpStreamSender;->start()V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "start receiving"

    invoke-direct {p0, v0, v2}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 119
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    invoke-virtual {v0}, Lorg/sipdroid/media/RtpStreamReceiver;->start()V

    .line 122
    :cond_1
    return v1
.end method

.method public stopMedia()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 127
    const-string v0, "halting java audio.."

    invoke-direct {p0, v0, v1}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    invoke-virtual {v0}, Lorg/sipdroid/media/RtpStreamSender;->halt()V

    iput-object v3, p0, Lorg/sipdroid/media/JAudioLauncher;->sender:Lorg/sipdroid/media/RtpStreamSender;

    .line 130
    const-string v0, "sender halted"

    invoke-direct {p0, v0, v2}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    invoke-virtual {v0}, Lorg/sipdroid/media/RtpStreamReceiver;->halt()V

    iput-object v3, p0, Lorg/sipdroid/media/JAudioLauncher;->receiver:Lorg/sipdroid/media/RtpStreamReceiver;

    .line 134
    const-string v0, "receiver halted"

    invoke-direct {p0, v0, v2}, Lorg/sipdroid/media/JAudioLauncher;->printLog(Ljava/lang/String;I)V

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->socket:Lorg/sipdroid/net/SipdroidSocket;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lorg/sipdroid/media/JAudioLauncher;->socket:Lorg/sipdroid/net/SipdroidSocket;

    invoke-virtual {v0}, Lorg/sipdroid/net/SipdroidSocket;->close()V

    .line 138
    :cond_2
    return v1
.end method
