.class public Lorg/zoolu/sip/header/MultipleHeader;
.super Ljava/lang/Object;
.source "MultipleHeader.java"


# instance fields
.field protected compact:Z

.field protected name:Ljava/lang/String;

.field protected values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "hvalues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/header/Header;

    invoke-virtual {v1}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/header/Header;

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/header/MultipleHeader;->addBottom(Lorg/zoolu/sip/header/Header;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iput-boolean v3, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 4
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    .line 84
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 85
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->indexOfCommaHeaderSeparator()I

    move-result v0

    .line 87
    .local v0, "comma":I
    :goto_0
    if-ltz v0, :cond_0

    .line 88
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v3}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 90
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->indexOfCommaHeaderSeparator()I

    move-result v0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getRemainingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 1
    .param p1, "mhd"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getValues()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 100
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->isCommaSeparated()Z

    move-result v0

    iput-boolean v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    .line 101
    return-void
.end method

.method public static isCommaSeparated(Lorg/zoolu/sip/header/Header;)Z
    .locals 2
    .param p0, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 105
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->indexOfCommaHeaderSeparator()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addBottom(Lorg/zoolu/sip/header/Header;)V
    .locals 2
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 213
    invoke-static {p1}, Lorg/zoolu/sip/header/MultipleHeader;->isCommaSeparated(Lorg/zoolu/sip/header/Header;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lorg/zoolu/sip/header/MultipleHeader;

    invoke-direct {v0, p1}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/MultipleHeader;->addBottom(Lorg/zoolu/sip/header/MultipleHeader;)V

    goto :goto_0
.end method

.method public addBottom(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 3
    .param p1, "mhd"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/zoolu/sip/header/MultipleHeader;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public addTop(Lorg/zoolu/sip/header/Header;)V
    .locals 3
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 195
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lorg/zoolu/sip/header/MultipleHeader;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/MultipleHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/zoolu/sip/header/MultipleHeader;->getValues()Ljava/util/Vector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 142
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sip/header/MultipleHeader;

    .line 143
    .local v0, "hd":Lorg/zoolu/sip/header/MultipleHeader;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/zoolu/sip/header/MultipleHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0}, Lorg/zoolu/sip/header/MultipleHeader;->getValues()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBottom()Lorg/zoolu/sip/header/Header;
    .locals 3

    .prologue
    .line 227
    new-instance v1, Lorg/zoolu/sip/header/Header;

    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getHeaders()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/header/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v2, Ljava/util/Vector;

    iget-object v3, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 168
    .local v2, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 169
    new-instance v0, Lorg/zoolu/sip/header/Header;

    iget-object v4, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "h":Lorg/zoolu/sip/header/Header;
    :cond_0
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()Lorg/zoolu/sip/header/Header;
    .locals 3

    .prologue
    .line 199
    new-instance v1, Lorg/zoolu/sip/header/Header;

    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/Vector;
    .locals 1
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
    .line 157
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    return-object v0
.end method

.method public isCommaSeparated()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeBottom()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    iget-object v1, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 233
    return-void
.end method

.method public removeTop()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 205
    return-void
.end method

.method public setCommaSeparated(Z)V
    .locals 0
    .param p1, "comma_separated"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    .line 115
    return-void
.end method

.method public setHeaders(Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "hdv":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/header/Header;

    invoke-virtual {v1}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public setValues(Ljava/util/Vector;)V
    .locals 0
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
    .line 162
    .local p1, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    .line 163
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toHeader()Lorg/zoolu/sip/header/Header;
    .locals 5

    .prologue
    .line 237
    const-string v1, ""

    .line 238
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    iget-object v4, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    :cond_1
    new-instance v2, Lorg/zoolu/sip/header/Header;

    iget-object v3, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 252
    iget-boolean v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->compact:Z

    if-eqz v2, :cond_2

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    iget-object v4, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_1
    return-object v2

    .line 260
    .end local v0    # "i":I
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    .line 261
    .restart local v1    # "str":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zoolu/sip/header/MultipleHeader;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/zoolu/sip/header/MultipleHeader;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 263
    goto :goto_1
.end method
