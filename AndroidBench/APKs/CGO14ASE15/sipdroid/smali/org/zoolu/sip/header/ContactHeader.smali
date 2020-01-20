.class public Lorg/zoolu/sip/header/ContactHeader;
.super Lorg/zoolu/sip/header/EndPointHeader;
.source "ContactHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lorg/zoolu/sip/header/Header;

    const-string v1, "Contact"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 50
    const-string v0, "*"

    iput-object v0, p0, Lorg/zoolu/sip/header/ContactHeader;->value:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 54
    const-string v0, "Contact"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nameaddr"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "qvalue"    # Ljava/lang/String;
    .param p3, "icsi"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "Contact"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    const-string v0, "q"

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/header/ContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    const-string v0, "+g.3gpp.icsi-ref"

    invoke-virtual {p0, v0, p3}, Lorg/zoolu/sip/header/ContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/address/SipURL;)V
    .locals 1
    .param p1, "url"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 66
    const-string v0, "Contact"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/EndPointHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getExpires()I
    .locals 7

    .prologue
    .line 106
    const/4 v2, -0x1

    .line 107
    .local v2, "secs":I
    const-string v3, "expires"

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "exp_param":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    const-string v3, "GMT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 110
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    new-instance v4, Lorg/zoolu/tools/Parser;

    invoke-direct {v4, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 112
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 113
    if-gez v2, :cond_0

    .line 114
    const/4 v2, 0x0

    .line 118
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    return v2

    .line 116
    :cond_1
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v3, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getInt()I

    move-result v2

    goto :goto_0
.end method

.method public getExpiresDate()Ljava/util/Date;
    .locals 8

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "date":Ljava/util/Date;
    const-string v4, "expires"

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "exp_param":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 125
    const-string v4, "GMT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 126
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    new-instance v5, Lorg/zoolu/tools/Parser;

    invoke-direct {v5, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v4, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->getInt()I

    move-result v4

    int-to-long v2, v4

    .line 130
    .local v2, "secs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 131
    new-instance v0, Ljava/util/Date;

    .end local v0    # "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0
.end method

.method public hasExpires()Z
    .locals 1

    .prologue
    .line 95
    const-string v0, "expires"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ContactHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ContactHeader;->getExpires()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStar()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/zoolu/sip/header/ContactHeader;->value:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeExpires()Lorg/zoolu/sip/header/ContactHeader;
    .locals 1

    .prologue
    .line 138
    const-string v0, "expires"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ContactHeader;->removeParameter(Ljava/lang/String;)V

    .line 139
    return-object p0
.end method

.method public setExpires(I)Lorg/zoolu/sip/header/ContactHeader;
    .locals 2
    .param p1, "secs"    # I

    .prologue
    .line 83
    const-string v0, "expires"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/header/ContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object p0
.end method

.method public setExpires(Ljava/util/Date;)Lorg/zoolu/sip/header/ContactHeader;
    .locals 3
    .param p1, "expire"    # Ljava/util/Date;

    .prologue
    .line 78
    const-string v0, "expires"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/zoolu/tools/DateFormat;->formatEEEddMMM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/header/ContactHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object p0
.end method
