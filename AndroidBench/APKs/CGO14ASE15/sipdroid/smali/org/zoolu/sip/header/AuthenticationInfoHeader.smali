.class public Lorg/zoolu/sip/header/AuthenticationInfoHeader;
.super Lorg/zoolu/sip/header/AuthenticationHeader;
.source "AuthenticationInfoHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "Authentication-Info"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "Authentication-Info"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "auth_params":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v0, "Authentication-Info"

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAuthScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "param_name"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v5, 0x3

    new-array v2, v5, [C

    fill-array-data v2, :array_0

    .line 78
    .local v2, "name_separators":[C
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/header/AuthenticationInfoHeader;->value:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    .line 81
    :goto_0
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    invoke-virtual {v3, v2}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 85
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->indexOfCommaHeaderSeparator()I

    move-result v0

    .line 86
    .local v0, "comma":I
    if-ltz v0, :cond_0

    .line 87
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .end local v3    # "par":Lorg/zoolu/sip/provider/SipParser;
    .local v4, "par":Lorg/zoolu/sip/provider/SipParser;
    move-object v3, v4

    .line 88
    .end local v4    # "par":Lorg/zoolu/sip/provider/SipParser;
    .restart local v3    # "par":Lorg/zoolu/sip/provider/SipParser;
    :cond_0
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v5

    .line 92
    .end local v0    # "comma":I
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 90
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->goToCommaHeaderSeparator()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 92
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 77
    :array_0
    .array-data 2
        0x3ds
        0x20s
        0x9s
    .end array-data
.end method

.method public getParameters()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v4, 0x3

    new-array v1, v4, [C

    fill-array-data v1, :array_0

    .line 103
    .local v1, "name_separators":[C
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    iget-object v4, p0, Lorg/zoolu/sip/header/AuthenticationInfoHeader;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    .line 106
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 107
    .local v2, "names":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v3, v1}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->goToCommaHeaderSeparator()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 112
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 102
    nop

    :array_0
    .array-data 2
        0x3ds
        0x20s
        0x9s
    .end array-data
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 4
    .param p1, "param_name"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v3, 0x5

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 63
    .local v1, "name_separators":[C
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/header/AuthenticationInfoHeader;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    .line 66
    :goto_0
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    invoke-virtual {v2, v1}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v3, 0x1

    .line 72
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return v3

    .line 70
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->goToCommaHeaderSeparator()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 72
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 62
    :array_0
    .array-data 2
        0x3ds
        0x20s
        0x9s
        0xds
        0xas
    .end array-data
.end method
