.class public abstract Lorg/zoolu/sip/header/ListHeader;
.super Lorg/zoolu/sip/header/Header;
.source "ListHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/zoolu/sip/header/ListHeader;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/sip/header/ListHeader;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/zoolu/sip/header/ListHeader;->value:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/ListHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/ListHeader;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getElements()Ljava/util/Vector;
    .locals 6
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
    .line 42
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 43
    .local v2, "elements":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v3, Lorg/zoolu/tools/Parser;

    iget-object v4, p0, Lorg/zoolu/sip/header/ListHeader;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, "par":Lorg/zoolu/tools/Parser;
    const/4 v4, 0x1

    new-array v0, v4, [C

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput-char v5, v0, v4

    .line 45
    .local v0, "delim":[C
    :goto_0
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v3, v0}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "elem":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 51
    .end local v1    # "elem":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public setElements(Ljava/util/Vector;)V
    .locals 3
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
    .line 56
    .local p1, "elements":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 58
    if-lez v0, :cond_0

    .line 59
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/sip/header/ListHeader;->value:Ljava/lang/String;

    .line 63
    return-void
.end method
