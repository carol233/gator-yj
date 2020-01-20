.class public Lorg/zoolu/sip/header/AcceptContactHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "AcceptContactHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "Accept-Contact"

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "icsi"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "Accept-Contact"

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-eqz p1, :cond_0

    .line 15
    const-string v0, "+g.3gpp.icsi-ref"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AcceptContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 24
    return-void
.end method
