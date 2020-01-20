.class public Lorg/sipdroid/sipua/UserAgentProfile;
.super Lorg/zoolu/tools/Configure;
.source "UserAgentProfile.java"


# static fields
.field public static contacts_file:Ljava/lang/String;

.field public static ua_jar:Ljava/lang/String;


# instance fields
.field public accept_time:I

.field public audio:Z

.field public audio_codecs:[I

.field public audio_frame_size:I

.field public audio_port:I

.field public audio_sample_rate:I

.field public audio_sample_size:I

.field public call_to:Ljava/lang/String;

.field public contact_url:Ljava/lang/String;

.field public do_register:Z

.field public do_unregister:Z

.field public do_unregister_all:Z

.field public dtmf_avp:I

.field public expires:I

.field public from_url:Ljava/lang/String;

.field public hangup_time:I

.field public keepalive_time:J

.field public mmtel:Z

.field public no_offer:Z

.field public no_prompt:Z

.field public passwd:Ljava/lang/String;

.field public pub:Z

.field public qvalue:Ljava/lang/String;

.field public re_invite_time:I

.field public realm:Ljava/lang/String;

.field public realm_orig:Ljava/lang/String;

.field public recv_file:Ljava/lang/String;

.field public recv_only:Z

.field public redirect_to:Ljava/lang/String;

.field public send_file:Ljava/lang/String;

.field public send_only:Z

.field public send_tone:Z

.field public transfer_time:I

.field public transfer_to:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public video:Z

.field public video_avp:I

.field public video_port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "lib/ua.jar"

    sput-object v0, Lorg/sipdroid/sipua/UserAgentProfile;->ua_jar:Ljava/lang/String;

    .line 75
    const-string v0, "contacts.lst"

    sput-object v0, Lorg/sipdroid/sipua/UserAgentProfile;->contacts_file:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Lorg/zoolu/tools/Configure;-><init>()V

    .line 45
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->realm_orig:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->passwd:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->qvalue:Ljava/lang/String;

    .line 62
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->mmtel:Z

    .line 64
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->pub:Z

    .line 78
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_register:Z

    .line 80
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_unregister:Z

    .line 85
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_unregister_all:Z

    .line 87
    const/16 v0, 0xe10

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->expires:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->keepalive_time:J

    .line 100
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->call_to:Ljava/lang/String;

    .line 105
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->accept_time:I

    .line 110
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->hangup_time:I

    .line 115
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_time:I

    .line 120
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->re_invite_time:I

    .line 126
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->redirect_to:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_to:Ljava/lang/String;

    .line 135
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->no_offer:Z

    .line 137
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->no_prompt:Z

    .line 140
    iput-boolean v5, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    .line 142
    iput-boolean v5, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video:Z

    .line 145
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_only:Z

    .line 147
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_only:Z

    .line 149
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_tone:Z

    .line 151
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    .line 156
    const/16 v0, 0x5208

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_port:I

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_codecs:[I

    .line 158
    const/16 v0, 0x65

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    .line 160
    const/16 v0, 0x1f40

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_rate:I

    .line 162
    iput v5, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_size:I

    .line 164
    const/16 v0, 0xa0

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_frame_size:I

    .line 167
    const/16 v0, 0x524e

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video_port:I

    .line 169
    const/16 v0, 0x67

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video_avp:I

    .line 175
    invoke-direct {p0}, Lorg/sipdroid/sipua/UserAgentProfile;->init()V

    .line 176
    return-void

    .line 157
    nop

    :array_0
    .array-data 4
        0x3
        0x8
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Lorg/zoolu/tools/Configure;-><init>()V

    .line 45
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->realm_orig:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->passwd:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->qvalue:Ljava/lang/String;

    .line 62
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->mmtel:Z

    .line 64
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->pub:Z

    .line 78
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_register:Z

    .line 80
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_unregister:Z

    .line 85
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_unregister_all:Z

    .line 87
    const/16 v0, 0xe10

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->expires:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->keepalive_time:J

    .line 100
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->call_to:Ljava/lang/String;

    .line 105
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->accept_time:I

    .line 110
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->hangup_time:I

    .line 115
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_time:I

    .line 120
    iput v4, p0, Lorg/sipdroid/sipua/UserAgentProfile;->re_invite_time:I

    .line 126
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->redirect_to:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_to:Ljava/lang/String;

    .line 135
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->no_offer:Z

    .line 137
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->no_prompt:Z

    .line 140
    iput-boolean v5, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    .line 142
    iput-boolean v5, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video:Z

    .line 145
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_only:Z

    .line 147
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_only:Z

    .line 149
    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_tone:Z

    .line 151
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    .line 156
    const/16 v0, 0x5208

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_port:I

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_codecs:[I

    .line 158
    const/16 v0, 0x65

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->dtmf_avp:I

    .line 160
    const/16 v0, 0x1f40

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_rate:I

    .line 162
    iput v5, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_size:I

    .line 164
    const/16 v0, 0xa0

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_frame_size:I

    .line 167
    const/16 v0, 0x524e

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video_port:I

    .line 169
    const/16 v0, 0x67

    iput v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video_avp:I

    .line 180
    invoke-virtual {p0, p1}, Lorg/sipdroid/sipua/UserAgentProfile;->loadFile(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lorg/sipdroid/sipua/UserAgentProfile;->init()V

    .line 183
    return-void

    .line 157
    :array_0
    .array-data 4
        0x3
        0x8
        0x0
    .end array-data
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/SipURL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/SipURL;->getUserName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->call_to:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->call_to:Ljava/lang/String;

    sget-object v1, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->call_to:Ljava/lang/String;

    .line 194
    :cond_2
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->redirect_to:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->redirect_to:Ljava/lang/String;

    sget-object v1, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->redirect_to:Ljava/lang/String;

    .line 196
    :cond_3
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_to:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_to:Ljava/lang/String;

    sget-object v1, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_to:Ljava/lang/String;

    .line 198
    :cond_4
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    sget-object v1, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    .line 200
    :cond_5
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    sget-object v1, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    iput-object v2, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    .line 202
    :cond_6
    return-void

    .line 190
    :cond_7
    const-string v0, "user"

    goto :goto_0
.end method


# virtual methods
.method public initContactAddress(Lorg/zoolu/sip/provider/SipProvider;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v0

    sget v1, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    if-eq v0, v1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 217
    :cond_0
    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    iput-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    .line 225
    :cond_2
    return-void
.end method

.method protected parseLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, "index":I
    if-lez v1, :cond_1

    .line 235
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "attribute":Ljava/lang/String;
    new-instance v2, Lorg/zoolu/tools/Parser;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v2, p1, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 242
    .local v2, "par":Lorg/zoolu/tools/Parser;
    :goto_0
    const-string v4, "from_url"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    .line 393
    :cond_0
    :goto_1
    return-void

    .line 238
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v2    # "par":Lorg/zoolu/tools/Parser;
    :cond_1
    move-object v0, p1

    .line 239
    .restart local v0    # "attribute":Ljava/lang/String;
    new-instance v2, Lorg/zoolu/tools/Parser;

    const-string v4, ""

    invoke-direct {v2, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .restart local v2    # "par":Lorg/zoolu/tools/Parser;
    goto :goto_0

    .line 246
    :cond_2
    const-string v4, "contact_url"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_3
    const-string v4, "username"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_4
    const-string v4, "realm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    goto :goto_1

    .line 258
    :cond_5
    const-string v4, "passwd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->passwd:Ljava/lang/String;

    goto :goto_1

    .line 262
    :cond_6
    const-string v4, "ua_jar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 263
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/sipdroid/sipua/UserAgentProfile;->ua_jar:Ljava/lang/String;

    goto :goto_1

    .line 266
    :cond_7
    const-string v4, "contacts_file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 267
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/sipdroid/sipua/UserAgentProfile;->contacts_file:Ljava/lang/String;

    goto :goto_1

    .line 271
    :cond_8
    const-string v4, "do_register"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 272
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_register:Z

    goto/16 :goto_1

    .line 275
    :cond_9
    const-string v4, "do_unregister"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 276
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_unregister:Z

    goto/16 :goto_1

    .line 279
    :cond_a
    const-string v4, "do_unregister_all"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 280
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->do_unregister_all:Z

    goto/16 :goto_1

    .line 283
    :cond_b
    const-string v4, "expires"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 284
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->expires:I

    goto/16 :goto_1

    .line 287
    :cond_c
    const-string v4, "keepalive_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 288
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->keepalive_time:J

    goto/16 :goto_1

    .line 292
    :cond_d
    const-string v4, "call_to"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 293
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->call_to:Ljava/lang/String;

    goto/16 :goto_1

    .line 296
    :cond_e
    const-string v4, "accept_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 297
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->accept_time:I

    goto/16 :goto_1

    .line 300
    :cond_f
    const-string v4, "hangup_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 301
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->hangup_time:I

    goto/16 :goto_1

    .line 304
    :cond_10
    const-string v4, "transfer_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 305
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_time:I

    goto/16 :goto_1

    .line 308
    :cond_11
    const-string v4, "re_invite_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 309
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->re_invite_time:I

    goto/16 :goto_1

    .line 312
    :cond_12
    const-string v4, "redirect_to"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 313
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->redirect_to:Ljava/lang/String;

    goto/16 :goto_1

    .line 316
    :cond_13
    const-string v4, "transfer_to"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 317
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->transfer_to:Ljava/lang/String;

    goto/16 :goto_1

    .line 320
    :cond_14
    const-string v4, "no_offer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 321
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->no_offer:Z

    goto/16 :goto_1

    .line 324
    :cond_15
    const-string v4, "no_prompt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 325
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->no_prompt:Z

    goto/16 :goto_1

    .line 329
    :cond_16
    const-string v4, "audio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 330
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    goto/16 :goto_1

    .line 333
    :cond_17
    const-string v4, "video"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 334
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video:Z

    goto/16 :goto_1

    .line 337
    :cond_18
    const-string v4, "recv_only"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 338
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_only:Z

    goto/16 :goto_1

    .line 341
    :cond_19
    const-string v4, "send_only"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 342
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_only:Z

    goto/16 :goto_1

    .line 345
    :cond_1a
    const-string v4, "send_tone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 346
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_tone:Z

    goto/16 :goto_1

    .line 349
    :cond_1b
    const-string v4, "send_file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 350
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->send_file:Ljava/lang/String;

    goto/16 :goto_1

    .line 353
    :cond_1c
    const-string v4, "recv_file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 354
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->recv_file:Ljava/lang/String;

    goto/16 :goto_1

    .line 358
    :cond_1d
    const-string v4, "audio_port"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 359
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_port:I

    goto/16 :goto_1

    .line 362
    :cond_1e
    const-string v4, "audio_sample_rate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 363
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_rate:I

    goto/16 :goto_1

    .line 366
    :cond_1f
    const-string v4, "audio_sample_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 367
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_sample_size:I

    goto/16 :goto_1

    .line 370
    :cond_20
    const-string v4, "audio_frame_size"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 371
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->audio_frame_size:I

    goto/16 :goto_1

    .line 374
    :cond_21
    const-string v4, "video_port"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 375
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video_port:I

    goto/16 :goto_1

    .line 378
    :cond_22
    const-string v4, "video_avp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 379
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v3

    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->video_avp:I

    goto/16 :goto_1

    .line 384
    :cond_23
    const-string v4, "contact_user"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 385
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    goto/16 :goto_1

    .line 388
    :cond_24
    const-string v4, "auto_accept"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    :goto_2
    iput v3, p0, Lorg/sipdroid/sipua/UserAgentProfile;->accept_time:I

    goto/16 :goto_1

    :cond_25
    const/4 v3, -0x1

    goto :goto_2
.end method

.method protected toLines()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    return-object v0
.end method
