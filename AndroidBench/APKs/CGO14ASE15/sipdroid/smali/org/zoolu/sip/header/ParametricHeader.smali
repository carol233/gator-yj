.class public abstract Lorg/zoolu/sip/header/ParametricHeader;
.super Lorg/zoolu/sip/header/Header;
.source "ParametricHeader.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->indexOfFirstSemi()I

    move-result v0

    .line 81
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    new-instance v2, Lorg/zoolu/tools/Parser;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Lorg/zoolu/tools/Parser;)V

    invoke-virtual {v1, p1}, Lorg/zoolu/sip/provider/SipParser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getParameterNames()Ljava/util/Vector;
    .locals 4
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
    .line 93
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->indexOfFirstSemi()I

    move-result v0

    .line 94
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 95
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 96
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    new-instance v2, Lorg/zoolu/tools/Parser;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Lorg/zoolu/tools/Parser;)V

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getParameters()Ljava/util/Vector;

    move-result-object v1

    goto :goto_0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->indexOfFirstSemi()I

    move-result v0

    .line 103
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    new-instance v2, Lorg/zoolu/tools/Parser;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Lorg/zoolu/tools/Parser;)V

    invoke-virtual {v1, p1}, Lorg/zoolu/sip/provider/SipParser;->hasParameter(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public hasParameters()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->indexOfFirstSemi()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexOfFirstSemi()I
    .locals 3

    .prologue
    .line 69
    new-instance v1, Lorg/zoolu/tools/Parser;

    iget-object v2, p0, Lorg/zoolu/sip/header/ParametricHeader;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lorg/zoolu/tools/Parser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v0

    .line 70
    .local v0, "index":I
    iget-object v1, p0, Lorg/zoolu/sip/header/ParametricHeader;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .end local v0    # "index":I
    :cond_0
    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3b

    .line 128
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->indexOfFirstSemi()I

    move-result v3

    .line 129
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "header":Ljava/lang/String;
    new-instance v4, Lorg/zoolu/tools/Parser;

    invoke-direct {v4, v2, v3}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 133
    .local v4, "par":Lorg/zoolu/tools/Parser;
    :goto_1
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v0

    .line 135
    .local v0, "begin_param":I
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 136
    sget-object v6, Lorg/zoolu/sip/provider/SipParser;->param_separators:[C

    invoke-virtual {v4, v6}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "top":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lorg/zoolu/tools/Parser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    .line 139
    const-string v1, ""

    .line 140
    .local v1, "bottom":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/header/ParametricHeader;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v1    # "bottom":Ljava/lang/String;
    .end local v5    # "top":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v7}, Lorg/zoolu/tools/Parser;->goTo(C)Lorg/zoolu/tools/Parser;

    goto :goto_1
.end method

.method public removeParameters()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->hasParameters()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "header":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 121
    .local v1, "i":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ParametricHeader;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 157
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/header/ParametricHeader;->setValue(Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;->removeParameter(Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/header/ParametricHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "header":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz p2, :cond_2

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_2
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/ParametricHeader;->setValue(Ljava/lang/String;)V

    .line 165
    return-void
.end method
