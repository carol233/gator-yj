.class public Lorg/zoolu/tools/Random;
.super Ljava/lang/Object;
.source "Random.java"


# static fields
.field static rand:Ljava/util/Random;

.field static final seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/zoolu/tools/Random;->seed:J

    .line 35
    new-instance v0, Ljava/util/Random;

    sget-wide v1, Lorg/zoolu/tools/Random;->seed:J

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lorg/zoolu/tools/Random;->rand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nextBoolean()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 72
    sget-object v1, Lorg/zoolu/tools/Random;->rand:Ljava/util/Random;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextBytes(I)[B
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 77
    new-array v0, p0, [B

    .line 78
    .local v0, "buff":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 79
    const/16 v2, 0x100

    invoke-static {v2}, Lorg/zoolu/tools/Random;->nextInt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method

.method public static nextHexString(I)Ljava/lang/String;
    .locals 4
    .param p0, "len"    # I

    .prologue
    .line 103
    new-array v0, p0, [B

    .line 104
    .local v0, "buff":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 105
    const/16 v3, 0x10

    invoke-static {v3}, Lorg/zoolu/tools/Random;->nextInt(I)I

    move-result v2

    .line 106
    .local v2, "n":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x30

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    add-int/lit8 v3, v2, 0x57

    goto :goto_1

    .line 108
    .end local v2    # "n":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static nextInt()I
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/zoolu/tools/Random;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static nextInt(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 62
    sget-object v0, Lorg/zoolu/tools/Random;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p0

    return v0
.end method

.method public static nextLong()J
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lorg/zoolu/tools/Random;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextNumString(I)Ljava/lang/String;
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 95
    new-array v0, p0, [B

    .line 96
    .local v0, "buff":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 97
    const/16 v2, 0xa

    invoke-static {v2}, Lorg/zoolu/tools/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static nextString(I)Ljava/lang/String;
    .locals 4
    .param p0, "len"    # I

    .prologue
    .line 85
    new-array v0, p0, [B

    .line 86
    .local v0, "buff":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 87
    const/16 v3, 0x3e

    invoke-static {v3}, Lorg/zoolu/tools/Random;->nextInt(I)I

    move-result v2

    .line 88
    .local v2, "n":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x30

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/16 v3, 0x24

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x37

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x3d

    goto :goto_1

    .line 90
    .end local v2    # "n":I
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static setSeed(J)V
    .locals 1
    .param p0, "seed"    # J

    .prologue
    .line 52
    sget-object v0, Lorg/zoolu/tools/Random;->rand:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 53
    return-void
.end method
