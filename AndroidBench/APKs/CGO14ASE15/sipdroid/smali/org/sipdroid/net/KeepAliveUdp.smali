.class public Lorg/sipdroid/net/KeepAliveUdp;
.super Ljava/lang/Thread;
.source "KeepAliveUdp.java"


# instance fields
.field protected delta_time:J

.field expire:J

.field stop:Z

.field protected target:Lorg/zoolu/net/SocketAddress;

.field udp_packet:Lorg/zoolu/net/UdpPacket;

.field udp_socket:Lorg/zoolu/net/UdpSocket;


# direct methods
.method protected constructor <init>(Lorg/zoolu/net/SocketAddress;J)V
    .locals 2
    .param p1, "target"    # Lorg/zoolu/net/SocketAddress;
    .param p2, "delta_time"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->expire:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->stop:Z

    .line 54
    iput-object p1, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    .line 55
    iput-wide p2, p0, Lorg/sipdroid/net/KeepAliveUdp;->delta_time:J

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/SocketAddress;J)V
    .locals 3
    .param p1, "udp_socket"    # Lorg/zoolu/net/UdpSocket;
    .param p2, "target"    # Lorg/zoolu/net/SocketAddress;
    .param p3, "delta_time"    # J

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    iput-object v2, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->expire:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->stop:Z

    .line 61
    iput-object p2, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    .line 62
    iput-wide p3, p0, Lorg/sipdroid/net/KeepAliveUdp;->delta_time:J

    .line 63
    invoke-direct {p0, p1, v2}, Lorg/sipdroid/net/KeepAliveUdp;->init(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/UdpPacket;)V

    .line 64
    invoke-virtual {p0}, Lorg/sipdroid/net/KeepAliveUdp;->start()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/SocketAddress;Lorg/zoolu/net/UdpPacket;J)V
    .locals 2
    .param p1, "udp_socket"    # Lorg/zoolu/net/UdpSocket;
    .param p2, "target"    # Lorg/zoolu/net/SocketAddress;
    .param p3, "udp_packet"    # Lorg/zoolu/net/UdpPacket;
    .param p4, "delta_time"    # J

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->expire:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->stop:Z

    .line 70
    iput-object p2, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    .line 71
    iput-wide p4, p0, Lorg/sipdroid/net/KeepAliveUdp;->delta_time:J

    .line 72
    invoke-direct {p0, p1, p3}, Lorg/sipdroid/net/KeepAliveUdp;->init(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/UdpPacket;)V

    .line 73
    invoke-virtual {p0}, Lorg/sipdroid/net/KeepAliveUdp;->start()V

    .line 74
    return-void
.end method

.method private init(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/UdpPacket;)V
    .locals 3
    .param p1, "udp_socket"    # Lorg/zoolu/net/UdpSocket;
    .param p2, "udp_packet"    # Lorg/zoolu/net/UdpPacket;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_socket:Lorg/zoolu/net/UdpSocket;

    .line 79
    if-nez p2, :cond_0

    .line 80
    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 81
    .local v0, "buff":[B
    new-instance p2, Lorg/zoolu/net/UdpPacket;

    .end local p2    # "udp_packet":Lorg/zoolu/net/UdpPacket;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p2, v0, v1, v2}, Lorg/zoolu/net/UdpPacket;-><init>([BII)V

    .line 83
    .end local v0    # "buff":[B
    .restart local p2    # "udp_packet":Lorg/zoolu/net/UdpPacket;
    :cond_0
    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v1}, Lorg/zoolu/net/SocketAddress;->getAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/zoolu/net/UdpPacket;->setIpAddress(Lorg/zoolu/net/IpAddress;)V

    .line 85
    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v1}, Lorg/zoolu/net/SocketAddress;->getPort()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/zoolu/net/UdpPacket;->setPort(I)V

    .line 87
    :cond_1
    iput-object p2, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    .line 88
    return-void

    .line 80
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public getDeltaTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->delta_time:J

    return-wide v0
.end method

.method public getDestSoAddress()Lorg/zoolu/net/SocketAddress;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    return-object v0
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->stop:Z

    .line 131
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->stop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 143
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->stop:Z

    if-nez v1, :cond_1

    .line 146
    iget-wide v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->delta_time:J

    invoke-static {v1, v2}, Lorg/sipdroid/net/KeepAliveUdp;->sleep(J)V

    .line 147
    iget-wide v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->expire:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/sipdroid/net/KeepAliveUdp;->expire:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/sipdroid/net/KeepAliveUdp;->halt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_socket:Lorg/zoolu/net/UdpSocket;

    .line 155
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
    .line 135
    iget-boolean v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_socket:Lorg/zoolu/net/UdpSocket;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_socket:Lorg/zoolu/net/UdpSocket;

    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    invoke-virtual {v0, v1}, Lorg/zoolu/net/UdpSocket;->send(Lorg/zoolu/net/UdpPacket;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setDeltaTime(J)V
    .locals 0
    .param p1, "delta_time"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lorg/sipdroid/net/KeepAliveUdp;->delta_time:J

    .line 98
    return-void
.end method

.method public setDestSoAddress(Lorg/zoolu/net/SocketAddress;)V
    .locals 2
    .param p1, "soaddr"    # Lorg/zoolu/net/SocketAddress;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    .line 108
    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v1}, Lorg/zoolu/net/SocketAddress;->getAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/zoolu/net/UdpPacket;->setIpAddress(Lorg/zoolu/net/IpAddress;)V

    .line 110
    iget-object v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_packet:Lorg/zoolu/net/UdpPacket;

    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v1}, Lorg/zoolu/net/SocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zoolu/net/UdpPacket;->setPort(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 122
    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 123
    iput-wide v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->expire:J

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/sipdroid/net/KeepAliveUdp;->expire:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_socket:Lorg/zoolu/net/UdpSocket;

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_socket:Lorg/zoolu/net/UdpSocket;

    invoke-virtual {v2}, Lorg/zoolu/net/UdpSocket;->getLocalAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/net/KeepAliveUdp;->udp_socket:Lorg/zoolu/net/UdpSocket;

    invoke-virtual {v2}, Lorg/zoolu/net/UdpSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/net/KeepAliveUdp;->target:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v2}, Lorg/zoolu/net/SocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/sipdroid/net/KeepAliveUdp;->delta_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
