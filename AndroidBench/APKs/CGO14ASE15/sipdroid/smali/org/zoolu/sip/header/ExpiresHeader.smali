.class public Lorg/zoolu/sip/header/ExpiresHeader;
.super Lorg/zoolu/sip/header/SipDateHeader;
.source "ExpiresHeader.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 50
    const-string v1, "Expires"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/zoolu/sip/header/SipDateHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/ExpiresHeader;->value:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "Expires"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/SipDateHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 45
    const-string v0, "Expires"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/SipDateHeader;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/SipDateHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 7

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ExpiresHeader;->isDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    new-instance v4, Lorg/zoolu/tools/Parser;

    iget-object v5, p0, Lorg/zoolu/sip/header/ExpiresHeader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ExpiresHeader;->getDeltaSeconds()I

    move-result v3

    int-to-long v1, v3

    .line 91
    .local v1, "secs":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 92
    new-instance v0, Ljava/util/Date;

    .end local v0    # "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v1

    add-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0
.end method

.method public getDeltaSeconds()I
    .locals 6

    .prologue
    .line 70
    const/4 v1, -0x1

    .line 71
    .local v1, "secs":I
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ExpiresHeader;->isDate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    new-instance v3, Lorg/zoolu/tools/Parser;

    iget-object v4, p0, Lorg/zoolu/sip/header/ExpiresHeader;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 74
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 75
    if-gez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 80
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/header/ExpiresHeader;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->getInt()I

    move-result v1

    goto :goto_0
.end method

.method public isDate()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/zoolu/sip/header/ExpiresHeader;->value:Ljava/lang/String;

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
