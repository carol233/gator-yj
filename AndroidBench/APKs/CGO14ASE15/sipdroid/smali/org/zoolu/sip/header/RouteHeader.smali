.class public Lorg/zoolu/sip/header/RouteHeader;
.super Lorg/zoolu/sip/header/NameAddressHeader;
.source "RouteHeader.java"


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 35
    const-string v0, "Route"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/NameAddressHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 40
    return-void
.end method
