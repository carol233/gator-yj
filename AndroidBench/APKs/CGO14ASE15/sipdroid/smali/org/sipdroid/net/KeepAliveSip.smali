.class public Lorg/sipdroid/net/KeepAliveSip;
.super Lorg/sipdroid/net/KeepAliveUdp;
.source "KeepAliveSip.java"


# instance fields
.field message:Lorg/zoolu/sip/message/Message;

.field sip_provider:Lorg/zoolu/sip/provider/SipProvider;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;J)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "delta_time"    # J

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, p2, p3}, Lorg/sipdroid/net/KeepAliveUdp;-><init>(Lorg/zoolu/net/SocketAddress;J)V

    .line 38
    iput-object v0, p0, Lorg/sipdroid/net/KeepAliveSip;->message:Lorg/zoolu/sip/message/Message;

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/sipdroid/net/KeepAliveSip;->init(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    .line 45
    invoke-virtual {p0}, Lorg/sipdroid/net/KeepAliveSip;->start()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;J)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "message"    # Lorg/zoolu/sip/message/Message;
    .param p3, "delta_time"    # J

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p3, p4}, Lorg/sipdroid/net/KeepAliveUdp;-><init>(Lorg/zoolu/net/SocketAddress;J)V

    .line 38
    iput-object v0, p0, Lorg/sipdroid/net/KeepAliveSip;->message:Lorg/zoolu/sip/message/Message;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/sipdroid/net/KeepAliveSip;->init(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    .line 53
    invoke-virtual {p0}, Lorg/sipdroid/net/KeepAliveSip;->start()V

    .line 54
    return-void
.end method

.method private init(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "message"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/sipdroid/net/KeepAliveSip;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance p2, Lorg/zoolu/sip/message/Message;

    .end local p2    # "message":Lorg/zoolu/sip/message/Message;
    const-string v0, "\r\n"

    invoke-direct {p2, v0}, Lorg/zoolu/sip/message/Message;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local p2    # "message":Lorg/zoolu/sip/message/Message;
    :cond_0
    iput-object p2, p0, Lorg/sipdroid/net/KeepAliveSip;->message:Lorg/zoolu/sip/message/Message;

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lorg/sipdroid/net/KeepAliveUdp;->run()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/net/KeepAliveSip;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 76
    return-void
.end method

.method public sendToken()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/sipdroid/net/KeepAliveSip;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveSip;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveSip;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveSip;->message:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 70
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveSip;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/net/KeepAliveSip;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/net/KeepAliveSip;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/sipdroid/net/KeepAliveSip;->delta_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
