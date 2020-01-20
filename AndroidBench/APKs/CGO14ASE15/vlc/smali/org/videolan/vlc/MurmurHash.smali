.class public final Lorg/videolan/vlc/MurmurHash;
.super Ljava/lang/Object;
.source "MurmurHash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hash32(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 83
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/videolan/vlc/MurmurHash;->hash32([BI)I

    move-result v1

    return v1
.end method

.method public static hash32(Ljava/lang/String;II)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "length"    # I

    .prologue
    .line 94
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/MurmurHash;->hash32(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hash32([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 73
    const v0, -0x68b84d74

    invoke-static {p0, p1, v0}, Lorg/videolan/vlc/MurmurHash;->hash32([BII)I

    move-result v0

    return v0
.end method

.method public static hash32([BII)I
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "seed"    # I

    .prologue
    const v9, 0x5bd1e995

    .line 31
    const v5, 0x5bd1e995

    .line 32
    .local v5, "m":I
    const/16 v6, 0x18

    .line 34
    .local v6, "r":I
    xor-int v0, p2, p1

    .line 35
    .local v0, "h":I
    div-int/lit8 v4, p1, 0x4

    .line 37
    .local v4, "length4":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 38
    mul-int/lit8 v2, v1, 0x4

    .line 39
    .local v2, "i4":I
    add-int/lit8 v7, v2, 0x0

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int v3, v7, v8

    .line 41
    .local v3, "k":I
    mul-int/2addr v3, v9

    .line 42
    ushr-int/lit8 v7, v3, 0x18

    xor-int/2addr v3, v7

    .line 43
    mul-int/2addr v3, v9

    .line 44
    mul-int/2addr v0, v9

    .line 45
    xor-int/2addr v0, v3

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "i4":I
    .end local v3    # "k":I
    :cond_0
    rem-int/lit8 v7, p1, 0x4

    packed-switch v7, :pswitch_data_0

    .line 59
    :goto_1
    ushr-int/lit8 v7, v0, 0xd

    xor-int/2addr v0, v7

    .line 60
    mul-int/2addr v0, v9

    .line 61
    ushr-int/lit8 v7, v0, 0xf

    xor-int/2addr v0, v7

    .line 63
    return v0

    .line 51
    :pswitch_0
    and-int/lit8 v7, p1, -0x4

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v0, v7

    .line 53
    :pswitch_1
    and-int/lit8 v7, p1, -0x4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v0, v7

    .line 55
    :pswitch_2
    and-int/lit8 v7, p1, -0x4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    .line 56
    mul-int/2addr v0, v9

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash64(Ljava/lang/String;)J
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 170
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/videolan/vlc/MurmurHash;->hash64([BI)J

    move-result-wide v1

    return-wide v1
.end method

.method public static hash64(Ljava/lang/String;II)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "length"    # I

    .prologue
    .line 181
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/MurmurHash;->hash64(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BI)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 160
    const v0, -0x1e85eb9b

    invoke-static {p0, p1, v0}, Lorg/videolan/vlc/MurmurHash;->hash64([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BII)J
    .locals 17
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "seed"    # I

    .prologue
    .line 105
    const-wide v8, -0x395b586ca42e166bL    # -2.0946245025644615E32

    .line 106
    .local v8, "m":J
    const/16 v10, 0x2f

    .line 108
    .local v10, "r":I
    move/from16 v0, p2

    int-to-long v11, v0

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    move/from16 v0, p1

    int-to-long v13, v0

    const-wide v15, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v13, v15

    xor-long v1, v11, v13

    .line 110
    .local v1, "h":J
    div-int/lit8 v7, p1, 0x8

    .line 112
    .local v7, "length8":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 113
    mul-int/lit8 v4, v3, 0x8

    .line 114
    .local v4, "i8":I
    add-int/lit8 v11, v4, 0x0

    aget-byte v11, p0, v11

    int-to-long v11, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x8

    shl-long/2addr v13, v15

    add-long/2addr v11, v13

    add-int/lit8 v13, v4, 0x2

    aget-byte v13, p0, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    add-long/2addr v11, v13

    add-int/lit8 v13, v4, 0x3

    aget-byte v13, p0, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x18

    shl-long/2addr v13, v15

    add-long/2addr v11, v13

    add-int/lit8 v13, v4, 0x4

    aget-byte v13, p0, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x20

    shl-long/2addr v13, v15

    add-long/2addr v11, v13

    add-int/lit8 v13, v4, 0x5

    aget-byte v13, p0, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x28

    shl-long/2addr v13, v15

    add-long/2addr v11, v13

    add-int/lit8 v13, v4, 0x6

    aget-byte v13, p0, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x30

    shl-long/2addr v13, v15

    add-long/2addr v11, v13

    add-int/lit8 v13, v4, 0x7

    aget-byte v13, p0, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x38

    shl-long/2addr v13, v15

    add-long v5, v11, v13

    .line 119
    .local v5, "k":J
    const-wide v11, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v5, v11

    .line 120
    const/16 v11, 0x2f

    ushr-long v11, v5, v11

    xor-long/2addr v5, v11

    .line 121
    const-wide v11, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v5, v11

    .line 123
    xor-long/2addr v1, v5

    .line 124
    const-wide v11, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v1, v11

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v4    # "i8":I
    .end local v5    # "k":J
    :cond_0
    rem-int/lit8 v11, p1, 0x8

    packed-switch v11, :pswitch_data_0

    .line 146
    :goto_1
    const/16 v11, 0x2f

    ushr-long v11, v1, v11

    xor-long/2addr v1, v11

    .line 147
    const-wide v11, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v1, v11

    .line 148
    const/16 v11, 0x2f

    ushr-long v11, v1, v11

    xor-long/2addr v1, v11

    .line 150
    return-wide v1

    .line 129
    :pswitch_0
    and-int/lit8 v11, p1, -0x8

    add-int/lit8 v11, v11, 0x6

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    const/16 v13, 0x30

    shl-long/2addr v11, v13

    xor-long/2addr v1, v11

    .line 131
    :pswitch_1
    and-int/lit8 v11, p1, -0x8

    add-int/lit8 v11, v11, 0x5

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    const/16 v13, 0x28

    shl-long/2addr v11, v13

    xor-long/2addr v1, v11

    .line 133
    :pswitch_2
    and-int/lit8 v11, p1, -0x8

    add-int/lit8 v11, v11, 0x4

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    xor-long/2addr v1, v11

    .line 135
    :pswitch_3
    and-int/lit8 v11, p1, -0x8

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    const/16 v13, 0x18

    shl-long/2addr v11, v13

    xor-long/2addr v1, v11

    .line 137
    :pswitch_4
    and-int/lit8 v11, p1, -0x8

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    const/16 v13, 0x10

    shl-long/2addr v11, v13

    xor-long/2addr v1, v11

    .line 139
    :pswitch_5
    and-int/lit8 v11, p1, -0x8

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    const/16 v13, 0x8

    shl-long/2addr v11, v13

    xor-long/2addr v1, v11

    .line 141
    :pswitch_6
    and-int/lit8 v11, p1, -0x8

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    xor-long/2addr v1, v11

    .line 142
    const-wide v11, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v1, v11

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
