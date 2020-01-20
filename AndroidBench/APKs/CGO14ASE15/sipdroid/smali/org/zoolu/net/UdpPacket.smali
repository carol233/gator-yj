.class public Lorg/zoolu/net/UdpPacket;
.super Ljava/lang/Object;
.source "UdpPacket.java"


# instance fields
.field packet:Ljava/net/DatagramPacket;


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 0
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    .line 41
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    .line 56
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    .line 66
    return-void
.end method

.method public constructor <init>([BIILorg/zoolu/net/IpAddress;I)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p5, "port"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p4}, Lorg/zoolu/net/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    .line 73
    return-void
.end method

.method public constructor <init>([BILorg/zoolu/net/IpAddress;I)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p4, "port"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Lorg/zoolu/net/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    .line 61
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method getDatagramPacket()Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public getIpAddress()Lorg/zoolu/net/IpAddress;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/zoolu/net/IpAddress;

    iget-object v1, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/net/IpAddress;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public setData([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 119
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 120
    return-void
.end method

.method public setData([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 125
    return-void
.end method

.method setDatagramPacket(Ljava/net/DatagramPacket;)V
    .locals 0
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    .line 51
    return-void
.end method

.method public setIpAddress(Lorg/zoolu/net/IpAddress;)V
    .locals 2
    .param p1, "ipaddr"    # Lorg/zoolu/net/IpAddress;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Lorg/zoolu/net/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 115
    return-void
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 130
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "iport"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lorg/zoolu/net/UdpPacket;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 138
    return-void
.end method
