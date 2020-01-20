.class public Lorg/zoolu/sip/header/AlertInfoHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "AlertInfoHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "absolute_uri"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "Alert-Info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/header/AlertInfoHeader;->setAbsoluteURI(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getAbsoluteURI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    iget-object v2, p0, Lorg/zoolu/sip/header/AlertInfoHeader;->value:Ljava/lang/String;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "begin":I
    iget-object v2, p0, Lorg/zoolu/sip/header/AlertInfoHeader;->value:Ljava/lang/String;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "end":I
    if-gez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-gez v1, :cond_0

    .line 46
    iget-object v2, p0, Lorg/zoolu/sip/header/AlertInfoHeader;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 47
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/header/AlertInfoHeader;->value:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAbsoluteURI(Ljava/lang/String;)V
    .locals 2
    .param p1, "absolute_uri"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 53
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_1
    iput-object p1, p0, Lorg/zoolu/sip/header/AlertInfoHeader;->value:Ljava/lang/String;

    .line 58
    return-void
.end method
