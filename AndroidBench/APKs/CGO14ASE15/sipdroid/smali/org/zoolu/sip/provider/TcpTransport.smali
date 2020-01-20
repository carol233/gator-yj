.class Lorg/zoolu/sip/provider/TcpTransport;
.super Ljava/lang/Object;
.source "TcpTransport.java"

# interfaces
.implements Lorg/zoolu/sip/provider/ConnectedTransport;
.implements Lorg/zoolu/net/TcpConnectionListener;


# static fields
.field public static final PROTO_TCP:Ljava/lang/String; = "tcp"


# instance fields
.field connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

.field last_time:J

.field listener:Lorg/zoolu/sip/provider/TransportListener;

.field tcp_conn:Lorg/zoolu/net/TcpConnection;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/zoolu/net/IpAddress;ILorg/zoolu/sip/provider/TransportListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "remote_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p2, "remote_port"    # I
    .param p3, "listener"    # Lorg/zoolu/sip/provider/TransportListener;
    .param p4, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lorg/zoolu/sip/provider/TcpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    .line 56
    new-instance v0, Lorg/zoolu/net/TcpSocket;

    invoke-direct {v0, p1, p2, p4}, Lorg/zoolu/net/TcpSocket;-><init>(Lorg/zoolu/net/IpAddress;ILjava/lang/String;)V

    .line 57
    .local v0, "socket":Lorg/zoolu/net/TcpSocket;
    new-instance v1, Lorg/zoolu/net/TcpConnection;

    invoke-direct {v1, v0, p0}, Lorg/zoolu/net/TcpConnection;-><init>(Lorg/zoolu/net/TcpSocket;Lorg/zoolu/net/TcpConnectionListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    .line 58
    new-instance v1, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-direct {v1, p0}, Lorg/zoolu/sip/provider/ConnectionIdentifier;-><init>(Lorg/zoolu/sip/provider/ConnectedTransport;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->last_time:J

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->text:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/TcpSocket;Lorg/zoolu/sip/provider/TransportListener;)V
    .locals 2
    .param p1, "socket"    # Lorg/zoolu/net/TcpSocket;
    .param p2, "listener"    # Lorg/zoolu/sip/provider/TransportListener;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lorg/zoolu/sip/provider/TcpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    .line 66
    new-instance v0, Lorg/zoolu/net/TcpConnection;

    invoke-direct {v0, p1, p0}, Lorg/zoolu/net/TcpConnection;-><init>(Lorg/zoolu/net/TcpSocket;Lorg/zoolu/net/TcpConnectionListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->last_time:J

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->text:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getLastTimeMillis()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->last_time:J

    return-wide v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "tcp"

    return-object v0
.end method

.method public getRemoteAddress()Lorg/zoolu/net/IpAddress;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    invoke-virtual {v0}, Lorg/zoolu/net/TcpConnection;->getRemoteAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    invoke-virtual {v0}, Lorg/zoolu/net/TcpConnection;->getRemotePort()I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    invoke-virtual {v0}, Lorg/zoolu/net/TcpConnection;->halt()V

    .line 122
    :cond_0
    return-void
.end method

.method public onConnectionTerminated(Lorg/zoolu/net/TcpConnection;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "tcp_conn"    # Lorg/zoolu/net/TcpConnection;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/provider/TransportListener;->onTransportTerminated(Lorg/zoolu/sip/provider/Transport;Ljava/lang/Exception;)V

    .line 161
    :cond_0
    invoke-virtual {p1}, Lorg/zoolu/net/TcpConnection;->getSocket()Lorg/zoolu/net/TcpSocket;

    move-result-object v0

    .line 162
    .local v0, "socket":Lorg/zoolu/net/TcpSocket;
    if-eqz v0, :cond_1

    .line 164
    :try_start_0
    invoke-virtual {v0}, Lorg/zoolu/net/TcpSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_1
    :goto_0
    iput-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    .line 168
    iput-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    .line 169
    return-void

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onReceivedData(Lorg/zoolu/net/TcpConnection;[BI)V
    .locals 5
    .param p1, "tcp_conn"    # Lorg/zoolu/net/TcpConnection;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->last_time:J

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/zoolu/sip/provider/TcpTransport;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->text:Ljava/lang/String;

    .line 139
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->text:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getSipMessage()Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 141
    .local v0, "msg":Lorg/zoolu/sip/message/Message;
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Lorg/zoolu/net/TcpConnection;->getRemoteAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setRemoteAddress(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lorg/zoolu/net/TcpConnection;->getRemotePort()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setRemotePort(I)V

    .line 145
    const-string v2, "tcp"

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setTransport(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setConnectionId(Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 147
    iget-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->listener:Lorg/zoolu/sip/provider/TransportListener;

    invoke-interface {v2, p0, v0}, Lorg/zoolu/sip/provider/TransportListener;->onReceivedMessage(Lorg/zoolu/sip/provider/Transport;Lorg/zoolu/sip/message/Message;)V

    .line 150
    :cond_0
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getRemainingString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->text:Ljava/lang/String;

    .line 152
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    .end local v1    # "par":Lorg/zoolu/sip/provider/SipParser;
    iget-object v2, p0, Lorg/zoolu/sip/provider/TcpTransport;->text:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 153
    .restart local v1    # "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getSipMessage()Lorg/zoolu/sip/message/Message;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->last_time:J

    .line 113
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 114
    .local v0, "data":[B
    iget-object v1, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    invoke-virtual {v1, v0}, Lorg/zoolu/net/TcpConnection;->send([B)V

    .line 116
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/net/IpAddress;I)V
    .locals 0
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p2, "dest_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p3, "dest_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/provider/TcpTransport;->sendMessage(Lorg/zoolu/sip/message/Message;)V

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/zoolu/sip/provider/TcpTransport;->tcp_conn:Lorg/zoolu/net/TcpConnection;

    invoke-virtual {v0}, Lorg/zoolu/net/TcpConnection;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
