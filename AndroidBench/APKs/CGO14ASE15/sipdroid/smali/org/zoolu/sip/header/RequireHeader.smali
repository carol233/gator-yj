.class public Lorg/zoolu/sip/header/RequireHeader;
.super Lorg/zoolu/sip/header/OptionHeader;
.source "RequireHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "Require"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/OptionHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/OptionHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 34
    return-void
.end method
