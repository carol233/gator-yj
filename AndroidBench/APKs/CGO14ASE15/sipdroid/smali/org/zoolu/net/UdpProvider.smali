.class public Lorg/zoolu/net/UdpProvider;
.super Ljava/lang/Thread;
.source "UdpProvider.java"


# static fields
.field public static final BUFFER_SIZE:I = 0xffff

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x7d0


# instance fields
.field alive_time:J

.field is_running:Z

.field listener:Lorg/zoolu/net/UdpProviderListener;

.field minimum_length:I

.field socket:Lorg/zoolu/net/UdpSocket;

.field socket_timeout:I

.field stop:Z


# direct methods
.method public constructor <init>(Lorg/zoolu/net/UdpSocket;JLorg/zoolu/net/UdpProviderListener;)V
    .locals 0
    .param p1, "socket"    # Lorg/zoolu/net/UdpSocket;
    .param p2, "alive_time"    # J
    .param p4, "listener"    # Lorg/zoolu/net/UdpProviderListener;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/zoolu/net/UdpProvider;->init(Lorg/zoolu/net/UdpSocket;JLorg/zoolu/net/UdpProviderListener;)V

    .line 93
    invoke-virtual {p0}, Lorg/zoolu/net/UdpProvider;->start()V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/UdpProviderListener;)V
    .locals 2
    .param p1, "socket"    # Lorg/zoolu/net/UdpSocket;
    .param p2, "listener"    # Lorg/zoolu/net/UdpProviderListener;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/zoolu/net/UdpProvider;->init(Lorg/zoolu/net/UdpSocket;JLorg/zoolu/net/UdpProviderListener;)V

    .line 86
    invoke-virtual {p0}, Lorg/zoolu/net/UdpProvider;->start()V

    .line 87
    return-void
.end method

.method private init(Lorg/zoolu/net/UdpSocket;JLorg/zoolu/net/UdpProviderListener;)V
    .locals 2
    .param p1, "socket"    # Lorg/zoolu/net/UdpSocket;
    .param p2, "alive_time"    # J
    .param p4, "listener"    # Lorg/zoolu/net/UdpProviderListener;

    .prologue
    const/4 v1, 0x0

    .line 99
    iput-object p4, p0, Lorg/zoolu/net/UdpProvider;->listener:Lorg/zoolu/net/UdpProviderListener;

    .line 100
    iput-object p1, p0, Lorg/zoolu/net/UdpProvider;->socket:Lorg/zoolu/net/UdpSocket;

    .line 101
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/zoolu/net/UdpProvider;->socket_timeout:I

    .line 102
    iput-wide p2, p0, Lorg/zoolu/net/UdpProvider;->alive_time:J

    .line 103
    iput v1, p0, Lorg/zoolu/net/UdpProvider;->minimum_length:I

    .line 104
    iput-boolean v1, p0, Lorg/zoolu/net/UdpProvider;->stop:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/net/UdpProvider;->is_running:Z

    .line 106
    return-void
.end method


# virtual methods
.method public getMinimumReceivedDataLength()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/zoolu/net/UdpProvider;->minimum_length:I

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/zoolu/net/UdpProvider;->socket_timeout:I

    return v0
.end method

