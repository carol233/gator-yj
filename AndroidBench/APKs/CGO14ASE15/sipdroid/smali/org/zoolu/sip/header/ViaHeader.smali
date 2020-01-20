.class public Lorg/zoolu/sip/header/ViaHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "ViaHeader.java"


# static fields
.field protected static final branch_param:Ljava/lang/String; = "branch"

.field protected static final maddr_param:Ljava/lang/String; = "maddr"

.field protected static final received_param:Ljava/lang/String; = "received"

.field protected static final rport_param:Ljava/lang/String; = "rport"

.field protected static final ttl_param:Ljava/lang/String; = "ttl"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "Via"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 65
    const-string v0, "Via"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP/2.0/UDP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 74
    const-string v0, "Via"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP/2.0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getBranch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "branch"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ViaHeader;->getSentBy()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "sentby":Ljava/lang/String;
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    .line 106
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 109
    .end local v1    # "sentby":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getMaddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "maddr"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/ViaHeader;->getSentBy()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    .line 124
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v1

    .line 126
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 86
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/header/ViaHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0, v2}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/zoolu/tools/Parser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReceived()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "received"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRport()I
    .locals 2

    .prologue
    .line 171
    const-string v1, "rport"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSentBy()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x2f

    .line 93
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/header/ViaHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0, v3}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/zoolu/tools/Parser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 95
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 98
    :goto_0
    return-object v1

    .line 97
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/header/ViaHeader;->value:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v3

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->indexOfSeparator()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "sentby":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSipURL()Lorg/zoolu/sip/address/SipURL;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lorg/zoolu/sip/address/SipURL;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/zoolu/sip/header/ViaHeader;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getTtl()I
    .locals 2

    .prologue
    .line 213
    const-string v1, "ttl"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/header/ViaHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public hasBranch()Z
    .locals 1

    .prologue
    .line 136
    const-string v0, "branch"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMaddr()Z
    .locals 1

    .prologue
    .line 193
    const-string v0, "maddr"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPort()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ViaHeader;->getSentBy()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "sentby":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    const/4 v1, 0x1

    .line 117
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasReceived()Z
    .locals 1

    .prologue
    .line 151
    const-string v0, "received"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRport()Z
    .locals 1

    .prologue
    .line 166
    const-string v0, "rport"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasTtl()Z
    .locals 1

    .prologue
    .line 208
    const-string v0, "ttl"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ViaHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBranch(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "branch"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/ViaHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setMaddr(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "maddr"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/ViaHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "received"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/ViaHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setRport()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "rport"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/header/ViaHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setRport(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 185
    if-gez p1, :cond_0

    .line 186
    const-string v0, "rport"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/header/ViaHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v0, "rport"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/header/ViaHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTtl(I)V
    .locals 2
    .param p1, "ttl"    # I

    .prologue
    .line 222
    const-string v0, "ttl"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/header/ViaHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method
