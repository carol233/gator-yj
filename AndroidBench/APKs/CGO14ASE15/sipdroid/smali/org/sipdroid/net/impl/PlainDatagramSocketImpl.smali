.class public Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# static fields
.field static final FLAG_SHUTDOWN:I = 0x8

.field static final IP_MULTICAST_ADD:I = 0x13

.field static final IP_MULTICAST_DROP:I = 0x14

.field static final IP_MULTICAST_TTL:I = 0x11

.field static final MULTICAST_IF:I = 0x1

.field static final MULTICAST_TTL:I = 0x2

.field static final REUSEADDR_AND_REUSEPORT:I = 0x2711

.field private static final SO_BROADCAST:I = 0x20

.field static final TCP_NODELAY:I = 0x4


# instance fields
.field private bindToDevice:Z

.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private ipaddress:[B

.field private volatile isNativeConnected:Z

.field private netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

.field public receiveTimeout:I

.field public shutdownInput:Z

.field public streaming:Z

.field private trafficClass:I

.field private ttl:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ipaddress:[B

    .line 75
    iput v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ttl:I

    .line 77
    invoke-static {}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getOSNetworkSystem()Lorg/sipdroid/net/impl/OSNetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    .line 83
    iput-boolean v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->streaming:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedPort:I

    .line 110
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 111
    return-void

    .line 73
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "localPort"    # I

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ipaddress:[B

    .line 75
    iput v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ttl:I

    .line 77
    invoke-static {}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getOSNetworkSystem()Lorg/sipdroid/net/impl/OSNetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    .line 83
    iput-boolean v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->streaming:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedPort:I

    .line 104
    iput-object p1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 105
    iput p2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->localPort:I

    .line 106
    return-void

    .line 73
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 418
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 419
    iget v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedPort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 420
    return-void
.end method


# virtual methods
.method public bind(ILjava/net/InetAddress;)V
    .locals 4
    .param p1, "port"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 117
    .local v1, "useBindToDevice":Z
    :goto_0
    iget-object v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v3, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3, p1, v1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->bind2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->bindToDevice:Z

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput p1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->localPort:I

    .line 126
    :cond_0
    const/16 v2, 0x20

    :try_start_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    return-void

    .line 116
    .end local v1    # "useBindToDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    .restart local v1    # "useBindToDevice":Z
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :try_start_1
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->trafficClass:I

    invoke-virtual {v1, v2, p2, v3, p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V

    .line 367
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    iput p2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedPort:I

    .line 374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 375
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "K0317 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public create()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    .line 147
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->disconnectDatagram(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedPort:I

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 388
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->close()V

    .line 152
    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 4
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 156
    const/16 v2, 0x1006

    if-ne p1, v2, :cond_1

    .line 157
    iget v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 158
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 159
    iget v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->trafficClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 163
    :cond_2
    iget-object v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v3, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3, p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, "result":Ljava/lang/Object;
    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    invoke-virtual {v2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 167
    :try_start_0
    iget-object v2, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ipaddress:[B

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTTL()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 192
    .local v0, "result":B
    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    invoke-virtual {v1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 193
    iget v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ttl:I

    int-to-byte v0, v1

    .line 195
    .end local v0    # "result":B
    :cond_0
    return v0
.end method

.method public getTimeToLive()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 181
    .local v0, "result":I
    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    invoke-virtual {v1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 182
    iget v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ttl:I

    .line 184
    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public join(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "addr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 209
    :cond_0
    return-void
.end method

.method public leave(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "addr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 223
    :cond_0
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .locals 9
    .param p1, "sender"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 235
    const/16 v0, 0xa

    new-array v8, v0, [B

    .line 236
    .local v8, "storageArray":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v0, v8

    invoke-direct {v2, v8, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 237
    .local v2, "pack":Ljava/net/DatagramPacket;
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 241
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->setInetAddress(Ljava/net/InetAddress;[B)V

    .line 242
    iget v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->connectedPort:I

    .line 244
    .end local v2    # "pack":Ljava/net/DatagramPacket;
    .end local v8    # "storageArray":[B
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    invoke-virtual {v0, v1, p1, v3}, Lorg/sipdroid/net/impl/OSNetworkSystem;->peekDatagram(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    goto :goto_0
.end method

.method public peekData(Ljava/net/DatagramPacket;)I
    .locals 9
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    iget-boolean v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 396
    invoke-direct {p0, p1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0

    .line 399
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v8

    .line 403
    .local v8, "e":Ljava/io/InterruptedIOException;
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v8}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 9
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    iget-boolean v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 254
    invoke-direct {p0, p1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v8

    .line 261
    .local v8, "e":Ljava/io/InterruptedIOException;
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v8}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 9
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    iget-boolean v5, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->bindToDevice:Z

    invoke-virtual/range {v0 .. v5}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    iget-boolean v6, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->bindToDevice:Z

    iget v7, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->trafficClass:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I

    goto :goto_0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 8
    .param p1, "optID"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 292
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 293
    const/16 p1, 0x2711

    .line 296
    :cond_0
    const/16 v4, 0x1006

    if-ne p1, v4, :cond_2

    .line 297
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receiveTimeout:I

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 299
    .restart local p2    # "val":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    invoke-virtual {v4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketFlags()I

    move-result v1

    .line 301
    .local v1, "flags":I
    :try_start_0
    iget-object v4, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    iget-object v5, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    shl-int/lit8 v6, v1, 0x10

    or-int/2addr v6, p1

    invoke-virtual {v4, v5, v6, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_3
    const/16 v4, 0x10

    if-ne p1, v4, :cond_4

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_4

    move-object v2, p2

    .line 310
    check-cast v2, Ljava/net/InetAddress;

    .line 315
    .local v2, "inet":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 317
    .local v3, "local":Ljava/net/InetAddress;
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, p2

    .line 322
    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    iput-object v4, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ipaddress:[B

    .line 337
    .end local v2    # "inet":Ljava/net/InetAddress;
    .end local v3    # "local":Ljava/net/InetAddress;
    :cond_4
    if-ne p1, v7, :cond_1

    .line 338
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->trafficClass:I

    goto :goto_0

    .line 302
    .restart local p2    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/net/SocketException;
    if-eq p1, v7, :cond_3

    .line 306
    throw v0

    .line 318
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v2    # "inet":Ljava/net/InetAddress;
    .restart local v3    # "local":Ljava/net/InetAddress;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLocalHost(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_5
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != getLocalHost(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setTTL(B)V
    .locals 2
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    invoke-virtual {v0}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 355
    iput p1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ttl:I

    .line 357
    :cond_0
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 2
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const/16 v0, 0x11

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->netImpl:Lorg/sipdroid/net/impl/OSNetworkSystem;

    invoke-virtual {v0}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 347
    iput p1, p0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->ttl:I

    .line 349
    :cond_0
    return-void
.end method
