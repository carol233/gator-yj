.class public abstract Lorg/zoolu/sip/header/EndPointHeader;
.super Lorg/zoolu/sip/header/NameAddressHeader;
.source "EndPointHeader.java"


# static fields
.field static final ENDPOINT_PARAMS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tag"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "expires"

    aput-object v2, v0, v1

    sput-object v0, Lorg/zoolu/sip/header/EndPointHeader;->ENDPOINT_PARAMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 61
    if-eqz p3, :cond_0

    .line 62
    const-string v0, "tag"

    invoke-virtual {p0, v0, p3}, Lorg/zoolu/sip/header/EndPointHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "url"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Ljava/lang/String;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "url"    # Lorg/zoolu/sip/address/SipURL;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    .line 68
    if-eqz p3, :cond_0

    .line 69
    const-string v0, "tag"

    invoke-virtual {p0, v0, p3}, Lorg/zoolu/sip/header/EndPointHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getNameAddress()Lorg/zoolu/sip/address/NameAddress;
    .locals 6

    .prologue
    .line 97
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/header/EndPointHeader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v1

    .line 100
    .local v1, "naddr":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {v1}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v3

    .line 101
    .local v3, "url":Lorg/zoolu/sip/address/SipURL;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lorg/zoolu/sip/header/EndPointHeader;->ENDPOINT_PARAMS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 102
    sget-object v4, Lorg/zoolu/sip/header/EndPointHeader;->ENDPOINT_PARAMS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/address/SipURL;->hasParameter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    sget-object v4, Lorg/zoolu/sip/header/EndPointHeader;->ENDPOINT_PARAMS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/address/SipURL;->removeParameter(Ljava/lang/String;)V

    .line 104
    new-instance v2, Lorg/zoolu/sip/address/NameAddress;

    invoke-virtual {v1}, Lorg/zoolu/sip/address/NameAddress;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    .end local v1    # "naddr":Lorg/zoolu/sip/address/NameAddress;
    .local v2, "naddr":Lorg/zoolu/sip/address/NameAddress;
    move-object v1, v2

    .line 101
    .end local v2    # "naddr":Lorg/zoolu/sip/address/NameAddress;
    .restart local v1    # "naddr":Lorg/zoolu/sip/address/NameAddress;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/EndPointHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    .line 84
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/EndPointHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
