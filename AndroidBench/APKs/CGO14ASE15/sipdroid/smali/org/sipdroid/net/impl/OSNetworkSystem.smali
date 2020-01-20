.class public final Lorg/sipdroid/net/impl/OSNetworkSystem;
.super Ljava/lang/Object;
.source "OSNetworkSystem.java"


# static fields
.field private static final ERRORCODE_SOCKET_TIMEOUT:I = -0xd1

.field private static final INETADDR_REACHABLE:I

.field private static isNetworkInited:Z

.field private static ref:Lorg/sipdroid/net/impl/OSNetworkSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/sipdroid/net/impl/OSNetworkSystem;

    invoke-direct {v0}, Lorg/sipdroid/net/impl/OSNetworkSystem;-><init>()V

    sput-object v0, Lorg/sipdroid/net/impl/OSNetworkSystem;->ref:Lorg/sipdroid/net/impl/OSNetworkSystem;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lorg/sipdroid/net/impl/OSNetworkSystem;->isNetworkInited:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static native acceptSocketImpl(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native availableStreamImpl(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native connectDatagramImpl2(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native connectSocketImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
.end method

.method static native connectStreamWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native connectWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I
.end method

.method static native createDatagramSocketImpl(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native createMulticastSocketImpl(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native createServerStreamSocketImpl(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native createSocketImpl(Ljava/io/FileDescriptor;Z)V
.end method

.method static native disconnectDatagramImpl(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native getHostByAddrImpl([B)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method static native getHostByNameImpl(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public static getOSNetworkSystem()Lorg/sipdroid/net/impl/OSNetworkSystem;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/sipdroid/net/impl/OSNetworkSystem;->ref:Lorg/sipdroid/net/impl/OSNetworkSystem;

    return-object v0
.end method

.method static native getSocketFlagsImpl()I
.end method

.method static native getSocketLocalAddressImpl(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;
.end method

.method static native getSocketLocalPortImpl(Ljava/io/FileDescriptor;Z)I
.end method

.method static native getSocketOptionImpl(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native listenStreamSocketImpl(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native peekDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native readSocketDirectImpl(Ljava/io/FileDescriptor;IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native readSocketImpl(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native receiveDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native receiveDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native receiveStreamImpl(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native recvConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native recvConnectedDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)I
.end method

.method static native sendConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;IIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendConnectedDatagramImpl(Ljava/io/FileDescriptor;[BIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendDatagramDirectImpl(Ljava/io/FileDescriptor;IIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendDatagramImpl(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendDatagramImpl2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendStreamImpl(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendUrgentDataImpl(Ljava/io/FileDescriptor;B)V
.end method

.method static native setNonBlockingImpl(Ljava/io/FileDescriptor;Z)V
.end method

.method static native setSocketOptionImpl(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native shutdownInputImpl(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native shutdownOutputImpl(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native socketBindImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native socketBindImpl2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native socketCloseImpl(Ljava/io/FileDescriptor;)V
.end method

.method static native supportsUrgentDataImpl(Ljava/io/FileDescriptor;)Z
.end method

.method static native writeSocketDirectImpl(Ljava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native writeSocketImpl(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .locals 0
    .param p1, "fdServer"    # Ljava/io/FileDescriptor;
    .param p2, "newSocket"    # Ljava/net/SocketImpl;
    .param p3, "fdnewSocket"    # Ljava/io/FileDescriptor;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->acceptSocketImpl(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V

    .line 159
    return-void
.end method

.method public availableStream(Ljava/io/FileDescriptor;)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->availableStreamImpl(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public bind(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "port"    # I
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1, p2, p3}, Lorg/sipdroid/net/impl/OSNetworkSystem;->socketBindImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V

    .line 149
    return-void
.end method

.method public bind2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "port"    # I
    .param p3, "bindToDevice"    # Z
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->socketBindImpl2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "trafficClass"    # I
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->connectSocketImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "port"    # I
    .param p3, "trafficClass"    # I
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->connectDatagramImpl2(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V

    .line 123
    return-void
.end method

.method public connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "aport"    # I
    .param p3, "timeout"    # I
    .param p4, "trafficClass"    # I
    .param p5, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p1, p2, p3, p4, p5}, Lorg/sipdroid/net/impl/OSNetworkSystem;->connectStreamWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V

    .line 144
    return-void
.end method

.method public connectWithTimeout(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # I
    .param p3, "trafficClass"    # I
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "step"    # I
    .param p7, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static/range {p1 .. p7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->connectWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I

    move-result v0

    return v0
.end method

.method public createDatagramSocket(Ljava/io/FileDescriptor;Z)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "preferIPv4Stack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->createDatagramSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 93
    return-void
.end method

.method public createMulticastSocket(Ljava/io/FileDescriptor;Z)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "preferIPv4Stack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->createMulticastSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 229
    return-void
.end method

.method public createServerStreamSocket(Ljava/io/FileDescriptor;Z)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "preferIPv4Stack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->createServerStreamSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 234
    return-void
.end method

.method public createSocket(Ljava/io/FileDescriptor;Z)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "preferIPv4Stack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->createSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 88
    return-void
.end method

.method public disconnectDatagram(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->disconnectDatagramImpl(Ljava/io/FileDescriptor;)V

    .line 224
    return-void
.end method

.method public getHostByAddr([B)Ljava/net/InetAddress;
    .locals 1
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getHostByAddrImpl([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "preferIPv6Addresses"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getHostByNameImpl(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFlags()I
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketFlagsImpl()I

    move-result v0

    return v0
.end method

.method public getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "preferIPv6Addresses"    # Z

    .prologue
    .line 331
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketLocalAddressImpl(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketLocalPort(Ljava/io/FileDescriptor;Z)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "preferIPv6Addresses"    # Z

    .prologue
    .line 343
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketLocalPortImpl(Ljava/io/FileDescriptor;Z)I

    move-result v0

    return v0
.end method

.method public getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getSocketOptionImpl(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lorg/sipdroid/net/impl/OSNetworkSystem;->inheritedChannelImpl()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method native inheritedChannelImpl()Ljava/nio/channels/Channel;
.end method

.method public listenStreamSocket(Ljava/io/FileDescriptor;I)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->listenStreamSocketImpl(Ljava/io/FileDescriptor;I)V

    .line 282
    return-void
.end method

.method public oneTimeInitialization(Z)V
    .locals 1
    .param p1, "jcl_supports_ipv6"    # Z

    .prologue
    .line 741
    sget-boolean v0, Lorg/sipdroid/net/impl/OSNetworkSystem;->isNetworkInited:Z

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0, p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->oneTimeInitializationImpl(Z)V

    .line 743
    const/4 v0, 0x1

    sput-boolean v0, Lorg/sipdroid/net/impl/OSNetworkSystem;->isNetworkInited:Z

    .line 745
    :cond_0
    return-void
.end method

.method native oneTimeInitializationImpl(Z)V
.end method

.method public peekDatagram(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "sender"    # Ljava/net/InetAddress;
    .param p3, "receiveTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p1, p2, p3}, Lorg/sipdroid/net/impl/OSNetworkSystem;->peekDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/FileDescriptor;[BIII)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p1, p2, p3, p4, p5}, Lorg/sipdroid/net/impl/OSNetworkSystem;->readSocketImpl(Ljava/io/FileDescriptor;[BIII)I

    move-result v0

    return v0
.end method

.method public readDirect(Ljava/io/FileDescriptor;IIII)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1, p2, p3, p4, p5}, Lorg/sipdroid/net/impl/OSNetworkSystem;->readSocketDirectImpl(Ljava/io/FileDescriptor;IIII)I

    move-result v0

    return v0
.end method

.method public receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "packet"    # Ljava/net/DatagramPacket;
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "receiveTimeout"    # I
    .param p7, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static/range {p1 .. p7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->receiveDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    move-result v0

    return v0
.end method

.method public receiveDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "packet"    # Ljava/net/DatagramPacket;
    .param p3, "address"    # I
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "receiveTimeout"    # I
    .param p7, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static/range {p1 .. p7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->receiveDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I

    move-result v0

    return v0
.end method

.method public receiveStream(Ljava/io/FileDescriptor;[BIII)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p1, p2, p3, p4, p5}, Lorg/sipdroid/net/impl/OSNetworkSystem;->receiveStreamImpl(Ljava/io/FileDescriptor;[BIII)I

    move-result v0

    return v0
.end method

.method public recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "packet"    # Ljava/net/DatagramPacket;
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "receiveTimeout"    # I
    .param p7, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static/range {p1 .. p7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->recvConnectedDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    move-result v0

    return v0
.end method

.method public recvConnectedDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "packet"    # Ljava/net/DatagramPacket;
    .param p3, "address"    # I
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "receiveTimeout"    # I
    .param p7, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static/range {p1 .. p7}, Lorg/sipdroid/net/impl/OSNetworkSystem;->recvConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I

    move-result v0

    return v0
.end method

.method public select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;J)[I
    .locals 9
    .param p1, "readFDs"    # [Ljava/io/FileDescriptor;
    .param p2, "writeFDs"    # [Ljava/io/FileDescriptor;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 307
    array-length v2, p1

    .line 308
    .local v2, "countRead":I
    array-length v3, p2

    .line 309
    .local v3, "countWrite":I
    const/4 v7, 0x0

    .line 310
    .local v7, "result":I
    add-int v0, v2, v3

    if-nez v0, :cond_1

    .line 311
    new-array v4, v8, [I

    .line 323
    :cond_0
    :goto_0
    return-object v4

    .line 313
    :cond_1
    add-int v0, v2, v3

    new-array v4, v0, [I

    .local v4, "flags":[I
    move-object v0, p1

    move-object v1, p2

    move-wide v5, p3

    .line 316
    invoke-static/range {v0 .. v6}, Lorg/sipdroid/net/impl/OSNetworkSystem;->selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)I

    move-result v7

    .line 319
    if-gez v7, :cond_0

    .line 322
    const/16 v0, -0xd1

    if-ne v0, v7, :cond_2

    .line 323
    new-array v4, v8, [I

    goto :goto_0

    .line 325
    :cond_2
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    throw v0
.end method

.method public sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "bindToDevice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p1, p2, p3, p4, p5}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendConnectedDatagramImpl(Ljava/io/FileDescriptor;[BIIZ)I

    move-result v0

    return v0
.end method

.method public sendConnectedDatagramDirect(Ljava/io/FileDescriptor;IIIZ)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "bindToDevice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p1, p2, p3, p4, p5}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "port"    # I
    .param p6, "bindToDevice"    # Z
    .param p7, "trafficClass"    # I
    .param p8, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static/range {p1 .. p8}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendDatagramImpl(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendDatagram2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "port"    # I
    .param p6, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static/range {p1 .. p6}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendDatagramImpl2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendDatagramDirect(Ljava/io/FileDescriptor;IIIIZILjava/net/InetAddress;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "port"    # I
    .param p6, "bindToDevice"    # Z
    .param p7, "trafficClass"    # I
    .param p8, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static/range {p1 .. p8}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendDatagramDirectImpl(Ljava/io/FileDescriptor;IIIIZILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendStream(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendStreamImpl(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public sendUrgentData(Ljava/io/FileDescriptor;B)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "value"    # B

    .prologue
    .line 259
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->sendUrgentDataImpl(Ljava/io/FileDescriptor;B)V

    .line 260
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;[B)V
    .locals 0
    .param p1, "sender"    # Ljava/net/InetAddress;
    .param p2, "address"    # [B

    .prologue
    .line 395
    invoke-virtual {p0, p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->setInetAddressImpl(Ljava/net/InetAddress;[B)V

    .line 396
    return-void
.end method

.method native setInetAddressImpl(Ljava/net/InetAddress;[B)V
.end method

.method public setNonBlocking(Ljava/io/FileDescriptor;Z)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1, p2}, Lorg/sipdroid/net/impl/OSNetworkSystem;->setNonBlockingImpl(Ljava/io/FileDescriptor;Z)V

    .line 118
    return-void
.end method

.method public setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "opt"    # I
    .param p3, "optVal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p1, p2, p3}, Lorg/sipdroid/net/impl/OSNetworkSystem;->setSocketOptionImpl(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 370
    return-void
.end method

.method public shutdownInput(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->shutdownInputImpl(Ljava/io/FileDescriptor;)V

    .line 248
    return-void
.end method

.method public shutdownOutput(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->shutdownOutputImpl(Ljava/io/FileDescriptor;)V

    .line 252
    return-void
.end method

.method public socketClose(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->socketCloseImpl(Ljava/io/FileDescriptor;)V

    .line 383
    return-void
.end method

.method public supportsUrgentData(Ljava/io/FileDescriptor;)Z
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 255
    invoke-static {p1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->supportsUrgentDataImpl(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->writeSocketImpl(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public writeDirect(Ljava/io/FileDescriptor;III)I
    .locals 1
    .param p1, "aFD"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1, p2, p3, p4}, Lorg/sipdroid/net/impl/OSNetworkSystem;->writeSocketDirectImpl(Ljava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method
