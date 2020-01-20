.class public Lorg/zoolu/sip/header/ReferToHeader;
.super Lorg/zoolu/sip/header/NameAddressHeader;
.source "ReferToHeader.java"


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 37
    const-string v0, "Refer-To"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/SipURL;)V
    .locals 1
    .param p1, "url"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 41
    const-string v0, "Refer-To"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 46
    return-void
.end method
