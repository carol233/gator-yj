.class public Lorg/zoolu/sip/header/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field protected code:I

.field protected reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/zoolu/sip/header/StatusLine;->code:I

    .line 34
    iput-object p2, p0, Lorg/zoolu/sip/header/StatusLine;->reason:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/zoolu/sip/header/StatusLine;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sip/header/StatusLine;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 47
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sip/header/StatusLine;

    move-object v2, v0

    .line 48
    .local v2, "r":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v2}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v4

    invoke-virtual {p0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const/4 v3, 0x1

    .line 54
    .end local v2    # "r":Lorg/zoolu/sip/header/StatusLine;
    :cond_0
    :goto_0
    return v3

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/zoolu/sip/header/StatusLine;->code:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/zoolu/sip/header/StatusLine;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIP/2.0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/zoolu/sip/header/StatusLine;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/header/StatusLine;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
