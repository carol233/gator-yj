.class public Lorg/zoolu/sip/header/ContentTypeHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "ContentTypeHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "Content-Type"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/header/ContentTypeHeader;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lorg/zoolu/sip/provider/SipParser;->indexOf(C)I

    move-result v0

    .line 46
    .local v0, "end":I
    if-gez v0, :cond_0

    .line 47
    iget-object v1, p0, Lorg/zoolu/sip/header/ContentTypeHeader;->value:Ljava/lang/String;

    .line 50
    .local v1, "str":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v2, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->getString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 49
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/header/ContentTypeHeader;->value:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cType"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/zoolu/sip/header/ContentTypeHeader;->value:Ljava/lang/String;

    .line 56
    return-void
.end method
