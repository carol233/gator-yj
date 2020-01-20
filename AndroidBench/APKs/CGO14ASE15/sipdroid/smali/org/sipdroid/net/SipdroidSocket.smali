.class public Lorg/sipdroid/net/SipdroidSocket;
.super Ljava/net/DatagramSocket;
.source "SipdroidSocket.java"


# static fields
.field public static loaded:Z


# instance fields
.field impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    .line 83
    :try_start_0
    const-string v0, "OSNetworkSystem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lorg/sipdroid/net/impl/OSNetworkSystem;->getOSNetworkSystem()Lorg/sipdroid/net/impl/OSNetworkSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/impl/OSNetworkSystem;->oneTimeInitialization(Z)V

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 40
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-nez v0, :cond_1

    move v0, p1

    :goto_0
    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 41
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    invoke-direct {v0}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;-><init>()V

    iput-object v0, p0, Lorg/sipdroid/net/SipdroidSocket;->impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    .line 43
    iget-object v0, p0, Lorg/sipdroid/net/SipdroidSocket;->impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    invoke-virtual {v0}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->create()V

    .line 44
    iget-object v0, p0, Lorg/sipdroid/net/SipdroidSocket;->impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    const-string v1, "0"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 46
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 50
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/SipdroidSocket;->impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    invoke-virtual {v0}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->close()V

    .line 51
    :cond_0
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 78
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 79
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 75
    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/SipdroidSocket;->impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    invoke-virtual {v0, p1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    goto :goto_0
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/SipdroidSocket;->impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    invoke-virtual {v0, p1}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0
.end method

.method public setSoTimeout(I)V
    .locals 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 54
    sget-boolean v0, Lorg/sipdroid/net/SipdroidSocket;->loaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/net/SipdroidSocket;->impl:Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/net/impl/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    goto :goto_0
.end method
