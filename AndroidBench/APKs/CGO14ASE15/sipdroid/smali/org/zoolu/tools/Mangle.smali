.class public Lorg/zoolu/tools/Mangle;
.super Ljava/lang/Object;
.source "Mangle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "begin":I
    new-array v0, v6, [B

    .line 243
    .local v0, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 245
    if-ge v3, v5, :cond_0

    .line 246
    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 247
    .local v2, "end":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 248
    add-int/lit8 v1, v2, 0x1

    .line 243
    .end local v2    # "end":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    goto :goto_1

    .line 252
    :cond_1
    return-object v0
.end method

.method public static bytesToAddress([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 185
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/zoolu/tools/Mangle;->bytesToHexString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B
    .param p1, "len"    # I

    .prologue
    .line 175
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 176
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    rem-int/lit16 v3, v3, 0x100

    div-int/lit8 v3, v3, 0x10

    rem-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    rem-int/lit16 v3, v3, 0x100

    rem-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-object v1
.end method

.method public static bytesToInt([B)J
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/16 v4, 0x8

    .line 257
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static bytesToWord([B)J
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/16 v4, 0x8

    .line 285
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static bytesToWord([BI)J
    .locals 5
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v4, 0x8

    .line 276
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v4

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/zoolu/tools/Mangle;->uByte(B)S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static clone([B)[B
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 112
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/zoolu/tools/Mangle;->getBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static compare([B[B)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 33
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 36
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static copyBytes([B[BI)V
    .locals 3
    .param p0, "src"    # [B
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 142
    add-int v1, p2, v0

    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public static copyBytes([B[BII)V
    .locals 3
    .param p0, "src"    # [B
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 151
    add-int v1, p2, v0

    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public static copyFourBytes([B[BI)V
    .locals 1
    .param p0, "src"    # [B
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 167
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lorg/zoolu/tools/Mangle;->copyBytes([B[BII)V

    .line 168
    return-void
.end method

.method public static copyTwoBytes([B[BI)V
    .locals 1
    .param p0, "src"    # [B
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 159
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lorg/zoolu/tools/Mangle;->copyBytes([B[BII)V

    .line 160
    return-void
.end method

.method private static decode([B[I)V
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "out"    # [I

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "offset":I
    const/16 v1, 0x40

    .line 311
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 312
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, p1, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method public static fourBytes([BI)[B
    .locals 1
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 133
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/zoolu/tools/Mangle;->getBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes([BII)[B
    .locals 3
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 120
    new-array v0, p2, [B

    .line 121
    .local v0, "bb":[B
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 122
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-object v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/zoolu/tools/Mangle;->hexStringToBytes(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;I)[B
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 201
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 202
    const-string v0, ""

    .line 204
    .local v0, "aux":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 205
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "c":C
    const/16 v4, 0x3a

    if-eq v2, v4, :cond_0

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "c":C
    :cond_1
    move-object p0, v0

    .line 210
    .end local v0    # "aux":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    if-gez p1, :cond_3

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 p1, v4, 0x2

    .line 212
    :cond_3
    new-array v1, p1, [B

    .line 213
    .local v1, "b":[B
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, p1, :cond_5

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_4

    .line 215
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 213
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    :cond_4
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    goto :goto_2

    .line 220
    :cond_5
    return-object v1
.end method

.method public static initBytes([BI)[B
    .locals 2
    .param p0, "b"    # [B
    .param p1, "value"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 44
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object p0
.end method

.method public static intToBytes(J)[B
    .locals 6
    .param p0, "n"    # J

    .prologue
    const-wide/16 v4, 0x100

    .line 263
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 264
    .local v0, "b":[B
    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 265
    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    rem-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 266
    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    rem-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 267
    const/4 v1, 0x3

    rem-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 268
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v4, 0x40

    const/16 v6, 0x10

    .line 320
    new-array v0, v4, [B

    .line 321
    .local v0, "buff":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 322
    int-to-byte v3, v1

    aput-byte v3, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    new-array v2, v6, [I

    .line 325
    .local v2, "x":[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 326
    mul-int/lit8 v3, v1, 0x4

    invoke-static {v0, v3}, Lorg/zoolu/tools/Mangle;->bytesToWord([BI)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_2

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/zoolu/tools/Mangle;->wordToBytes(J)[B

    move-result-object v4

    invoke-static {v4}, Lorg/zoolu/tools/Mangle;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/zoolu/tools/Mangle;->print(Ljava/lang/String;)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    :cond_2
    invoke-static {v0, v2}, Lorg/zoolu/tools/Mangle;->decode([B[I)V

    .line 331
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_3

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/zoolu/tools/Mangle;->wordToBytes(J)[B

    move-result-object v4

    invoke-static {v4}, Lorg/zoolu/tools/Mangle;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/zoolu/tools/Mangle;->print(Ljava/lang/String;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 333
    :cond_3
    return-void
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private static rotateLeft(II)I
    .locals 2
    .param p0, "w"    # I
    .param p1, "n"    # I

    .prologue
    .line 62
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static rotateLeft([B)[B
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 92
    array-length v2, p0

    .line 93
    .local v2, "len":I
    add-int/lit8 v3, v2, -0x1

    aget-byte v0, p0, v3

    .line 94
    .local v0, "b1":B
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 95
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 94
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 96
    :cond_0
    const/4 v3, 0x0

    aput-byte v0, p0, v3

    .line 97
    return-object p0
.end method

.method private static rotateLeft([I)[I
    .locals 4
    .param p0, "w"    # [I

    .prologue
    .line 72
    array-length v1, p0

    .line 73
    .local v1, "len":I
    add-int/lit8 v3, v1, -0x1

    aget v2, p0, v3

    .line 74
    .local v2, "w1":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 75
    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 74
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v3, 0x0

    aput v2, p0, v3

    .line 77
    return-object p0
.end method

.method private static rotateRight(II)I
    .locals 2
    .param p0, "w"    # I
    .param p1, "n"    # I

    .prologue
    .line 67
    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static rotateRight([B)[B
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 102
    array-length v2, p0

    .line 103
    .local v2, "len":I
    const/4 v3, 0x0

    aget-byte v0, p0, v3

    .line 104
    .local v0, "b0":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 105
    add-int/lit8 v3, v1, -0x1

    aget-byte v4, p0, v1

    aput-byte v4, p0, v3

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    add-int/lit8 v3, v2, -0x1

    aput-byte v0, p0, v3

    .line 107
    return-object p0
.end method

.method private static rotateRight([I)[I
    .locals 5
    .param p0, "w"    # [I

    .prologue
    .line 82
    array-length v1, p0

    .line 83
    .local v1, "len":I
    const/4 v3, 0x0

    aget v2, p0, v3

    .line 84
    .local v2, "w0":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 85
    add-int/lit8 v3, v0, -0x1

    aget v4, p0, v0

    aput v4, p0, v3

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    add-int/lit8 v3, v1, -0x1

    aput v2, p0, v3

    .line 87
    return-object p0
.end method

.method public static twoBytes([BI)[B
    .locals 1
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/zoolu/tools/Mangle;->getBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static uByte(B)S
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 50
    int-to-short v0, p0

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    return v0
.end method

.method public static uWord(I)J
    .locals 4
    .param p0, "n"    # I

    .prologue
    .line 55
    const-wide/32 v0, 0x10000

    .line 56
    .local v0, "wmask":J
    mul-long/2addr v0, v0

    .line 57
    int-to-long v2, p0

    add-long/2addr v2, v0

    rem-long/2addr v2, v0

    return-wide v2
.end method

.method public static wordToBytes(J)[B
    .locals 6
    .param p0, "n"    # J

    .prologue
    const-wide/16 v4, 0x100

    .line 294
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 295
    .local v0, "b":[B
    const/4 v1, 0x3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 296
    const/4 v1, 0x2

    const/16 v2, 0x10

    shr-long v2, p0, v2

    rem-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 297
    const/4 v1, 0x1

    const/16 v2, 0x8

    shr-long v2, p0, v2

    rem-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 298
    const/4 v1, 0x0

    rem-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 299
    return-object v0
.end method
