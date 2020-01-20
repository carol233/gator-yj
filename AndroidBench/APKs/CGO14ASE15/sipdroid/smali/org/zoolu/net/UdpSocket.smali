.class public Lorg/zoolu/net/UdpSocket;
.super Ljava/lang/Object;
.source "UdpSocket.java"


# instance fields
.field socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    .line 46
    return-void
.end method

.method public constructor <init>(ILorg/zoolu/net/IpAddress;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "ipaddr"    # Lorg/zoolu/net/IpAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lorg/zoolu/net/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p1, "sock"    # Ljava/net/DatagramSocket;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 62
    return-void
.end method

.method public getLocalAddress()Lorg/zoolu/net/IpAddress;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/zoolu/net/IpAddress;

    iget-object v1, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/net/IpAddress;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public receive(Lorg/zoolu/net/UdpPacket;)V
    .locals 2
    .param p1, "pkt"    # Lorg/zoolu/net/UdpPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 90
    .local v0, "dgram":Ljava/net/DatagramPacket;
    iget-object v1, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 91
    invoke-virtual {p1, v0}, Lorg/zoolu/net/UdpPacket;->setDatagramPacket(Ljava/net/DatagramPacket;)V

    .line 92
    return-void
.end method

.method public send(Lorg/zoolu/net/UdpPacket;)V
    .locals 2
    .param p1, "pkt"    # Lorg/zoolu/net/UdpPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 97
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/zoolu/net/UdpSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
