.class Lorg/zoolu/sdp/SdpParser;
.super Lorg/zoolu/tools/Parser;
.source "SdpParser.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public parseAttributeField()Lorg/zoolu/sdp/AttributeField;
    .locals 2

    .prologue
    .line 190
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SdpParser;->parseSdpField(C)Lorg/zoolu/sdp/SdpField;

    move-result-object v0

    .line 191
    .local v0, "sf":Lorg/zoolu/sdp/SdpField;
    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    invoke-direct {v1, v0}, Lorg/zoolu/sdp/AttributeField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 194
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseConnectionField()Lorg/zoolu/sdp/ConnectionField;
    .locals 2

    .prologue
    .line 150
    const/16 v1, 0x63

    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SdpParser;->parseSdpField(C)Lorg/zoolu/sdp/SdpField;

    move-result-object v0

    .line 151
    .local v0, "sf":Lorg/zoolu/sdp/SdpField;
    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Lorg/zoolu/sdp/ConnectionField;

    invoke-direct {v1, v0}, Lorg/zoolu/sdp/ConnectionField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 154
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseMediaDescriptor()Lorg/zoolu/sdp/MediaDescriptor;
    .locals 9

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/zoolu/sdp/SdpParser;->parseMediaField()Lorg/zoolu/sdp/MediaField;

    move-result-object v5

    .line 205
    .local v5, "m":Lorg/zoolu/sdp/MediaField;
    if-nez v5, :cond_0

    .line 206
    const/4 v7, 0x0

    .line 224
    :goto_0
    return-object v7

    .line 207
    :cond_0
    iget v2, p0, Lorg/zoolu/sdp/SdpParser;->index:I

    .line 208
    .local v2, "begin":I
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    const-string v8, "\nm"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 209
    .local v4, "end":I
    if-gez v4, :cond_1

    .line 210
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 213
    :goto_1
    iput v4, p0, Lorg/zoolu/sdp/SdpParser;->index:I

    .line 214
    new-instance v6, Lorg/zoolu/sdp/SdpParser;

    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/zoolu/sdp/SdpParser;-><init>(Ljava/lang/String;)V

    .line 215
    .local v6, "par":Lorg/zoolu/sdp/SdpParser;
    invoke-virtual {v6}, Lorg/zoolu/sdp/SdpParser;->parseConnectionField()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v3

    .line 217
    .local v3, "c":Lorg/zoolu/sdp/ConnectionField;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 219
    .local v1, "av":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    invoke-virtual {v6}, Lorg/zoolu/sdp/SdpParser;->parseAttributeField()Lorg/zoolu/sdp/AttributeField;

    move-result-object v0

    .line 220
    .local v0, "a":Lorg/zoolu/sdp/AttributeField;
    :goto_2
    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v6}, Lorg/zoolu/sdp/SdpParser;->parseAttributeField()Lorg/zoolu/sdp/AttributeField;

    move-result-object v0

    goto :goto_2

    .line 212
    .end local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    .end local v1    # "av":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    .end local v3    # "c":Lorg/zoolu/sdp/ConnectionField;
    .end local v6    # "par":Lorg/zoolu/sdp/SdpParser;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .restart local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    .restart local v1    # "av":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    .restart local v3    # "c":Lorg/zoolu/sdp/ConnectionField;
    .restart local v6    # "par":Lorg/zoolu/sdp/SdpParser;
    :cond_2
    new-instance v7, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-direct {v7, v5, v3, v1}, Lorg/zoolu/sdp/MediaDescriptor;-><init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public parseMediaField()Lorg/zoolu/sdp/MediaField;
    .locals 2

    .prologue
    .line 136
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SdpParser;->parseSdpField(C)Lorg/zoolu/sdp/SdpField;

    move-result-object v0

    .line 137
    .local v0, "sf":Lorg/zoolu/sdp/SdpField;
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Lorg/zoolu/sdp/MediaField;

    invoke-direct {v1, v0}, Lorg/zoolu/sdp/MediaField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 140
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseOriginField()Lorg/zoolu/sdp/OriginField;
    .locals 2

    .prologue
    .line 123
    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SdpParser;->parseSdpField(C)Lorg/zoolu/sdp/SdpField;

    move-result-object v0

    .line 124
    .local v0, "sf":Lorg/zoolu/sdp/SdpField;
    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Lorg/zoolu/sdp/OriginField;

    invoke-direct {v1, v0}, Lorg/zoolu/sdp/OriginField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseSdpField()Lorg/zoolu/sdp/SdpField;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 72
    iget v2, p0, Lorg/zoolu/sdp/SdpParser;->index:I

    .line 74
    .local v2, "begin":I
    :goto_0
    if-ltz v2, :cond_0

    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_0

    .line 75
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    const-string v8, "\n"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 76
    :cond_0
    if-gez v2, :cond_2

    .line 94
    :cond_1
    :goto_1
    return-object v6

    .line 78
    :cond_2
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 79
    .local v4, "type":C
    add-int/lit8 v2, v2, 0x2

    .line 80
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 81
    .local v3, "end":I
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    const/16 v8, 0xd

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 82
    .local v0, "CR":I
    if-lez v0, :cond_3

    if-ge v0, v3, :cond_3

    .line 83
    move v3, v0

    .line 84
    :cond_3
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    const/16 v8, 0xa

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 85
    .local v1, "LF":I
    if-lez v1, :cond_4

    if-ge v1, v3, :cond_4

    .line 86
    move v3, v1

    .line 87
    :cond_4
    iget-object v7, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 90
    invoke-virtual {p0, v3}, Lorg/zoolu/sdp/SdpParser;->setPos(I)Lorg/zoolu/tools/Parser;

    .line 91
    invoke-virtual {p0}, Lorg/zoolu/sdp/SdpParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    .line 94
    new-instance v6, Lorg/zoolu/sdp/SdpField;

    invoke-direct {v6, v4, v5}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    goto :goto_1
.end method

.method public parseSdpField(C)Lorg/zoolu/sdp/SdpField;
    .locals 4
    .param p1, "type"    # C

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "begin":I
    iget-object v1, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/zoolu/sdp/SdpParser;->index:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lorg/zoolu/sdp/SdpParser;->str:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/zoolu/sdp/SdpParser;->index:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 108
    if-gez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 114
    :goto_0
    return-object v1

    .line 112
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/zoolu/sdp/SdpParser;->index:I

    .line 114
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sdp/SdpParser;->parseSdpField()Lorg/zoolu/sdp/SdpField;

    move-result-object v1

    goto :goto_0
.end method

.method public parseSessionNameField()Lorg/zoolu/sdp/SessionNameField;
    .locals 2

    .prologue
    .line 164
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SdpParser;->parseSdpField(C)Lorg/zoolu/sdp/SdpField;

    move-result-object v0

    .line 165
    .local v0, "sf":Lorg/zoolu/sdp/SdpField;
    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Lorg/zoolu/sdp/SessionNameField;

    invoke-direct {v1, v0}, Lorg/zoolu/sdp/SessionNameField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseTimeField()Lorg/zoolu/sdp/TimeField;
    .locals 2

    .prologue
    .line 177
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SdpParser;->parseSdpField(C)Lorg/zoolu/sdp/SdpField;

    move-result-object v0

    .line 178
    .local v0, "sf":Lorg/zoolu/sdp/SdpField;
    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Lorg/zoolu/sdp/TimeField;

    invoke-direct {v1, v0}, Lorg/zoolu/sdp/TimeField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 181
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
