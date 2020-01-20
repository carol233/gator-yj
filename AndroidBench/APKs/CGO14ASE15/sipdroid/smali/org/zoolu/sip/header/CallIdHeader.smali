.class public Lorg/zoolu/sip/header/CallIdHeader;
.super Lorg/zoolu/sip/header/Header;
.source "CallIdHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "Call-ID"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sip/header/CallIdHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/zoolu/sip/header/CallIdHeader;->value:Ljava/lang/String;

    .line 63
    return-void
.end method
