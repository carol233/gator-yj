.class public Lorg/zoolu/net/IpAddress;
.super Ljava/lang/Object;
.source "IpAddress.java"


# static fields
.field public static localIpAddress:Ljava/lang/String;


# instance fields
.field address:Ljava/lang/String;

.field inet_address:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "127.0.0.1"

    sput-object v0, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/zoolu/net/IpAddress;->init(Ljava/lang/String;Ljava/net/InetAddress;)V

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "iaddress"    # Ljava/net/InetAddress;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/zoolu/net/IpAddress;->init(Ljava/lang/String;Ljava/net/InetAddress;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/IpAddress;)V
    .locals 2
    .param p1, "ipaddr"    # Lorg/zoolu/net/IpAddress;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-object v0, p1, Lorg/zoolu/net/IpAddress;->address:Ljava/lang/String;

    iget-object v1, p1, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Lorg/zoolu/net/IpAddress;->init(Ljava/lang/String;Ljava/net/InetAddress;)V

    .line 94
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/zoolu/net/IpAddress;
    .locals 2
    .param p0, "host_addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 132
    .local v0, "iaddr":Ljava/net/InetAddress;
    new-instance v1, Lorg/zoolu/net/IpAddress;

    invoke-direct {v1, v0}, Lorg/zoolu/net/IpAddress;-><init>(Ljava/net/InetAddress;)V

    return-object v1
.end method

.method public static getUIContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "iaddress"    # Ljava/net/InetAddress;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/zoolu/net/IpAddress;->address:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;

    .line 71
    return-void
.end method

.method public static setLocalIpAddress()V
    .locals 10

    .prologue
    .line 137
    const-string v7, "127.0.0.1"

    sput-object v7, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    .line 140
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 141
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 143
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 146
    .local v5, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_1

    .line 147
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 149
    invoke-static {}, Lorg/zoolu/net/IpAddress;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "stun"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 150
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v4    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v7

    .line 178
    :cond_2
    return-void

    .line 153
    .restart local v4    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v5    # "inetAddress":Ljava/net/InetAddress;
    .restart local v6    # "intf":Ljava/net/NetworkInterface;
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/zoolu/net/IpAddress;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "stun_server"

    const-string v9, "stun.ekiga.net"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "StunServer":Ljava/lang/String;
    invoke-static {}, Lorg/zoolu/net/IpAddress;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "stun_server_port"

    const-string v9, "3478"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 156
    .local v2, "StunServerPort":I
    new-instance v0, Lcom/jstun/demo/DiscoveryTest;

    invoke-direct {v0, v5, v1, v2}, Lcom/jstun/demo/DiscoveryTest;-><init>(Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 159
    .local v0, "StunDiscover":Lcom/jstun/demo/DiscoveryTest;
    invoke-virtual {v0}, Lcom/jstun/demo/DiscoveryTest;->test()Lcom/jstun/demo/DiscoveryInfo;

    .line 161
    iget-object v7, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    invoke-virtual {v7}, Lcom/jstun/demo/DiscoveryInfo;->getPublicIP()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 162
    .end local v0    # "StunDiscover":Lcom/jstun/demo/DiscoveryTest;
    .end local v1    # "StunServer":Ljava/lang/String;
    .end local v2    # "StunServerPort":I
    :catch_1
    move-exception v7

    goto :goto_0

    .line 165
    :catch_2
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lorg/zoolu/net/IpAddress;

    invoke-direct {v0, p0}, Lorg/zoolu/net/IpAddress;-><init>(Lorg/zoolu/net/IpAddress;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 110
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/zoolu/net/IpAddress;

    move-object v2, v0

    .line 111
    .local v2, "ipaddr":Lorg/zoolu/net/IpAddress;
    invoke-virtual {p0}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 115
    .end local v2    # "ipaddr":Lorg/zoolu/net/IpAddress;
    :goto_0
    return v3

    .line 113
    .restart local v2    # "ipaddr":Lorg/zoolu/net/IpAddress;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "ipaddr":Lorg/zoolu/net/IpAddress;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/zoolu/net/IpAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/zoolu/net/IpAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/zoolu/net/IpAddress;->inet_address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/net/IpAddress;->address:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/zoolu/net/IpAddress;->address:Ljava/lang/String;

    return-object v0
.end method
