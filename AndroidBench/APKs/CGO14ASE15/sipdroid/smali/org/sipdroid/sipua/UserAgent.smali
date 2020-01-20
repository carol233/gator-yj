.class public Lorg/sipdroid/sipua/UserAgent;
.super Lorg/zoolu/sip/call/CallListenerAdapter;
.source "UserAgent.java"


# static fields
.field public static final UA_STATE_HOLD:I = 0x4

.field public static final UA_STATE_IDLE:I = 0x0

.field public static final UA_STATE_INCALL:I = 0x3

.field public static final UA_STATE_INCOMING_CALL:I = 0x1

.field public static final UA_STATE_OUTGOING_CALL:I = 0x2


# instance fields
.field public audio_app:Lorg/sipdroid/media/MediaLauncher;

.field protected call:Lorg/zoolu/sip/call/ExtendedCall;

.field call_state:I

.field protected call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

.field protected local_session:Ljava/lang/String;

.field local_video_port:I

.field log:Lorg/zoolu/tools/Log;

.field realm:Ljava/lang/String;

.field remote_media_address:Ljava/lang/String;

.field remote_video_port:I

.field protected sip_provider:Lorg/zoolu/sip/provider/SipProvider;

.field public user_profile:Lorg/sipdroid/sipua/UserAgentProfile;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/sipdroid/sipua/UserAgentProfile;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "user_profile"    # Lorg/sipdroid/sipua/UserAgentProfile;

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-direct {p0}, Lorg/zoolu/sip/call/CallListenerAdapter;-><init>()V

    .line 79
    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    .line 82
    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_state:I

    .line 260
    iput-object p1, p0, Lorg/sipdroid/sipua/UserAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 261
    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getLog()Lorg/zoolu/tools/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->log:Lorg/zoolu/tools/Log;

    .line 262
    iput-object p2, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    .line 263
    iget-object v0, p2, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->realm:Ljava/lang/String;

    .line 266
    invoke-virtual {p2, p1}, Lorg/sipdroid/sipua/UserAgentProfile;->initContactAddress(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/UserAgent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/sipdroid/sipua/UserAgent;->runReInvite(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/UserAgent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/sipdroid/sipua/UserAgent;->runCallTransfer(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lorg/sipdroid/sipua/UserAgent;I)V
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/UserAgent;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/UserAgent;->runAutomaticAccept(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/sipdroid/sipua/UserAgent;I)V
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/UserAgent;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/UserAgent;->runAutomaticHangup(I)V

    return-void
.end method

.method private addMediaDescriptor(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "avp"    # I
    .param p4, "codec"    # Ljava/lang/String;
    .param p5, "rate"    # I

    .prologue
    .line 202
    new-instance v7, Lorg/zoolu/sdp/SessionDescriptor;

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 204
    .local v7, "sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "attr_param":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 210
    :cond_0
    new-instance v0, Lorg/zoolu/sdp/MediaField;

    const/4 v3, 0x0

    const-string v4, "RTP/AVP"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/zoolu/sdp/MediaField;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    const-string v2, "rtpmap"

    invoke-direct {v1, v2, v6}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Lorg/zoolu/sdp/SessionDescriptor;->addMedia(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/AttributeField;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 214
    invoke-virtual {v7}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private addMediaDescriptor(Ljava/lang/String;ILorg/sipdroid/codecs/Codecs$Map;)V
    .locals 15
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "c"    # Lorg/sipdroid/codecs/Codecs$Map;

    .prologue
    .line 220
    new-instance v13, Lorg/zoolu/sdp/SessionDescriptor;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-direct {v13, v1}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 222
    .local v13, "sdp":Lorg/zoolu/sdp/SessionDescriptor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 223
    .local v6, "avpvec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 224
    .local v7, "afvec":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    if-nez p3, :cond_2

    .line 226
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->getCodecs()[I

    move-result-object v8

    .local v8, "arr$":[I
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_3

    aget v10, v8, v11

    .line 227
    .local v10, "i":I
    invoke-static {v10}, Lorg/sipdroid/codecs/Codecs;->get(I)Lorg/sipdroid/codecs/Codec;

    move-result-object v9

    .line 228
    .local v9, "codec":Lorg/sipdroid/codecs/Codec;
    if-nez v10, :cond_0

    invoke-interface {v9}, Lorg/sipdroid/codecs/Codec;->init()V

    .line 229
    :cond_0
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v9}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 231
    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    const-string v2, "rtpmap"

    const-string v3, "%d %s/%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-interface {v9}, Lorg/sipdroid/codecs/Codec;->userName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    const/16 v14, 0x1f40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 233
    :cond_1
    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    const-string v2, "rtpmap"

    const-string v3, "%d %s/%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-interface {v9}, Lorg/sipdroid/codecs/Codec;->userName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    invoke-interface {v9}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v8    # "arr$":[I
    .end local v9    # "codec":Lorg/sipdroid/codecs/Codec;
    .end local v10    # "i":I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v1}, Lorg/sipdroid/codecs/Codec;->init()V

    .line 237
    move-object/from16 v0, p3

    iget v1, v0, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v1}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 239
    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    const-string v2, "rtpmap"

    const-string v3, "%d %s/%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-object v14, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v14}, Lorg/sipdroid/codecs/Codec;->userName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    const/16 v14, 0x1f40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    if-eqz v1, :cond_4

    .line 244
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    const-string v2, "rtpmap"

    const-string v3, "%d telephone-event/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v14, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v14, v14, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    iget-object v14, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v14, v14, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_rate:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    const-string v2, "fmtp"

    const-string v3, "%d 0-15"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v14, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v14, v14, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_4
    new-instance v1, Lorg/zoolu/sdp/MediaField;

    const/4 v4, 0x0

    const-string v5, "RTP/AVP"

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/zoolu/sdp/MediaField;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v13, v1, v7}, Lorg/zoolu/sdp/SessionDescriptor;->addMedia(Lorg/zoolu/sdp/MediaField;Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 253
    invoke-virtual {v13}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    .line 254
    return-void

    .line 241
    :cond_5
    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    const-string v2, "rtpmap"

    const-string v3, "%d %s/%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-object v14, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v14}, Lorg/sipdroid/codecs/Codec;->userName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v14, v0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v14}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private createAnswer(Lorg/zoolu/sdp/SessionDescriptor;)V
    .locals 4
    .param p1, "remote_sdp"    # Lorg/zoolu/sdp/SessionDescriptor;

    .prologue
    .line 512
    invoke-static {p1}, Lorg/sipdroid/codecs/Codecs;->getCodec(Lorg/zoolu/sdp/SessionDescriptor;)Lorg/sipdroid/codecs/Codecs$Map;

    move-result-object v0

    .line 513
    .local v0, "c":Lorg/sipdroid/codecs/Codecs$Map;
    if-nez v0, :cond_0

    .line 514
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get CODEC: AVAILABLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_0
    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->initSessionDescriptor(Lorg/sipdroid/codecs/Codecs$Map;)V

    .line 516
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/UserAgent;->sessionProduct(Lorg/zoolu/sdp/SessionDescriptor;)V

    .line 517
    return-void
.end method

.method private createOffer()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->initSessionDescriptor(Lorg/sipdroid/codecs/Codecs$Map;)V

    .line 508
    return-void
.end method

.method private runAutomaticAccept(I)V
    .locals 3
    .param p1, "delay_time"    # I

    .prologue
    .line 961
    if-lez p1, :cond_0

    .line 962
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v1, :cond_1

    .line 967
    const-string v1, "AUTOMATIC-ANSWER"

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->accept()Z

    .line 970
    :cond_1
    return-void

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private runAutomaticHangup(I)V
    .locals 3
    .param p1, "delay_time"    # I

    .prologue
    .line 984
    if-lez p1, :cond_0

    .line 985
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1}, Lorg/zoolu/sip/call/ExtendedCall;->isOnCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    const-string v1, "AUTOMATIC-HANGUP"

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->hangup()V

    .line 994
    :cond_1
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private runCallTransfer(Ljava/lang/String;I)V
    .locals 3
    .param p1, "transfer_to"    # Ljava/lang/String;
    .param p2, "delay_time"    # I

    .prologue
    .line 938
    if-lez p2, :cond_0

    .line 939
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1}, Lorg/zoolu/sip/call/ExtendedCall;->isOnCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    const-string v1, "REFER/TRANSFER"

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1, p1}, Lorg/zoolu/sip/call/ExtendedCall;->transfer(Ljava/lang/String;)V

    .line 947
    :cond_1
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private runReInvite(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "delay_time"    # I

    .prologue
    .line 907
    if-lez p3, :cond_0

    .line 908
    mul-int/lit16 v1, p3, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_0
    :goto_0
    const-string v1, "RE-INVITING/MODIFYING"

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1}, Lorg/zoolu/sip/call/ExtendedCall;->isOnCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    const-string v1, "REFER/TRANSFER"

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 915
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1, p1, p2}, Lorg/zoolu/sip/call/ExtendedCall;->modify(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_1
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sessionProduct(Lorg/zoolu/sdp/SessionDescriptor;)V
    .locals 6
    .param p1, "remote_sdp"    # Lorg/zoolu/sdp/SessionDescriptor;

    .prologue
    .line 520
    new-instance v0, Lorg/zoolu/sdp/SessionDescriptor;

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "local_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    new-instance v1, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getOrigin()Lorg/zoolu/sdp/OriginField;

    move-result-object v2

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getSessionName()Lorg/zoolu/sdp/SessionNameField;

    move-result-object v3

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getConnection()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v4

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getTime()Lorg/zoolu/sdp/TimeField;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 524
    .local v1, "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptors(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 525
    invoke-virtual {p1}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/zoolu/sip/call/SdpTools;->sdpMediaProduct(Lorg/zoolu/sdp/SessionDescriptor;Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    .line 529
    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    iget-object v3, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/zoolu/sip/call/ExtendedCall;->setLocalSessionDescriptor(Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method


# virtual methods
.method public accept()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    .line 381
    :cond_0
    const-string v0, "ACCEPT"

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    .line 384
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->accept(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method automaticAccept(I)V
    .locals 1
    .param p1, "delay_time"    # I

    .prologue
    .line 951
    new-instance v0, Lorg/sipdroid/sipua/UserAgent$3;

    invoke-direct {v0, p0, p1}, Lorg/sipdroid/sipua/UserAgent$3;-><init>(Lorg/sipdroid/sipua/UserAgent;I)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/UserAgent$3;->start()V

    .line 956
    return-void
.end method

.method automaticHangup(I)V
    .locals 1
    .param p1, "delay_time"    # I

    .prologue
    .line 974
    new-instance v0, Lorg/sipdroid/sipua/UserAgent$4;

    invoke-direct {v0, p0, p1}, Lorg/sipdroid/sipua/UserAgent$4;-><init>(Lorg/sipdroid/sipua/UserAgent;I)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/UserAgent$4;->start()V

    .line 979
    return-void
.end method

.method public bluetoothMediaApplication()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    invoke-interface {v0}, Lorg/sipdroid/media/MediaLauncher;->bluetoothMedia()V

    .line 504
    :cond_0
    return-void
.end method

.method public call(Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "target_url"    # Ljava/lang/String;
    .param p2, "send_anonymous"    # Z

    .prologue
    const/4 v9, 0x1

    .line 274
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call attempted in state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->getSessionDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : Failing Request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 279
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->hangup()V

    .line 282
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(ILjava/lang/String;)V

    .line 286
    if-nez p2, :cond_4

    .line 288
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    .line 296
    .local v2, "from_url":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lorg/sipdroid/sipua/UserAgent;->createOffer()V

    .line 298
    new-instance v0, Lorg/zoolu/sip/call/ExtendedCall;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v3, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v4, v4, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    iget-object v5, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    iget-object v6, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v6, v6, Lorg/sipdroid/sipua/UserAgentProfile;->passwd:Ljava/lang/String;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/zoolu/sip/call/ExtendedCall;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/ExtendedCallListener;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    .line 304
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    const-string v1, "pbxes.org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    :cond_2
    const/4 v8, 0x0

    .line 312
    .local v8, "icsi":Ljava/lang/String;
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->mmtel:Z

    if-ne v0, v9, :cond_3

    .line 313
    const-string v8, "\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    .line 316
    :cond_3
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/provider/SipProvider;->completeNameAddress(Ljava/lang/String;)Lorg/zoolu/sip/address/NameAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->no_offer:Z

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/call/ExtendedCall;->call(Ljava/lang/String;)V

    :goto_2
    move v0, v9

    .line 327
    goto/16 :goto_0

    .line 292
    .end local v2    # "from_url":Ljava/lang/String;
    .end local v8    # "icsi":Ljava/lang/String;
    :cond_4
    const-string v2, "sip:anonymous@anonymous.com"

    .restart local v2    # "from_url":Ljava/lang/String;
    goto :goto_1

    .line 324
    .restart local v8    # "icsi":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v8}, Lorg/zoolu/sip/call/ExtendedCall;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method callTransfer(Ljava/lang/String;I)V
    .locals 3
    .param p1, "transfer_to"    # Ljava/lang/String;
    .param p2, "delay_time"    # I

    .prologue
    .line 924
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "target_url":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/sipdroid/sipua/UserAgent$2;

    invoke-direct {v1, p0, v0, p2}, Lorg/sipdroid/sipua/UserAgent$2;-><init>(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lorg/sipdroid/sipua/UserAgent$2;->start()V

    .line 933
    return-void

    .line 927
    .end local v0    # "target_url":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "target_url":Ljava/lang/String;
    goto :goto_0
.end method

.method protected changeStatus(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method protected declared-synchronized changeStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/sipdroid/sipua/UserAgent;->call_state:I

    .line 99
    invoke-static {p1, p2}, Lorg/sipdroid/sipua/ui/Receiver;->onState(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected closeMediaApplication()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    invoke-interface {v0}, Lorg/sipdroid/media/MediaLauncher;->stopMedia()Z

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    .line 483
    :cond_0
    return-void
.end method

.method public getSessionDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 1

    .prologue
    .line 362
    const-string v0, "HANGUP"

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->closeMediaApplication()V

    .line 365
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v0}, Lorg/zoolu/sip/call/ExtendedCall;->hangup()V

    .line 370
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    .line 371
    return-void
.end method

.method public info(CI)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "duration"    # I

    .prologue
    .line 332
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    invoke-interface {v1, p1}, Lorg/sipdroid/media/MediaLauncher;->sendDTMF(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 334
    .local v0, "use2833":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1, p1, p2}, Lorg/zoolu/sip/call/ExtendedCall;->info(CI)V

    .line 336
    :cond_0
    return-void

    .line 332
    .end local v0    # "use2833":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSessionDescriptor(Lorg/sipdroid/codecs/Codecs$Map;)V
    .locals 7
    .param p1, "c"    # Lorg/sipdroid/codecs/Codecs$Map;

    .prologue
    .line 177
    new-instance v6, Lorg/zoolu/sdp/SessionDescriptor;

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v6, "sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-virtual {v6}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->video:Z

    if-nez v0, :cond_1

    .line 188
    :cond_0
    const-string v0, "audio"

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->audio_port:I

    invoke-direct {p0, v0, v1, p1}, Lorg/sipdroid/sipua/UserAgent;->addMediaDescriptor(Ljava/lang/String;ILorg/sipdroid/codecs/Codecs$Map;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->video:Z

    if-eqz v0, :cond_2

    .line 193
    const-string v1, "video"

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->video_port:I

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v3, v0, Lorg/sipdroid/sipua/UserAgentProfile;->video_avp:I

    const-string v4, "h263-1998"

    const v5, 0x15f90

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/sipdroid/sipua/UserAgent;->addMediaDescriptor(Ljava/lang/String;IILjava/lang/String;I)V

    .line 196
    :cond_2
    return-void
.end method

.method protected launchMediaApplication()V
    .locals 19

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-eqz v1, :cond_1

    .line 402
    const-string v1, "DEBUG: media application is already running"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v15, Lorg/zoolu/sdp/SessionDescriptor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1}, Lorg/zoolu/sip/call/ExtendedCall;->getLocalSessionDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 410
    .local v15, "local_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    const/4 v2, 0x0

    .line 411
    .local v2, "local_audio_port":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/sipdroid/sipua/UserAgent;->local_video_port:I

    .line 412
    const/4 v13, 0x0

    .line 413
    .local v13, "dtmf_pt":I
    invoke-static {v15}, Lorg/sipdroid/codecs/Codecs;->getCodec(Lorg/zoolu/sdp/SessionDescriptor;)Lorg/sipdroid/codecs/Codecs$Map;

    move-result-object v12

    .line 414
    .local v12, "c":Lorg/sipdroid/codecs/Codecs$Map;
    if-nez v12, :cond_2

    .line 415
    const v1, 0x7f060082

    sput v1, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    .line 416
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/UserAgent;->hangup()V

    goto :goto_0

    .line 419
    :cond_2
    const-string v1, "video"

    invoke-virtual {v15, v1}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptor(Ljava/lang/String;)Lorg/zoolu/sdp/MediaDescriptor;

    move-result-object v16

    .line 420
    .local v16, "m":Lorg/zoolu/sdp/MediaDescriptor;
    if-eqz v16, :cond_3

    .line 421
    invoke-virtual/range {v16 .. v16}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sdp/MediaField;->getPort()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/sipdroid/sipua/UserAgent;->local_video_port:I

    .line 422
    :cond_3
    const-string v1, "audio"

    invoke-virtual {v15, v1}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptor(Ljava/lang/String;)Lorg/zoolu/sdp/MediaDescriptor;

    move-result-object v16

    .line 423
    if-eqz v16, :cond_4

    .line 424
    invoke-virtual/range {v16 .. v16}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sdp/MediaField;->getPort()I

    move-result v2

    .line 425
    invoke-virtual/range {v16 .. v16}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sdp/MediaField;->getFormatList()Ljava/util/Vector;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v13, v1, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    .line 429
    :cond_4
    new-instance v18, Lorg/zoolu/sdp/SessionDescriptor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v1}, Lorg/zoolu/sip/call/ExtendedCall;->getRemoteSessionDescriptor()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 431
    .local v18, "remote_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    new-instance v1, Lorg/zoolu/tools/Parser;

    invoke-virtual/range {v18 .. v18}, Lorg/zoolu/sdp/SessionDescriptor;->getConnection()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sdp/ConnectionField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->remote_media_address:Ljava/lang/String;

    .line 433
    const/4 v4, 0x0

    .line 434
    .local v4, "remote_audio_port":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/sipdroid/sipua/UserAgent;->remote_video_port:I

    .line 435
    invoke-virtual/range {v18 .. v18}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v14

    .line 436
    .local v14, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sdp/MediaDescriptor;>;"
    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 437
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-virtual {v1}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v17

    .line 438
    .local v17, "media":Lorg/zoolu/sdp/MediaField;
    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getMedia()Ljava/lang/String;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 439
    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getPort()I

    move-result v4

    .line 440
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getMedia()Ljava/lang/String;

    move-result-object v1

    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 441
    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sdp/MediaField;->getPort()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/sipdroid/sipua/UserAgent;->remote_video_port:I

    goto :goto_1

    .line 445
    .end local v17    # "media":Lorg/zoolu/sdp/MediaField;
    :cond_7
    const/4 v5, 0x0

    .line 446
    .local v5, "dir":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->recv_only:Z

    if-eqz v1, :cond_c

    .line 447
    const/4 v5, -0x1

    .line 451
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-nez v1, :cond_b

    .line 456
    const/4 v6, 0x0

    .line 457
    .local v6, "audio_in":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->send_tone:Z

    if-eqz v1, :cond_d

    .line 458
    const-string v6, "TONE"

    .line 462
    :cond_9
    :goto_3
    const/4 v7, 0x0

    .line 463
    .local v7, "audio_out":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v7, v1, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    .line 467
    :cond_a
    new-instance v1, Lorg/sipdroid/media/JAudioLauncher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/sipdroid/sipua/UserAgent;->remote_media_address:Ljava/lang/String;

    iget-object v8, v12, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v8}, Lorg/sipdroid/codecs/Codec;->samp_rate()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v9, v9, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_size:I

    iget-object v10, v12, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v10}, Lorg/sipdroid/codecs/Codec;->frame_size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/sipdroid/sipua/UserAgent;->log:Lorg/zoolu/tools/Log;

    invoke-direct/range {v1 .. v13}, Lorg/sipdroid/media/JAudioLauncher;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILorg/zoolu/tools/Log;Lorg/sipdroid/codecs/Codecs$Map;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    .line 473
    .end local v6    # "audio_in":Ljava/lang/String;
    .end local v7    # "audio_out":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    invoke-interface {v1}, Lorg/sipdroid/media/MediaLauncher;->startMedia()Z

    goto/16 :goto_0

    .line 448
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->send_only:Z

    if-eqz v1, :cond_8

    .line 449
    const/4 v5, 0x1

    goto :goto_2

    .line 459
    .restart local v6    # "audio_in":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v6, v1, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    goto :goto_3
.end method

.method public listen()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 341
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call listening mode initiated in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->getSessionDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : Failing Request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 346
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->hangup()V

    .line 351
    new-instance v0, Lorg/zoolu/sip/call/ExtendedCall;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v2, v2, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    iget-object v3, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v4, v4, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    iget-object v5, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    iget-object v6, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v6, v6, Lorg/sipdroid/sipua/UserAgentProfile;->passwd:Ljava/lang/String;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/zoolu/sip/call/ExtendedCall;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/ExtendedCallListener;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    .line 354
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v0}, Lorg/zoolu/sip/call/ExtendedCall;->listen()V

    move v0, v8

    .line 356
    goto :goto_0
.end method

.method public muteMediaApplication()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    invoke-interface {v0}, Lorg/sipdroid/media/MediaLauncher;->muteMedia()Z

    move-result v0

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 6
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v5, 0x5

    .line 631
    const-string v4, "onCallAccepted()"

    invoke-virtual {p0, v4, v5}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 633
    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v4, :cond_1

    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v4, :cond_1

    .line 634
    const-string v4, "NOT the current call"

    invoke-virtual {p0, v4, v5}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    const-string v4, "ACCEPTED/CALL"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 640
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/UserAgent;->statusIs(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 641
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->hangup()V

    goto :goto_0

    .line 644
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    .line 646
    new-instance v2, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-direct {v2, p2}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 647
    .local v2, "remote_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v4, v4, Lorg/sipdroid/sipua/UserAgentProfile;->no_offer:Z

    if-eqz v4, :cond_3

    .line 649
    invoke-direct {p0, v2}, Lorg/sipdroid/sipua/UserAgent;->createAnswer(Lorg/zoolu/sdp/SessionDescriptor;)V

    .line 650
    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/zoolu/sip/call/Call;->ackWithAnswer(Ljava/lang/String;)V

    .line 655
    :goto_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->launchMediaApplication()V

    .line 657
    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-ne p1, v4, :cond_0

    .line 659
    invoke-virtual {p3}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v3

    .line 660
    .local v3, "status_line":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v3}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 661
    .local v0, "code":I
    invoke-virtual {v3}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "reason":Ljava/lang/String;
    iget-object v4, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v4, v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->notify(ILjava/lang/String;)V

    goto :goto_0

    .line 653
    .end local v0    # "code":I
    .end local v1    # "reason":Ljava/lang/String;
    .end local v3    # "status_line":Lorg/zoolu/sip/header/StatusLine;
    :cond_3
    invoke-direct {p0, v2}, Lorg/sipdroid/sipua/UserAgent;->sessionProduct(Lorg/zoolu/sdp/SessionDescriptor;)V

    goto :goto_1
.end method

.method public onCallCanceling(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "cancel"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 752
    const-string v0, "onCallCanceling()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 753
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 754
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    const-string v0, "CANCEL"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    goto :goto_0
.end method

.method public onCallClosed(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 786
    const-string v0, "onCallClosed()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 787
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 788
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 794
    :goto_0
    return-void

    .line 791
    :cond_0
    const-string v0, "CLOSE/OK"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    goto :goto_0
.end method

.method public onCallClosing(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "bye"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 763
    const-string v0, "onCallClosing()"

    invoke-virtual {p0, v0, v2}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 764
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 765
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v2}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 779
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v0, :cond_1

    .line 770
    const-string v0, "CLOSE PREVIOUS CALL"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 771
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    goto :goto_0

    .line 776
    :cond_1
    const-string v0, "CLOSE"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 777
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->closeMediaApplication()V

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    goto :goto_0
.end method

.method public onCallConfirmed(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "ack"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 669
    const-string v0, "onCallConfirmed()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 671
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_1

    .line 672
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string v0, "CONFIRMED/CALL"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 680
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->hangup_time:I

    if-lez v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget v0, v0, Lorg/sipdroid/sipua/UserAgentProfile;->hangup_time:I

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->automaticHangup(I)V

    goto :goto_0
.end method

.method public onCallIncoming(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 10
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "callee"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "caller"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 540
    const-string v7, "onCallIncoming()"

    invoke-virtual {p0, v7, v9}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 542
    iget-object v7, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v7, :cond_0

    .line 543
    const-string v7, "NOT the current call"

    invoke-virtual {p0, v7, v9}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 578
    :goto_0
    return-void

    .line 546
    :cond_0
    const-string v7, "INCOMING"

    invoke-virtual {p0, v7, v8}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, "i":I
    sget-object v7, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget-object v0, v7, Lorg/sipdroid/sipua/SipdroidEngine;->uas:[Lorg/sipdroid/sipua/UserAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/UserAgent;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 549
    .local v6, "ua":Lorg/sipdroid/sipua/UserAgent;
    if-ne v6, p0, :cond_3

    .line 552
    .end local v6    # "ua":Lorg/sipdroid/sipua/UserAgent;
    :cond_1
    sget v7, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v7, :cond_2

    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 553
    :cond_2
    invoke-virtual {p1}, Lorg/zoolu/sip/call/Call;->busy()V

    .line 554
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->listen()Z

    goto :goto_0

    .line 550
    .restart local v6    # "ua":Lorg/sipdroid/sipua/UserAgent;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 558
    .end local v6    # "ua":Lorg/sipdroid/sipua/UserAgent;
    :cond_4
    sget-object v7, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    if-eqz v7, :cond_5

    .line 559
    sget-object v7, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iput-object p0, v7, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    .line 560
    :cond_5
    invoke-virtual {p3}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(ILjava/lang/String;)V

    .line 562
    if-nez p4, :cond_6

    .line 563
    invoke-direct {p0}, Lorg/sipdroid/sipua/UserAgent;->createOffer()V

    .line 576
    :goto_2
    iget-object v7, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lorg/zoolu/sip/call/Call;->ring(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->launchMediaApplication()V

    goto :goto_0

    .line 566
    :cond_6
    new-instance v5, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-direct {v5, p4}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 568
    .local v5, "remote_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    :try_start_0
    invoke-direct {p0, v5}, Lorg/sipdroid/sipua/UserAgent;->createAnswer(Lorg/zoolu/sdp/SessionDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 569
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    const v7, 0x7f060082

    sput v7, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    .line 572
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    goto :goto_0
.end method

.method public onCallModifying(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 586
    const-string v0, "onCallModifying()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 587
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 589
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 598
    :goto_0
    return-void

    .line 592
    :cond_0
    const-string v0, "RE-INVITE/MODIFY"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 597
    invoke-super {p0, p1, p2, p3}, Lorg/zoolu/sip/call/CallListenerAdapter;->onCallModifying(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onCallReInviteAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 688
    const-string v0, "onCallReInviteAccepted()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 689
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 690
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 698
    :goto_0
    return-void

    .line 693
    :cond_0
    const-string v0, "RE-INVITE-ACCEPTED/CALL"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 694
    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/UserAgent;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    goto :goto_0
.end method

.method public onCallReInviteRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 702
    const-string v0, "onCallReInviteRefused()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 703
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 704
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 708
    :goto_0
    return-void

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RE-INVITE-REFUSED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCallRedirection(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Ljava/util/Vector;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "reason"    # Ljava/lang/String;
    .param p4, "resp"    # Lorg/zoolu/sip/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/zoolu/sip/call/Call;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/zoolu/sip/message/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "contact_list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x5

    .line 737
    const-string v0, "onCallRedirection()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 738
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 740
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REDIRECTION ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 744
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/zoolu/sip/call/Call;->call(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v3, 0x5

    .line 712
    const-string v2, "onCallRefused()"

    invoke-virtual {p0, v2, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 713
    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v2, :cond_1

    .line 714
    const-string v2, "NOT the current call"

    invoke-virtual {p0, v2, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFUSED ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 718
    const-string v2, "not acceptable here"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 720
    const v2, 0x7f060082

    sput v2, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    .line 722
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    .line 724
    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-ne p1, v2, :cond_0

    .line 726
    invoke-virtual {p3}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v1

    .line 727
    .local v1, "status_line":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v1}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 729
    .local v0, "code":I
    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v2, v0, p2}, Lorg/zoolu/sip/call/ExtendedCall;->notify(ILjava/lang/String;)V

    .line 730
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    goto :goto_0
.end method

.method public onCallRinging(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 605
    const-string v1, "onCallRinging()"

    invoke-virtual {p0, v1, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 606
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v1, :cond_1

    .line 608
    const-string v1, "NOT the current call"

    invoke-virtual {p0, v1, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Lorg/zoolu/sip/call/Call;->getRemoteSessionDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "remote_sdp":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 614
    :cond_2
    const-string v1, "RINGING"

    invoke-virtual {p0, v1, v2}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 615
    invoke-static {v2}, Lorg/sipdroid/media/RtpStreamReceiver;->ringback(Z)V

    goto :goto_0

    .line 618
    :cond_3
    const-string v1, "RINGING(with SDP)"

    invoke-virtual {p0, v1, v2}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 619
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->no_offer:Z

    if-nez v1, :cond_0

    .line 620
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/sipdroid/media/RtpStreamReceiver;->ringback(Z)V

    .line 622
    new-instance v1, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-direct {v1, v0}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/sipdroid/sipua/UserAgent;->sessionProduct(Lorg/zoolu/sdp/SessionDescriptor;)V

    .line 623
    invoke-virtual {p0}, Lorg/sipdroid/sipua/UserAgent;->launchMediaApplication()V

    goto :goto_0
.end method

.method public onCallTimeout(Lorg/zoolu/sip/call/Call;)V
    .locals 4
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;

    .prologue
    const/4 v3, 0x5

    .line 798
    const-string v2, "onCallTimeout()"

    invoke-virtual {p0, v2, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 799
    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v2, :cond_1

    .line 800
    const-string v2, "NOT the current call"

    invoke-virtual {p0, v2, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    const-string v2, "NOT FOUND/TIMEOUT"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 804
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/UserAgent;->changeStatus(I)V

    .line 805
    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    if-ne p1, v2, :cond_0

    .line 806
    const/16 v0, 0x198

    .line 807
    .local v0, "code":I
    const-string v1, "Request Timeout"

    .line 808
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v2, v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->notify(ILjava/lang/String;)V

    .line 809
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    goto :goto_0
.end method

.method public onCallTransfer(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "refer_to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "refered_by"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "refer"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 821
    const-string v0, "onCallTransfer()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 822
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 823
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 831
    :goto_0
    return-void

    .line 826
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transfer to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 827
    invoke-virtual {p1}, Lorg/zoolu/sip/call/ExtendedCall;->acceptTransfer()V

    .line 828
    new-instance v0, Lorg/zoolu/sip/call/ExtendedCall;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v2, v2, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    iget-object v3, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/sip/call/ExtendedCall;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/ExtendedCallListener;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    .line 830
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_transfer:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {p2}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/zoolu/sip/call/ExtendedCall;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallTransferAccepted(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 835
    const-string v0, "onCallTransferAccepted()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 836
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 837
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 841
    :goto_0
    return-void

    .line 840
    :cond_0
    const-string v0, "Transfer accepted"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCallTransferFailure(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notify"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 871
    const-string v0, "onCallTransferFailure()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 872
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 873
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 877
    :goto_0
    return-void

    .line 876
    :cond_0
    const-string v0, "Transfer failed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCallTransferRefused(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 846
    const-string v0, "onCallTransferRefused()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 847
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 848
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 852
    :goto_0
    return-void

    .line 851
    :cond_0
    const-string v0, "Transfer refused"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCallTransferSuccess(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "notify"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x5

    .line 856
    const-string v0, "onCallTransferSuccess()"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 857
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eq p1, v0, :cond_0

    .line 858
    const-string v0, "NOT the current call"

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    const-string v0, "Transfer successed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 862
    invoke-virtual {p1}, Lorg/zoolu/sip/call/ExtendedCall;->hangup()V

    goto :goto_0
.end method

.method printException(Ljava/lang/Exception;I)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # I

    .prologue
    .line 1015
    return-void
.end method

.method printLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1000
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;I)V

    .line 1001
    return-void
.end method

.method printLog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 1005
    return-void
.end method

.method reInvite(Ljava/lang/String;I)V
    .locals 7
    .param p1, "contact_url"    # Ljava/lang/String;
    .param p2, "delay_time"    # I

    .prologue
    .line 883
    new-instance v1, Lorg/zoolu/sdp/SessionDescriptor;

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 884
    .local v1, "sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->IncrementOLine()V

    .line 886
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/UserAgent;->statusIs(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    new-instance v0, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->getOrigin()Lorg/zoolu/sdp/OriginField;

    move-result-object v2

    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->getSessionName()Lorg/zoolu/sdp/SessionNameField;

    move-result-object v3

    new-instance v4, Lorg/zoolu/sdp/ConnectionField;

    const-string v5, "IP4"

    const-string v6, "0.0.0.0"

    invoke-direct {v4, v5, v6}, Lorg/zoolu/sdp/ConnectionField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/zoolu/sdp/TimeField;

    invoke-direct {v5}, Lorg/zoolu/sdp/TimeField;-><init>()V

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 895
    .local v0, "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    :goto_0
    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptors(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 896
    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgent;->local_session:Ljava/lang/String;

    .line 897
    new-instance v2, Lorg/sipdroid/sipua/UserAgent$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/sipdroid/sipua/UserAgent$1;-><init>(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;Lorg/zoolu/sdp/SessionDescriptor;I)V

    invoke-virtual {v2}, Lorg/sipdroid/sipua/UserAgent$1;->start()V

    .line 902
    return-void

    .line 891
    .end local v0    # "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    :cond_0
    new-instance v0, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->getOrigin()Lorg/zoolu/sdp/OriginField;

    move-result-object v2

    invoke-virtual {v1}, Lorg/zoolu/sdp/SessionDescriptor;->getSessionName()Lorg/zoolu/sdp/SessionNameField;

    move-result-object v3

    new-instance v4, Lorg/zoolu/sdp/ConnectionField;

    const-string v5, "IP4"

    sget-object v6, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/zoolu/sdp/ConnectionField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/zoolu/sdp/TimeField;

    invoke-direct {v5}, Lorg/zoolu/sdp/TimeField;-><init>()V

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .restart local v0    # "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    goto :goto_0
.end method

.method public redirect(Ljava/lang/String;)V
    .locals 1
    .param p1, "redirection"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->call:Lorg/zoolu/sip/call/ExtendedCall;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/call/ExtendedCall;->redirect(Ljava/lang/String;)V

    .line 396
    :cond_0
    return-void
.end method

.method public setAcceptTime(I)V
    .locals 1
    .param p1, "accept_time"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->accept_time:I

    .line 117
    return-void
.end method

.method public setAudio(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-boolean p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    .line 140
    return-void
.end method

.method public setHangupTime(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->hangup_time:I

    .line 125
    return-void
.end method

.method public setNoOfferMode(Z)V
    .locals 1
    .param p1, "nooffer"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-boolean p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->no_offer:Z

    .line 135
    return-void
.end method

.method public setReceiveOnlyMode(Z)V
    .locals 1
    .param p1, "r_only"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-boolean p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_only:Z

    .line 145
    return-void
.end method

.method public setRecvFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file_name"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-object p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setRedirection(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-object p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->redirect_to:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSendFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file_name"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-object p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSendOnlyMode(Z)V
    .locals 1
    .param p1, "s_only"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-boolean p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->send_only:Z

    .line 150
    return-void
.end method

.method public setSendToneMode(Z)V
    .locals 1
    .param p1, "s_tone"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iput-boolean p1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->send_tone:Z

    .line 155
    return-void
.end method

.method public speakerMediaApplication(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 494
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    invoke-interface {v1, p1}, Lorg/sipdroid/media/MediaLauncher;->speakerMedia(I)I

    move-result v0

    .line 498
    :goto_0
    return v0

    .line 496
    :cond_0
    sget v0, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    .line 497
    .local v0, "old":I
    sput p1, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    goto :goto_0
.end method

.method protected statusIs(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 108
    iget v0, p0, Lorg/sipdroid/sipua/UserAgent;->call_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
