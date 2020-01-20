.class public Lorg/zoolu/sip/header/ServerHeader;
.super Lorg/zoolu/sip/header/Header;
.source "ServerHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "Server"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/zoolu/sip/header/ServerHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/zoolu/sip/header/ServerHeader;->value:Ljava/lang/String;

    .line 44
    return-void
.end method
