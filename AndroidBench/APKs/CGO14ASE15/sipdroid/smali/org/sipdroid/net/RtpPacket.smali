.class public Lorg/sipdroid/net/RtpPacket;
.super Ljava/lang/Object;
.source "RtpPacket.java"


# instance fields
.field packet:[B

.field packet_len:I


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "packet_length"    # I

    .prologue
    const/16 v1, 0xc

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    .line 246
    iput p2, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    .line 247
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    if-ge v0, v1, :cond_0

    .line 248
    iput v1, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    .line 249
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/sipdroid/net/RtpPacket;->init(I)V

    .line 250
    return-void
.end method

.method private static getBit(BI)Z
    .locals 2
    .param p0, "b"    # B
    .param p1, "bit"    # I

    .prologue
    const/4 v0, 0x1

    .line 308
    shr-int v1, p0, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 275
    add-int/lit16 v0, p0, 0x100

    rem-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private static getInt([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 298
    invoke-static {p0, p1, p2}, Lorg/sipdroid/net/RtpPacket;->getLong([BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static getLong([BII)J
    .locals 4
    .param p0, "data"    # [B
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 280
    const-wide/16 v0, 0x0

    .line 281
    .local v0, "n":J
    :goto_0
    if-ge p1, p2, :cond_0

    .line 282
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 283
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 281
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-wide v0
.end method

.method private static setBit(ZBI)B
    .locals 2
    .param p0, "value"    # Z
    .param p1, "b"    # B
    .param p2, "bit"    # I

    .prologue
    const/4 v1, 0x1

    .line 313
    if-eqz p0, :cond_0

    .line 314
    shl-int v0, v1, p2

    or-int/2addr v0, p1

    int-to-byte v0, v0

    .line 316
    :goto_0
    return v0

    :cond_0
    shl-int v0, v1, p2

    or-int/2addr v0, p1

    shl-int/2addr v1, p2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method private static setInt(I[BII)V
    .locals 2
    .param p0, "n"    # I
    .param p1, "data"    # [B
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .prologue
    .line 303
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2, p3}, Lorg/sipdroid/net/RtpPacket;->setLong(J[BII)V

    .line 304
    return-void
.end method

.method private static setLong(J[BII)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "data"    # [B
    .param p3, "begin"    # I
    .param p4, "end"    # I

    .prologue
    .line 290
    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_0

    .line 291
    const-wide/16 v0, 0x100

    rem-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p4

    .line 292
    const/16 v0, 0x8

    shr-long/2addr p0, v0

    .line 290
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public getCscrCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    iget v1, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0xf

    .line 127
    :cond_0
    return v0
.end method

.method public getCscrList()[J
    .locals 6

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/sipdroid/net/RtpPacket;->getCscrCount()I

    move-result v0

    .line 203
    .local v0, "cc":I
    new-array v1, v0, [J

    .line 204
    .local v1, "cscr":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 205
    iget-object v3, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0xc

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x10

    invoke-static {v3, v4, v5}, Lorg/sipdroid/net/RtpPacket;->getLong([BII)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-object v1
.end method

.method public getHeaderLength()I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/sipdroid/net/RtpPacket;->getCscrCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xc

    .line 53
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    return v0
.end method

.method public getPacket()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    return-object v0
.end method

.method public getPayload()[B
    .locals 6

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/sipdroid/net/RtpPacket;->getHeaderLength()I

    move-result v0

    .line 236
    .local v0, "header_len":I
    iget v4, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    sub-int v2, v4, v0

    .line 237
    .local v2, "len":I
    new-array v3, v2, [B

    .line 238
    .local v3, "payload":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 239
    iget-object v4, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    add-int v5, v0, v1

    aget-byte v4, v4, v5

    aput-byte v4, v3, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-object v3
.end method

.method public getPayloadLength()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 59
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    invoke-virtual {p0}, Lorg/sipdroid/net/RtpPacket;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPayloadType()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSequenceNumber()I
    .locals 3

    .prologue
    .line 160
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->getInt([BII)I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSscr()J
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 188
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    if-lt v0, v2, :cond_0

    .line 189
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/16 v1, 0x8

    invoke-static {v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->getLong([BII)J

    move-result-wide v0

    .line 191
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 3

    .prologue
    .line 174
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->getLong([BII)J

    move-result-wide v0

    .line 177
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    iget v1, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v0, v1, v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    .line 85
    :cond_0
    return v0
.end method

.method public hasExtension()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 110
    iget v1, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v0, v1, v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/sipdroid/net/RtpPacket;->getBit(BI)Z

    move-result v0

    .line 113
    :cond_0
    return v0
.end method

.method public hasMarker()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/sipdroid/net/RtpPacket;->getBit(BI)Z

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPadding()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    iget v1, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v0, v1, v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/sipdroid/net/RtpPacket;->getBit(BI)Z

    move-result v0

    .line 99
    :cond_0
    return v0
.end method

.method public init(I)V
    .locals 2
    .param p1, "ptype"    # I

    .prologue
    .line 254
    invoke-static {}, Lorg/zoolu/tools/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/sipdroid/net/RtpPacket;->init(IJ)V

    .line 255
    return-void
.end method

.method public init(IIJJ)V
    .locals 1
    .param p1, "ptype"    # I
    .param p2, "seqn"    # I
    .param p3, "timestamp"    # J
    .param p5, "sscr"    # J

    .prologue
    .line 264
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/sipdroid/net/RtpPacket;->setVersion(I)V

    .line 265
    invoke-virtual {p0, p1}, Lorg/sipdroid/net/RtpPacket;->setPayloadType(I)V

    .line 266
    invoke-virtual {p0, p2}, Lorg/sipdroid/net/RtpPacket;->setSequenceNumber(I)V

    .line 267
    invoke-virtual {p0, p3, p4}, Lorg/sipdroid/net/RtpPacket;->setTimestamp(J)V

    .line 268
    invoke-virtual {p0, p5, p6}, Lorg/sipdroid/net/RtpPacket;->setSscr(J)V

    .line 269
    return-void
.end method

.method public init(IJ)V
    .locals 7
    .param p1, "ptype"    # I
    .param p2, "sscr"    # J

    .prologue
    .line 259
    invoke-static {}, Lorg/zoolu/tools/Random;->nextInt()I

    move-result v2

    invoke-static {}, Lorg/zoolu/tools/Random;->nextLong()J

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/sipdroid/net/RtpPacket;->init(IIJJ)V

    .line 260
    return-void
.end method

.method public setCscrList([J)V
    .locals 7
    .param p1, "cscr"    # [J

    .prologue
    const/4 v4, 0x0

    .line 211
    iget v2, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 212
    array-length v0, p1

    .line 213
    .local v0, "cc":I
    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    .line 214
    const/16 v0, 0xf

    .line 215
    :cond_0
    iget-object v2, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    iget-object v3, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v3, v3, v4

    shr-int/lit8 v3, v3, 0x4

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 216
    new-array p1, v0, [J

    .line 217
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 218
    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0xc

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x10

    invoke-static {v2, v3, v4, v5, v6}, Lorg/sipdroid/net/RtpPacket;->setLong(J[BII)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "cc":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setExtension(Z)V
    .locals 4
    .param p1, "x"    # Z

    .prologue
    const/4 v3, 0x0

    .line 118
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v1, v1, v3

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setBit(ZBI)B

    move-result v1

    aput-byte v1, v0, v3

    .line 120
    :cond_0
    return-void
.end method

.method public setMarker(Z)V
    .locals 4
    .param p1, "m"    # Z

    .prologue
    const/4 v3, 0x1

    .line 140
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v1, v1, v3

    const/4 v2, 0x7

    invoke-static {p1, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setBit(ZBI)B

    move-result v1

    aput-byte v1, v0, v3

    .line 142
    :cond_0
    return-void
.end method

.method public setPadding(Z)V
    .locals 4
    .param p1, "p"    # Z

    .prologue
    const/4 v3, 0x0

    .line 104
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v1, v1, v3

    const/4 v2, 0x5

    invoke-static {p1, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setBit(ZBI)B

    move-result v1

    aput-byte v1, v0, v3

    .line 106
    :cond_0
    return-void
.end method

.method public setPayload([BI)V
    .locals 5
    .param p1, "payload"    # [B
    .param p2, "len"    # I

    .prologue
    .line 225
    iget v2, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lorg/sipdroid/net/RtpPacket;->getHeaderLength()I

    move-result v0

    .line 227
    .local v0, "header_len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 228
    iget-object v2, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    add-int v3, v0, v1

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    add-int v2, v0, p2

    iput v2, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    .line 231
    .end local v0    # "header_len":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setPayloadLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/sipdroid/net/RtpPacket;->getHeaderLength()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    .line 67
    return-void
.end method

.method public setPayloadType(I)V
    .locals 4
    .param p1, "pt"    # I

    .prologue
    const/4 v3, 0x1

    .line 154
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0x80

    and-int/lit8 v2, p1, 0x7f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 156
    :cond_0
    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 3
    .param p1, "sn"    # I

    .prologue
    .line 168
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setInt(I[BII)V

    .line 170
    :cond_0
    return-void
.end method

.method public setSscr(J)V
    .locals 3
    .param p1, "ssrc"    # J

    .prologue
    const/16 v2, 0xc

    .line 196
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    if-lt v0, v2, :cond_0

    .line 197
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setLong(J[BII)V

    .line 198
    :cond_0
    return-void
.end method

.method public setTimestamp(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 182
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {p1, p2, v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setLong(J[BII)V

    .line 184
    :cond_0
    return-void
.end method

.method public setVersion(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    const/4 v3, 0x0

    .line 90
    iget v0, p0, Lorg/sipdroid/net/RtpPacket;->packet_len:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    iget-object v1, p0, Lorg/sipdroid/net/RtpPacket;->packet:[B

    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x3f

    and-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 92
    :cond_0
    return-void
.end method
