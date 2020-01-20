.class public Lorg/zoolu/tools/MD5;
.super Lorg/zoolu/tools/MessageDigest;
.source "MD5.java"


# static fields
.field static zeropadding:[B


# instance fields
.field block:[B

.field block_offset:I

.field count:J

.field message_digest:[B

.field state:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/zoolu/tools/MD5;->zeropadding:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 134
    invoke-direct {p0}, Lorg/zoolu/tools/MD5;->init()V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 151
    invoke-direct {p0}, Lorg/zoolu/tools/MD5;->init()V

    .line 152
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/MD5;->update(Ljava/lang/String;)Lorg/zoolu/tools/MessageDigest;

    .line 153
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 139
    invoke-direct {p0}, Lorg/zoolu/tools/MD5;->init()V

    .line 140
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/MD5;->update([B)Lorg/zoolu/tools/MessageDigest;

    .line 141
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 145
    invoke-direct {p0}, Lorg/zoolu/tools/MD5;->init()V

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lorg/zoolu/tools/MD5;->update([BII)Lorg/zoolu/tools/MessageDigest;

    .line 147
    return-void
.end method

.method public static digest(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Lorg/zoolu/tools/MD5;

    invoke-direct {v0, p0}, Lorg/zoolu/tools/MD5;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "md5":Lorg/zoolu/tools/MD5;
    invoke-virtual {v0}, Lorg/zoolu/tools/MD5;->doFinal()[B

    move-result-object v1

    return-object v1
.end method

.method public static digest([B)[B
    .locals 2
    .param p0, "buffer"    # [B

    .prologue
    .line 569
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/zoolu/tools/MD5;->digest([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static digest([BII)[B
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 563
    new-instance v0, Lorg/zoolu/tools/MD5;

    invoke-direct {v0, p0, p1, p2}, Lorg/zoolu/tools/MD5;-><init>([BII)V

    .line 564
    .local v0, "md5":Lorg/zoolu/tools/MD5;
    invoke-virtual {v0}, Lorg/zoolu/tools/MD5;->doFinal()[B

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/zoolu/tools/MD5;->count:J

    .line 159
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/zoolu/tools/MD5;->block:[B

    .line 160
    iput v2, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/zoolu/tools/MD5;->state:[I

    .line 163
    iget-object v0, p0, Lorg/zoolu/tools/MD5;->state:[I

    const v1, 0x67452301

    aput v1, v0, v2

    .line 164
    iget-object v0, p0, Lorg/zoolu/tools/MD5;->state:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    .line 165
    iget-object v0, p0, Lorg/zoolu/tools/MD5;->state:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    .line 166
    iget-object v0, p0, Lorg/zoolu/tools/MD5;->state:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    .line 169
    return-void
.end method

.method private static transform([I[B)V
    .locals 13
    .param p0, "state"    # [I
    .param p1, "block"    # [B

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 269
    aget v0, p0, v8

    .line 270
    .local v0, "a":I
    aget v1, p0, v9

    .line 271
    .local v1, "b":I
    aget v2, p0, v10

    .line 272
    .local v2, "c":I
    aget v3, p0, v11

    .line 274
    .local v3, "d":I
    const/16 v5, 0x10

    new-array v4, v5, [I

    .line 275
    .local v4, "x":[I
    aget-byte v5, p1, v8

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v6, p1, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, p1, v11

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v4, v8

    .line 278
    aget-byte v5, p1, v12

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v4, v9

    .line 281
    const/16 v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/16 v6, 0xa

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v4, v10

    .line 284
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/16 v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/16 v6, 0xf

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v4, v11

    .line 287
    const/16 v5, 0x10

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x11

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/16 v6, 0x12

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/16 v6, 0x13

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 290
    const/4 v5, 0x5

    const/16 v6, 0x14

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x15

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x16

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x17

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 293
    const/4 v5, 0x6

    const/16 v6, 0x18

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x19

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x1a

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x1b

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 296
    const/4 v5, 0x7

    const/16 v6, 0x1c

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x1d

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x1e

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x1f

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 299
    const/16 v5, 0x8

    const/16 v6, 0x20

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x21

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x22

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x23

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 302
    const/16 v5, 0x9

    const/16 v6, 0x24

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x25

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x26

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x27

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 305
    const/16 v5, 0xa

    const/16 v6, 0x28

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x29

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x2a

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x2b

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 308
    const/16 v5, 0xb

    const/16 v6, 0x2c

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x2d

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x2e

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x2f

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 311
    const/16 v5, 0xc

    const/16 v6, 0x30

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x31

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x32

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x33

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 314
    const/16 v5, 0xd

    const/16 v6, 0x34

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x35

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x36

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x37

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 317
    const/16 v5, 0xe

    const/16 v6, 0x38

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x39

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x3a

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x3b

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 320
    const/16 v5, 0xf

    const/16 v6, 0x3c

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x3d

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x3e

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/16 v7, 0x3f

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 325
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aget v6, v4, v8

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 326
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 327
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    aget v6, v4, v9

    add-int/2addr v5, v6

    const v6, -0x173848aa

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 328
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 329
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    aget v6, v4, v10

    add-int/2addr v5, v6

    const v6, 0x242070db

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 330
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 331
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    aget v6, v4, v11

    add-int/2addr v5, v6

    const v6, -0x3e423112

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 332
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 334
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aget v6, v4, v12

    add-int/2addr v5, v6

    const v6, -0xa83f051

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 335
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 336
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4787c62a

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 337
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 338
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x57cfb9ed

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 339
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 340
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2b96aff

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 341
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 343
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x698098d8

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 344
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 345
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x74bb0851

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 346
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 347
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xa44f

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 348
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 349
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x76a32842

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 350
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 352
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6b901122

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 353
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 354
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2678e6d

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 355
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 356
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5986bc72

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 357
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 358
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x49b40821

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 359
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 362
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    aget v6, v4, v9

    add-int/2addr v5, v6

    const v6, -0x9e1da9e

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 363
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 364
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3fbf4cc0

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 365
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 366
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x265e5a51

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 367
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 368
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aget v6, v4, v8

    add-int/2addr v5, v6

    const v6, -0x16493856

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 369
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 371
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x29d0efa3

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 372
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 373
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x2441453

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 374
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 375
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x275e197f

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 376
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 377
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aget v6, v4, v12

    add-int/2addr v5, v6

    const v6, -0x182c0438

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 378
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 380
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x21e1cde6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 381
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 382
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3cc8f82a

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 383
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 384
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    aget v6, v4, v11

    add-int/2addr v5, v6

    const v6, -0xb2af279

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 385
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 386
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x455a14ed

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 387
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 389
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x561c16fb

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 390
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 391
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    aget v6, v4, v10

    add-int/2addr v5, v6

    const v6, -0x3105c08

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 392
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 393
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x676f02d9

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 394
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 395
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x72d5b376

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 396
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 399
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5c6be

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 400
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 401
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x788e097f

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 402
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 403
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6d9d6122

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 404
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 405
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x21ac7f4

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 406
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 408
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    aget v6, v4, v9

    add-int/2addr v5, v6

    const v6, -0x5b4115bc

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 409
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 410
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    aget v6, v4, v12

    add-int/2addr v5, v6

    const v6, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 411
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 412
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x944b4a0

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 413
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 414
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x41404390

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 415
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 417
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 418
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 419
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    aget v6, v4, v8

    add-int/2addr v5, v6

    const v6, -0x155ed806

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 420
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 421
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    aget v6, v4, v11

    add-int/2addr v5, v6

    const v6, -0x2b10cf7b

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 422
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 423
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 424
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 426
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x262b2fc7

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 427
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 428
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 429
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 430
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x1fa27cf8

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 431
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 432
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    aget v6, v4, v10

    add-int/2addr v5, v6

    const v6, -0x3b53a99b

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 433
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 436
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    aget v6, v4, v8

    add-int/2addr v5, v6

    const v6, -0xbd6ddbc

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 437
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 438
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x432aff97

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 439
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 440
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 441
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 442
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x36c5fc7

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 443
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 445
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x655b59c3

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 446
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 447
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    aget v6, v4, v11

    add-int/2addr v5, v6

    const v6, -0x70f3336e

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 448
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 449
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x100b83

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 450
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 451
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    aget v6, v4, v9

    add-int/2addr v5, v6

    const v6, -0x7a7ba22f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 452
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 454
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6fa87e4f

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 455
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 456
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x1d31920

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 457
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 458
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5cfebcec

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 459
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 460
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4e0811a1    # 5.7071418E8f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 461
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 463
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    aget v6, v4, v12

    add-int/2addr v5, v6

    const v6, -0x8ac817e

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 464
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 465
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x42c50dcb

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 466
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 467
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    aget v6, v4, v10

    add-int/2addr v5, v6

    const v6, 0x2ad7d2bb

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 468
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 469
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x14792c6f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 470
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 472
    aget v5, p0, v8

    add-int/2addr v5, v0

    aput v5, p0, v8

    .line 473
    aget v5, p0, v9

    add-int/2addr v5, v1

    aput v5, p0, v9

    .line 474
    aget v5, p0, v10

    add-int/2addr v5, v2

    aput v5, p0, v10

    .line 475
    aget v5, p0, v11

    add-int/2addr v5, v3

    aput v5, p0, v11

    .line 476
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 233
    iget-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    if-eqz v7, :cond_0

    .line 234
    iget-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    .line 264
    :goto_0
    return-object v7

    .line 238
    :cond_0
    iget v7, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    add-int/lit8 v7, v7, 0x8

    rem-int/lit8 v7, v7, 0x40

    rsub-int/lit8 v6, v7, 0x40

    .line 241
    .local v6, "npad":I
    iget-wide v7, p0, Lorg/zoolu/tools/MD5;->count:J

    const-wide/16 v9, 0x8

    mul-long v3, v7, v9

    .line 242
    .local v3, "len":J
    new-array v5, v11, [B

    .line 243
    .local v5, "len_field":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v11, :cond_1

    .line 244
    const-wide/16 v7, 0x100

    rem-long v7, v3, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 245
    shr-long/2addr v3, v11

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_1
    sget-object v7, Lorg/zoolu/tools/MD5;->zeropadding:[B

    invoke-virtual {p0, v7, v12, v6}, Lorg/zoolu/tools/MD5;->update([BII)Lorg/zoolu/tools/MessageDigest;

    .line 251
    invoke-virtual {p0, v5, v12, v11}, Lorg/zoolu/tools/MD5;->update([BII)Lorg/zoolu/tools/MessageDigest;

    .line 253
    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "k":I
    const/4 v0, 0x0

    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_2
    const/4 v7, 0x4

    if-ge v0, v7, :cond_2

    .line 259
    iget-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v8, p0, Lorg/zoolu/tools/MD5;->state:[I

    aget v8, v8, v0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 260
    iget-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    iget-object v8, p0, Lorg/zoolu/tools/MD5;->state:[I

    aget v8, v8, v0

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 261
    iget-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v8, p0, Lorg/zoolu/tools/MD5;->state:[I

    aget v8, v8, v0

    ushr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 262
    iget-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    iget-object v8, p0, Lorg/zoolu/tools/MD5;->state:[I

    aget v8, v8, v0

    ushr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 264
    :cond_2
    iget-object v7, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    goto :goto_0
.end method

.method public update([BII)Lorg/zoolu/tools/MessageDigest;
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 193
    iget-object v2, p0, Lorg/zoolu/tools/MD5;->message_digest:[B

    if-eqz v2, :cond_0

    .line 220
    :goto_0
    return-object p0

    .line 197
    :cond_0
    iget-wide v2, p0, Lorg/zoolu/tools/MD5;->count:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/zoolu/tools/MD5;->count:J

    .line 200
    iget-object v2, p0, Lorg/zoolu/tools/MD5;->block:[B

    array-length v2, v2

    iget v3, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    sub-int v1, v2, v3

    .line 202
    .local v1, "size":I
    :goto_1
    if-lt p3, v1, :cond_2

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_1

    .line 204
    iget-object v2, p0, Lorg/zoolu/tools/MD5;->block:[B

    iget v3, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    add-int/2addr v3, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 207
    :cond_1
    iget-object v2, p0, Lorg/zoolu/tools/MD5;->state:[I

    iget-object v3, p0, Lorg/zoolu/tools/MD5;->block:[B

    invoke-static {v2, v3}, Lorg/zoolu/tools/MD5;->transform([I[B)V

    .line 210
    add-int/2addr p2, v1

    .line 211
    sub-int/2addr p3, v1

    .line 212
    const/4 v2, 0x0

    iput v2, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    .line 213
    iget-object v2, p0, Lorg/zoolu/tools/MD5;->block:[B

    array-length v2, v2

    iget v3, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    sub-int v1, v2, v3

    goto :goto_1

    .line 216
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p3, :cond_3

    .line 217
    iget-object v2, p0, Lorg/zoolu/tools/MD5;->block:[B

    iget v3, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    add-int/2addr v3, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 218
    :cond_3
    iget v2, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/zoolu/tools/MD5;->block_offset:I

    goto :goto_0
.end method
