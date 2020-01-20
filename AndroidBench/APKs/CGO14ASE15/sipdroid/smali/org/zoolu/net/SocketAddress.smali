.class public Lorg/zoolu/net/SocketAddress;
.super Ljava/lang/Object;
.source "SocketAddress.java"


# instance fields
.field ipaddr:Lorg/zoolu/net/IpAddress;

.field port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "soaddr"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "addr":Ljava/lang/String;
    const/4 v2, -0x1

    .line 50
    .local v2, "port":I
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 51
    .local v1, "colon":I
    if-gez v1, :cond_0

    .line 52
    move-object v0, p1

    .line 60
    :goto_0
    new-instance v3, Lorg/zoolu/net/IpAddress;

    invoke-direct {v3, v0}, Lorg/zoolu/net/IpAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lorg/zoolu/net/SocketAddress;->init(Lorg/zoolu/net/IpAddress;I)V

    .line 61
    return-void

    .line 54
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    add-int/lit8 v3, v1, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/zoolu/net/IpAddress;

    invoke-direct {v0, p1}, Lorg/zoolu/net/IpAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/zoolu/net/SocketAddress;->init(Lorg/zoolu/net/IpAddress;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/IpAddress;I)V
    .locals 0
    .param p1, "ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p2, "port"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/zoolu/net/SocketAddress;->init(Lorg/zoolu/net/IpAddress;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/SocketAddress;)V
    .locals 2
    .param p1, "soaddr"    # Lorg/zoolu/net/SocketAddress;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Lorg/zoolu/net/SocketAddress;->ipaddr:Lorg/zoolu/net/IpAddress;

    iget v1, p1, Lorg/zoolu/net/SocketAddress;->port:I

    invoke-direct {p0, v0, v1}, Lorg/zoolu/net/SocketAddress;->init(Lorg/zoolu/net/IpAddress;I)V

    .line 66
    return-void
.end method

.method private init(Lorg/zoolu/net/IpAddress;I)V
    .locals 0
    .param p1, "ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p2, "port"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lorg/zoolu/net/SocketAddress;->ipaddr:Lorg/zoolu/net/IpAddress;

    .line 71
    iput p2, p0, Lorg/zoolu/net/SocketAddress;->port:I

    .line 72
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/zoolu/net/SocketAddress;

    invoke-direct {v0, p0}, Lorg/zoolu/net/SocketAddress;-><init>(Lorg/zoolu/net/SocketAddress;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/zoolu/net/SocketAddress;

    move-object v2, v0

    .line 93
    .local v2, "saddr":Lorg/zoolu/net/SocketAddress;
    iget v4, p0, Lorg/zoolu/net/SocketAddress;->port:I

    iget v5, v2, Lorg/zoolu/net/SocketAddress;->port:I

    if-eq v4, v5, :cond_1

    .line 99
    .end local v2    # "saddr":Lorg/zoolu/net/SocketAddress;
    :cond_0
    :goto_0
    return v3

    .line 95
    .restart local v2    # "saddr":Lorg/zoolu/net/SocketAddress;
    :cond_1
    iget-object v4, p0, Lorg/zoolu/net/SocketAddress;->ipaddr:Lorg/zoolu/net/IpAddress;

    iget-object v5, v2, Lorg/zoolu/net/SocketAddress;->ipaddr:Lorg/zoolu/net/IpAddress;

    invoke-virtual {v4, v5}, Lorg/zoolu/net/IpAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const/4 v3, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "saddr":Lorg/zoolu/net/SocketAddress;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getAddress()Lorg/zoolu/net/IpAddress;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/zoolu/net/SocketAddress;->ipaddr:Lorg/zoolu/net/IpAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/zoolu/net/SocketAddress;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/net/SocketAddress;->ipaddr:Lorg/zoolu/net/IpAddress;

    invoke-virtual {v1}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/zoolu/net/SocketAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
