.class public abstract Lorg/zoolu/sip/header/NameAddressHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "NameAddressHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 42
    invoke-virtual {p2}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "url"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 47
    invoke-virtual {p2}, Lorg/zoolu/sip/address/SipURL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getNameAddress()Lorg/zoolu/sip/address/NameAddress;
    .locals 3

    .prologue
    .line 60
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/header/NameAddressHeader;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v0

    .line 61
    .local v0, "naddr":Lorg/zoolu/sip/address/NameAddress;
    return-object v0
.end method

.method protected indexOfFirstSemi()I
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sip/header/NameAddressHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "par":Lorg/zoolu/tools/Parser;
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/zoolu/tools/Parser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    .line 80
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/zoolu/sip/header/NameAddressHeader;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/zoolu/tools/Parser;->setPos(I)Lorg/zoolu/tools/Parser;

    .line 82
    :cond_0
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lorg/zoolu/tools/Parser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    .line 83
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/zoolu/sip/header/NameAddressHeader;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v1

    .line 86
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setNameAddress(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "naddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/NameAddressHeader;->value:Ljava/lang/String;

    .line 67
    return-void
.end method
