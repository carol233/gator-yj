.class public Lorg/zoolu/sip/header/ToHeader;
.super Lorg/zoolu/sip/header/EndPointHeader;
.source "ToHeader.java"


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 53
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "To"

    invoke-direct {p0, v0, p1, p2}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/SipURL;)V
    .locals 1
    .param p1, "url"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 57
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/SipURL;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Lorg/zoolu/sip/address/SipURL;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "To"

    invoke-direct {p0, v0, p1, p2}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 70
    return-void
.end method
