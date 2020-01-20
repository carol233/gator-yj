.class public Lorg/zoolu/sdp/MediaDescriptor;
.super Ljava/lang/Object;
.source "MediaDescriptor.java"


# instance fields
.field av:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;"
        }
    .end annotation
.end field

.field c:Lorg/zoolu/sdp/ConnectionField;

.field m:Lorg/zoolu/sdp/MediaField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "connection"    # Ljava/lang/String;
    .param p3, "attribute"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lorg/zoolu/sdp/MediaField;

    invoke-direct {v0, p1}, Lorg/zoolu/sdp/MediaField;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    .line 155
    if-eqz p2, :cond_0

    .line 156
    new-instance v0, Lorg/zoolu/sdp/ConnectionField;

    invoke-direct {v0, p2}, Lorg/zoolu/sdp/ConnectionField;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 158
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    .line 160
    if-eqz p3, :cond_1

    .line 161
    iget-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    invoke-direct {v1, p3}, Lorg/zoolu/sdp/AttributeField;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 162
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/MediaDescriptor;)V
    .locals 4
    .param p1, "md"    # Lorg/zoolu/sdp/MediaDescriptor;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Lorg/zoolu/sdp/MediaField;

    iget-object v2, p1, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    invoke-direct {v1, v2}, Lorg/zoolu/sdp/MediaField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    iput-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    .line 61
    iget-object v1, p1, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Lorg/zoolu/sdp/ConnectionField;

    iget-object v2, p1, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    invoke-direct {v1, v2}, Lorg/zoolu/sdp/ConnectionField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    iput-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 66
    :goto_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    new-instance v3, Lorg/zoolu/sdp/AttributeField;

    iget-object v1, p1, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/AttributeField;

    invoke-direct {v3, v1}, Lorg/zoolu/sdp/AttributeField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    goto :goto_0

    .line 72
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;)V
    .locals 1
    .param p1, "media"    # Lorg/zoolu/sdp/MediaField;
    .param p2, "connection"    # Lorg/zoolu/sdp/ConnectionField;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    .line 86
    iput-object p2, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Ljava/util/Vector;)V
    .locals 3
    .param p1, "media"    # Lorg/zoolu/sdp/MediaField;
    .param p2, "connection"    # Lorg/zoolu/sdp/ConnectionField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/zoolu/sdp/MediaField;",
            "Lorg/zoolu/sdp/ConnectionField;",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p3, "attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    .line 132
    iput-object p2, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 133
    new-instance v1, Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    .line 134
    iget-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {v2, v1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/AttributeField;)V
    .locals 1
    .param p1, "media"    # Lorg/zoolu/sdp/MediaField;
    .param p2, "connection"    # Lorg/zoolu/sdp/ConnectionField;
    .param p3, "attribute"    # Lorg/zoolu/sdp/AttributeField;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    .line 107
    iput-object p2, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    .line 111
    if-eqz p3, :cond_0

    .line 112
    iget-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/zoolu/sdp/AttributeField;)Lorg/zoolu/sdp/MediaDescriptor;
    .locals 2
    .param p1, "attribute"    # Lorg/zoolu/sdp/AttributeField;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    invoke-direct {v1, p1}, Lorg/zoolu/sdp/AttributeField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 218
    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/zoolu/sdp/AttributeField;
    .locals 3
    .param p1, "a_name"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sdp/AttributeField;

    .line 247
    .local v0, "a":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual {v0}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    .end local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    :goto_1
    return-object v0

    .line 245
    .restart local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAttributes()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 204
    .local v1, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-object v1
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "a_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v2, Ljava/util/Vector;

    iget-object v3, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 264
    .local v2, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 265
    iget-object v3, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sdp/AttributeField;

    .line 266
    .local v0, "a":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual {v0}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 264
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    :cond_1
    return-object v2
.end method

.method public getConnection()Lorg/zoolu/sdp/ConnectionField;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    return-object v0
.end method

.method public getMedia()Lorg/zoolu/sdp/MediaField;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "a_name"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 230
    iget-object v1, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {v1}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 234
    :goto_1
    return v1

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasCodec(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 282
    iget-object v3, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sdp/AttributeField;

    .line 283
    .local v0, "a":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual {v0}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rtpmap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {v0}, Lorg/zoolu/sdp/AttributeField;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, " +"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "ar":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v6, :cond_0

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    aget-object v3, v1, v5

    .line 290
    .end local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    .end local v1    # "ar":[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 281
    .restart local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    const-string v1, ""

    .line 300
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zoolu/sdp/MediaDescriptor;->m:Lorg/zoolu/sdp/MediaField;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    if-eqz v2, :cond_0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zoolu/sdp/MediaDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/zoolu/sdp/MediaDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    return-object v1
.end method
