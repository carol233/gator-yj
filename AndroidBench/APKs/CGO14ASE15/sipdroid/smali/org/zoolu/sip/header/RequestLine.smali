.class public Lorg/zoolu/sip/header/RequestLine;
.super Ljava/lang/Object;
.source "RequestLine.java"


# instance fields
.field protected method:Ljava/lang/String;

.field protected url:Lorg/zoolu/sip/address/SipURL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "sipUrl"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/zoolu/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 40
    new-instance v0, Lorg/zoolu/sip/address/SipURL;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/zoolu/sip/header/RequestLine;->url:Lorg/zoolu/sip/address/SipURL;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V
    .locals 0
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "sipUrl"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/zoolu/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/zoolu/sip/header/RequestLine;->url:Lorg/zoolu/sip/address/SipURL;

    .line 46
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lorg/zoolu/sip/header/RequestLine;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sip/header/RequestLine;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 58
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sip/header/RequestLine;

    move-object v2, v0

    .line 59
    .local v2, "r":Lorg/zoolu/sip/header/RequestLine;
    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v4

    invoke-virtual {p0}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/zoolu/sip/address/SipURL;->equals(Lorg/zoolu/sip/address/SipURL;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    const/4 v3, 0x1

    .line 65
    .end local v2    # "r":Lorg/zoolu/sip/header/RequestLine;
    :cond_0
    :goto_0
    return v3

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getAddress()Lorg/zoolu/sip/address/SipURL;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/zoolu/sip/header/RequestLine;->url:Lorg/zoolu/sip/address/SipURL;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/zoolu/sip/header/RequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/header/RequestLine;->url:Lorg/zoolu/sip/address/SipURL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SIP/2.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