.method public getUdpSocket()Lorg/zoolu/net/UdpSocket;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/zoolu/net/UdpProvider;->socket:Lorg/zoolu/net/UdpSocket;

    return-object v0
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/net/UdpProvider;->stop:Z

    .line 164
    iget-object v0, p0, Lorg/zoolu/net/UdpProvider;->socket:Lorg/zoolu/net/UdpSocket;

    invoke-virtual {v0}, Lorg/zoolu/net/UdpSocket;->close()V

    .line 165
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/zoolu/net/UdpProvider;->is_running:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 169
    const v7, 0xffff

    new-array v0, v7, [B

    .line 170
    .local v0, "buf":[B
    new-instance v6, Lorg/zoolu/net/UdpPacket;

    array-length v7, v0

    invoke-direct {v6, v0, v7}, Lorg/zoolu/net/UdpPacket;-><init>([BI)V

    .line 172
    .local v6, "packet":Lorg/zoolu/net/UdpPacket;
    const/4 v2, 0x0

    .line 173
    .local v2, "error":Ljava/lang/Exception;
    const-wide/16 v3, 0x0

    .line 174
    .local v3, "expire":J
    iget-wide v7, p0, Lorg/zoolu/net/UdpProvider;->alive_time:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/zoolu/net/UdpProvider;->alive_time:J

    add-long v3, v7, v9

    .line 179
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v7, p0, Lorg/zoolu/net/UdpProvider;->stop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v7, :cond_3

    .line 181
    :try_start_1
    iget-object v7, p0, Lorg/zoolu/net/UdpProvider;->socket:Lorg/zoolu/net/UdpSocket;

    invoke-virtual {v7, v6}, Lorg/zoolu/net/UdpSocket;->receive(Lorg/zoolu/net/UdpPacket;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :try_start_2
    invoke-virtual {v6}, Lorg/zoolu/net/UdpPacket;->getLength()I

    move-result v7

    iget v8, p0, Lorg/zoolu/net/UdpProvider;->minimum_length:I

    if-lt v7, v8, :cond_2

    .line 188
    iget-object v7, p0, Lorg/zoolu/net/UdpProvider;->listener:Lorg/zoolu/net/UdpProviderListener;

    if-eqz v7, :cond_1

    .line 189
    iget-object v7, p0, Lorg/zoolu/net/UdpProvider;->listener:Lorg/zoolu/net/UdpProviderListener;

    invoke-interface {v7, p0, v6}, Lorg/zoolu/net/UdpProviderListener;->onReceivedPacket(Lorg/zoolu/net/UdpProvider;Lorg/zoolu/net/UdpPacket;)V

    .line 190
    :cond_1
    iget-wide v7, p0, Lorg/zoolu/net/UdpProvider;->alive_time:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_2

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/zoolu/net/UdpProvider;->alive_time:J

    add-long v3, v7, v9

    .line 193
    :cond_2
    new-instance v6, Lorg/zoolu/net/UdpPacket;

    .end local v6    # "packet":Lorg/zoolu/net/UdpPacket;
    array-length v7, v0

    invoke-direct {v6, v0, v7}, Lorg/zoolu/net/UdpPacket;-><init>([BI)V

    .restart local v6    # "packet":Lorg/zoolu/net/UdpPacket;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v5

    .line 183
    .local v5, "ie":Ljava/io/InterruptedIOException;
    iget-wide v7, p0, Lorg/zoolu/net/UdpProvider;->alive_time:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_0

    .line 184
    invoke-virtual {p0}, Lorg/zoolu/net/UdpProvider;->halt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 195
    .end local v5    # "ie":Ljava/io/InterruptedIOException;
    .end local v6    # "packet":Lorg/zoolu/net/UdpPacket;
    :catch_1
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    .line 197
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/zoolu/net/UdpProvider;->stop:Z

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/zoolu/net/UdpProvider;->is_running:Z

    .line 200
    iget-object v7, p0, Lorg/zoolu/net/UdpProvider;->listener:Lorg/zoolu/net/UdpProviderListener;

    if-eqz v7, :cond_4

    .line 201
    iget-object v7, p0, Lorg/zoolu/net/UdpProvider;->listener:Lorg/zoolu/net/UdpProviderListener;

    invoke-interface {v7, p0, v2}, Lorg/zoolu/net/UdpProviderListener;->onServiceTerminated(Lorg/zoolu/net/UdpProvider;Ljava/lang/Exception;)V

    .line 202
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/zoolu/net/UdpProvider;->listener:Lorg/zoolu/net/UdpProviderListener;

    .line 203
    return-void
.end method

.method public send(Lorg/zoolu/net/UdpPacket;)V
    .locals 1
    .param p1, "packet"    # Lorg/zoolu/net/UdpPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/zoolu/net/UdpProvider;->stop:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/zoolu/net/UdpProvider;->socket:Lorg/zoolu/net/UdpSocket;

    invoke-virtual {v0, p1}, Lorg/zoolu/net/UdpSocket;->send(Lorg/zoolu/net/UdpPacket;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setMinimumReceivedDataLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/zoolu/net/UdpProvider;->minimum_length:I

    .line 145
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 128
    iput p1, p0, Lorg/zoolu/net/UdpProvider;->socket_timeout:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "udp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/net/UdpProvider;->socket:Lorg/zoolu/net/UdpSocket;

    invoke-virtual {v1}, Lorg/zoolu/net/UdpSocket;->getLocalAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/net/UdpProvider;->socket:Lorg/zoolu/net/UdpSocket;

    invoke-virtual {v1}, Lorg/zoolu/net/UdpSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
