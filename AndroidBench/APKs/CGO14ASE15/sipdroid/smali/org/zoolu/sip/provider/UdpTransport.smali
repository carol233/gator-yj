.class Lorg/zoolu/sip/provider/UdpTransport;
.super Ljava/lang/Object;
.source "UdpTransport.java"

# interfaces
.implements Lorg/zoolu/sip/provider/Transport;
.implements Lorg/zoolu/net/UdpProviderListener;


# static fields
.field public static final PROTO_UDP:Ljava/lang/String; = "udp"


# instance fields
.field listener:Lorg/zoolu/sip/provider/TransportListener;

.field port:I

.field proto:Ljava/lang/String;

.field udp_provider:Lorg/zoolu/net/UdpProvider;


# direct methods
.method public constructor <init>(ILorg/zoolu/net/IpAddress;Lorg/zoolu/sip/provider/TransportListener;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p3, "listener"    # Lorg/zoolu/sip/provider/TransportListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    .line 61
    new-instance v0, Lorg/zoolu/net/UdpSocket;

    invoke-direct {v0, p1, p2}, Lorg/zoolu/net/UdpSocket;-><init>(ILorg/zoolu/net/IpAddress;)V

    .line 62
    .local v0, "socket":Lorg/zoolu/net/UdpSocket;
    new-instance v1, Lorg/zoolu/net/UdpProvider;

    invoke-direct {v1, v0, p0}, Lorg/zoolu/net/UdpProvider;-><init>(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/UdpProviderListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    .line 63
    invoke-virtual {v0}, Lorg/zoolu/net/UdpSocket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->port:I

    .line 64
    return-void
.end method

.method public constructor <init>(ILorg/zoolu/sip/provider/TransportListener;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "listener"    # Lorg/zoolu/sip/provider/TransportListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    .line 52
    new-instance v0, Lorg/zoolu/net/UdpSocket;

    invoke-direct {v0, p1}, Lorg/zoolu/net/UdpSocket;-><init>(I)V

    .line 53
    .local v0, "socket":Lorg/zoolu/net/UdpSocket;
    new-instance v1, Lorg/zoolu/net/UdpProvider;

    invoke-direct {v1, v0, p0}, Lorg/zoolu/net/UdpProvider;-><init>(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/UdpProviderListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    .line 54
    invoke-virtual {v0}, Lorg/zoolu/net/UdpSocket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->port:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/sip/provider/TransportListener;)V
    .locals 1
    .param p1, "socket"    # Lorg/zoolu/net/UdpSocket;
    .param p2, "listener"    # Lorg/zoolu/sip/provider/TransportListener;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    .line 69
    new-instance v0, Lorg/zoolu/net/UdpProvider;

    invoke-direct {v0, p1, p0}, Lorg/zoolu/net/UdpProvider;-><init>(Lorg/zoolu/net/UdpSocket;Lorg/zoolu/net/UdpProviderListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    .line 70
    invoke-virtual {p1}, Lorg/zoolu/net/UdpSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/zoolu/sip/provider/UdpTransport;->port:I

    .line 71
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/zoolu/sip/provider/UdpTransport;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "udp"

    return-object v0
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    invoke-virtual {v0}, Lorg/zoolu/net/UdpProvider;->halt()V

    .line 98
    :cond_0
    return-void
.end method

.method public onReceivedPacket(Lorg/zoolu/net/UdpProvider;Lorg/zoolu/net/UdpPacket;)V
    .locals 2
    .param p1, "udp"    # Lorg/zoolu/net/UdpProvider;
    .param p2, "packet"    # Lorg/zoolu/net/UdpPacket;

    .prologue
    .line 112
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/net/UdpPacket;)V

    .line 113
    .local v0, "msg":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p2}, Lorg/zoolu/net/UdpPacket;->getIpAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setRemoteAddress(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Lorg/zoolu/net/UdpPacket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setRemotePort(I)V

    .line 115
    const-string v1, "udp"

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setTransport(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    invoke-interface {v1, p0, v0}, Lorg/zoolu/sip/provider/TransportListener;->onReceivedMessage(Lorg/zoolu/sip/provider/Transport;Lorg/zoolu/sip/message/Message;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onServiceTerminated(Lorg/zoolu/net/UdpProvider;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "udp"    # Lorg/zoolu/net/UdpProvider;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/provider/TransportListener;->onTransportTerminated(Lorg/zoolu/sip/provider/Transport;Ljava/lang/Exception;)V

    .line 124
    :cond_0
    invoke-virtual {p1}, Lorg/zoolu/net/UdpProvider;->getUdpSocket()Lorg/zoolu/net/UdpSocket;

    move-result-object v0

    .line 125
    .local v0, "socket":Lorg/zoolu/net/UdpSocket;
    if-eqz v0, :cond_1

    .line 127
    :try_start_0
    invoke-virtual {v0}, Lorg/zoolu/net/UdpSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_0
    iput-object v2, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    .line 131
    iput-object v2, p0, Lorg/zoolu/sip/provider/UdpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/net/IpAddress;I)V
    .locals 3
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p2, "dest_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p3, "dest_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v2, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 87
    .local v0, "data":[B
    new-instance v1, Lorg/zoolu/net/UdpPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Lorg/zoolu/net/UdpPacket;-><init>([BI)V

    .line 88
    .local v1, "packet":Lorg/zoolu/net/UdpPacket;
    invoke-virtual {v1, p2}, Lorg/zoolu/net/UdpPacket;->setIpAddress(Lorg/zoolu/net/IpAddress;)V

    .line 89
    invoke-virtual {v1, p3}, Lorg/zoolu/net/UdpPacket;->setPort(I)V

    .line 90
    iget-object v2, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    invoke-virtual {v2, v1}, Lorg/zoolu/net/UdpProvider;->send(Lorg/zoolu/net/UdpPacket;)V

    .line 92
    .end local v0    # "data":[B
    .end local v1    # "packet":Lorg/zoolu/net/UdpPacket;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/zoolu/sip/provider/UdpTransport;->udp_provider:Lorg/zoolu/net/UdpProvider;

    invoke-virtual {v0}, Lorg/zoolu/net/UdpProvider;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
