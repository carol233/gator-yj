.class public Lorg/zoolu/sip/address/NameAddress;
.super Ljava/lang/Object;
.source "NameAddress.java"


# instance fields
.field name:Ljava/lang/String;

.field url:Lorg/zoolu/sip/address/SipURL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "naddr"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v0

    .line 70
    .local v0, "na":Lorg/zoolu/sip/address/NameAddress;
    iget-object v2, v0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    iput-object v2, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    .line 71
    iget-object v2, v0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    iput-object v2, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V
    .locals 0
    .param p1, "displayname"    # Ljava/lang/String;
    .param p2, "sipurl"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "name_address"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/zoolu/sip/address/NameAddress;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/SipURL;)V
    .locals 1
    .param p1, "sipurl"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v0, p0}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 81
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sip/address/NameAddress;

    .line 82
    .local v0, "naddr":Lorg/zoolu/sip/address/NameAddress;
    iget-object v1, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    invoke-virtual {v0}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/address/SipURL;->equals(Lorg/zoolu/sip/address/SipURL;)Z

    move-result v1

    return v1
.end method

.method public equals(Lorg/zoolu/sip/address/NameAddress;)Z
    .locals 2
    .param p1, "naddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    iget-object v1, p1, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Lorg/zoolu/sip/address/SipURL;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDisplayName()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setAddress(Lorg/zoolu/sip/address/SipURL;)V
    .locals 0
    .param p1, "address"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    .line 111
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/zoolu/sip/address/NameAddress;->hasDisplayName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/address/NameAddress;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 129
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/address/NameAddress;->url:Lorg/zoolu/sip/address/SipURL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0
.end method
