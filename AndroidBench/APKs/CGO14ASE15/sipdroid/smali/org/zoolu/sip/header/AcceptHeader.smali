.class public Lorg/zoolu/sip/header/AcceptHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "AcceptHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "Accept"

    const-string v1, "application/sdp"

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "Accept"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getAcceptRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/zoolu/sip/header/AcceptHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/zoolu/sip/header/AcceptHeader;->value:Ljava/lang/String;

    .line 48
    return-void
.end method
