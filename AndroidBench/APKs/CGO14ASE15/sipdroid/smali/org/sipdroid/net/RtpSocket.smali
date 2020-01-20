.class public Lorg/sipdroid/net/RtpSocket;
.super Ljava/lang/Object;
.source "RtpSocket.java"


# instance fields
.field datagram:Ljava/net/DatagramPacket;

.field r_addr:Ljava/net/InetAddress;

.field r_port:I

.field socket:Lorg/sipdroid/net/SipdroidSocket;


# direct methods
.method public constructor <init>(Lorg/sipdroid/net/SipdroidSocket;)V
    .locals 3
    .param p1, "datagram_socket"    # Lorg/sipdroid/net/SipdroidSocket;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/sipdroid/net/RtpSocket;->socket:Lorg/sipdroid/net/SipdroidSocket;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/net/RtpSocket;->r_addr:Ljava/net/InetAddress;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/sipdroid/net/RtpSocket;->r_port:I

    .line 52
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/sipdroid/net/SipdroidSocket;Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "datagram_socket"    # Lorg/sipdroid/net/SipdroidSocket;
    .param p2, "remote_address"    # Ljava/net/InetAddress;
    .param p3, "remote_port"    # I

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/sipdroid/net/RtpSocket;->socket:Lorg/sipdroid/net/SipdroidSocket;

    .line 59
    iput-object p2, p0, Lorg/sipdroid/net/RtpSocket;->r_addr:Ljava/net/InetAddress;

    .line 60
    iput p3, p0, Lorg/sipdroid/net/RtpSocket;->r_port:I

    .line 61
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    .line 62
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->socket:Lorg/sipdroid/net/SipdroidSocket;

    return-object v0
.end method

.method public receive(Lorg/sipdroid/net/RtpPacket;)V
    .locals 3
    .param p1, "rtpp"    # Lorg/sipdroid/net/RtpPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    iget-object v1, p1, Lorg/sipdroid/net/RtpPacket;->packet:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 72
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    iget-object v1, p1, Lorg/sipdroid/net/RtpPacket;->packet:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 73
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->socket:Lorg/sipdroid/net/SipdroidSocket;

    iget-object v1, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/SipdroidSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 74
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->socket:Lorg/sipdroid/net/SipdroidSocket;

    invoke-virtual {v0}, Lorg/sipdroid/net/SipdroidSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->socket:Lorg/sipdroid/net/SipdroidSocket;

    iget-object v1, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/net/SipdroidSocket;->connect(Ljava/net/InetAddress;I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p1, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    .line 77
    return-void
.end method

.method public send(Lorg/sipdroid/net/RtpPacket;)V
    .locals 2
    .param p1, "rtpp"    # Lorg/sipdroid/net/RtpPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    iget-object v1, p1, Lorg/sipdroid/net/RtpPacket;->packet:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 82
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    iget v1, p1, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 83
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/sipdroid/net/RtpSocket;->r_addr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 84
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    iget v1, p0, Lorg/sipdroid/net/RtpSocket;->r_port:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 85
    iget-object v0, p0, Lorg/sipdroid/net/RtpSocket;->socket:Lorg/sipdroid/net/SipdroidSocket;

    iget-object v1, p0, Lorg/sipdroid/net/RtpSocket;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/SipdroidSocket;->send(Ljava/net/DatagramPacket;)V

    .line 86
    return-void
.end method
