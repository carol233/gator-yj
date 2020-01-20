.class public Lorg/zoolu/sip/header/MaxForwardsHeader;
.super Lorg/zoolu/sip/header/Header;
.source "MaxForwardsHeader.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 48
    const-string v0, "Max-Forwards"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "Max-Forwards"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 57
    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/zoolu/sip/header/MaxForwardsHeader;->getNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/MaxForwardsHeader;->value:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public getNumber()I
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sip/header/MaxForwardsHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v0

    return v0
.end method

.method public setNumber(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/MaxForwardsHeader;->value:Ljava/lang/String;

    .line 62
    return-void
.end method
