.class public Lcom/jstun/demo/DiscoveryInfo;
.super Ljava/lang/Object;
.source "DiscoveryInfo.java"


# instance fields
.field private blockedUDP:Z

.field private error:Z

.field private errorReason:Ljava/lang/String;

.field private errorResponseCode:I

.field private fullCone:Z

.field private openAccess:Z

.field private portRestrictedCone:Z

.field private publicIP:Ljava/net/InetAddress;

.field private restrictedCone:Z

.field private symmetric:Z

.field private symmetricUDPFirewall:Z

.field private testIP:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "testIP"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    .line 10
    iput v0, p0, Lcom/jstun/demo/DiscoveryInfo;->errorResponseCode:I

    .line 12
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->openAccess:Z

    .line 13
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->blockedUDP:Z

    .line 14
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->fullCone:Z

    .line 15
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->restrictedCone:Z

    .line 16
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->portRestrictedCone:Z

    .line 17
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetric:Z

    .line 18
    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetricUDPFirewall:Z

    .line 22
    iput-object p1, p0, Lcom/jstun/demo/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    .line 23
    return-void
.end method


# virtual methods
.method public getLocalIP()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jstun/demo/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPublicIP()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jstun/demo/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public isBlockedUDP()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->blockedUDP:Z

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    return v0
.end method

.method public isFullCone()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->fullCone:Z

    goto :goto_0
.end method

.method public isOpenAccess()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->openAccess:Z

    goto :goto_0
.end method

.method public isPortRestrictedCone()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->portRestrictedCone:Z

    goto :goto_0
.end method

.method public isRestrictedCone()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->restrictedCone:Z

    goto :goto_0
.end method

.method public isSymmetric()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetric:Z

    goto :goto_0
.end method

.method public isSymmetricUDPFirewall()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetricUDPFirewall:Z

    goto :goto_0
.end method

.method public setBlockedUDP()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->blockedUDP:Z

    .line 51
    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    .line 31
    iput p1, p0, Lcom/jstun/demo/DiscoveryInfo;->errorResponseCode:I

    .line 32
    iput-object p2, p0, Lcom/jstun/demo/DiscoveryInfo;->errorReason:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setFullCone()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->fullCone:Z

    .line 60
    return-void
.end method

.method public setOpenAccess()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->openAccess:Z

    .line 42
    return-void
.end method

.method public setPortRestrictedCone()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->portRestrictedCone:Z

    .line 69
    return-void
.end method

.method public setPublicIP(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "publicIP"    # Ljava/net/InetAddress;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jstun/demo/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    .line 108
    return-void
.end method

.method public setRestrictedCone()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->restrictedCone:Z

    .line 78
    return-void
.end method

.method public setSymmetric()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetric:Z

    .line 87
    return-void
.end method

.method public setSymmetricUDPFirewall()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetricUDPFirewall:Z

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v2, "Network interface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/jstun/demo/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v2, "Local IP address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v2, p0, Lcom/jstun/demo/DiscoveryInfo;->testIP:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->error:Z

    if-eqz v2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jstun/demo/DiscoveryInfo;->errorReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Responsecode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jstun/demo/DiscoveryInfo;->errorResponseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :goto_1
    return-object v2

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "se":Ljava/net/SocketException;
    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 126
    .end local v1    # "se":Ljava/net/SocketException;
    :cond_0
    const-string v2, "Result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->openAccess:Z

    if-eqz v2, :cond_1

    const-string v2, "Open access to the Internet.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_1
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->blockedUDP:Z

    if-eqz v2, :cond_2

    const-string v2, "Firewall blocks UDP.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_2
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->fullCone:Z

    if-eqz v2, :cond_3

    const-string v2, "Full Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_3
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->restrictedCone:Z

    if-eqz v2, :cond_4

    const-string v2, "Restricted Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_4
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->portRestrictedCone:Z

    if-eqz v2, :cond_5

    const-string v2, "Port restricted Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_5
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetric:Z

    if-eqz v2, :cond_6

    const-string v2, "Symmetric Cone NAT handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_6
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetricUDPFirewall:Z

    if-eqz v2, :cond_7

    const-string v2, "Symmetric UDP Firewall handles connections.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_7
    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->openAccess:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->blockedUDP:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->fullCone:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->restrictedCone:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->portRestrictedCone:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetric:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/jstun/demo/DiscoveryInfo;->symmetricUDPFirewall:Z

    if-nez v2, :cond_8

    const-string v2, "unkown\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_8
    const-string v2, "Public IP address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v2, p0, Lcom/jstun/demo/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_9

    .line 137
    iget-object v2, p0, Lcom/jstun/demo/DiscoveryInfo;->publicIP:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :goto_2
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 139
    :cond_9
    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
