.class public Lorg/zoolu/sip/provider/ConnectionIdentifier;
.super Lorg/zoolu/sip/provider/Identifier;
.source "ConnectionIdentifier.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/net/IpAddress;I)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "remote_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p3, "remote_port"    # I

    .prologue
    .line 35
    invoke-static {p1, p2, p3}, Lorg/zoolu/sip/provider/ConnectionIdentifier;->getId(Ljava/lang/String;Lorg/zoolu/net/IpAddress;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/zoolu/sip/provider/Identifier;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/ConnectedTransport;)V
    .locals 3
    .param p1, "conn"    # Lorg/zoolu/sip/provider/ConnectedTransport;

    .prologue
    .line 50
    invoke-interface {p1}, Lorg/zoolu/sip/provider/ConnectedTransport;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/zoolu/sip/provider/ConnectedTransport;->getRemoteAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v1

    invoke-interface {p1}, Lorg/zoolu/sip/provider/ConnectedTransport;->getRemotePort()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/zoolu/sip/provider/ConnectionIdentifier;->getId(Ljava/lang/String;Lorg/zoolu/net/IpAddress;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/zoolu/sip/provider/Identifier;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/ConnectionIdentifier;)V
    .locals 0
    .param p1, "conn_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Lorg/zoolu/sip/provider/Identifier;)V

    .line 41
    return-void
.end method

.method private static getId(Ljava/lang/String;Lorg/zoolu/net/IpAddress;I)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "remote_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p2, "remote_port"    # I

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
