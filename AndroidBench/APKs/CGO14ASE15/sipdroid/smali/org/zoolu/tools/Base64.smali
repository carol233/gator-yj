.class public Lorg/zoolu/tools/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static aux:[I = null

.field private static final base64codes:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lorg/zoolu/tools/Base64;->aux:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14
    .param p0, "stringacod"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 96
    const-string v7, "="

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 97
    .local v6, "uguale":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 98
    invoke-virtual {p0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 100
    :cond_0
    new-array v0, v13, [I

    .line 101
    .local v0, "bin":[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v2, v7, 0x4

    .line 102
    .local v2, "iter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v5, v7, 0x4

    .line 104
    .local v5, "resto":I
    const/4 v3, 0x0

    .line 105
    .local v3, "nzero":I
    if-eqz v5, :cond_1

    .line 106
    const/4 v3, 0x1

    .line 107
    :cond_1
    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v8, v5, -0x1

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    new-array v4, v7, [B

    .line 109
    .local v4, "output":[B
    const/4 v1, 0x0

    .line 110
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 111
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v10

    .line 112
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v11

    .line 113
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v12

    .line 114
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v13

    .line 116
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v10

    shl-int/lit8 v7, v7, 0x2

    sget-object v8, Lorg/zoolu/tools/Base64;->aux:[I

    aget v8, v8, v11

    ushr-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    aput v7, v0, v10

    .line 117
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v11

    rem-int/lit8 v7, v7, 0x10

    shl-int/lit8 v7, v7, 0x4

    sget-object v8, Lorg/zoolu/tools/Base64;->aux:[I

    aget v8, v8, v12

    ushr-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v0, v11

    .line 118
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v12

    rem-int/lit8 v7, v7, 0x4

    shl-int/lit8 v7, v7, 0x6

    sget-object v8, Lorg/zoolu/tools/Base64;->aux:[I

    aget v8, v8, v13

    add-int/2addr v7, v8

    aput v7, v0, v12

    .line 120
    mul-int/lit8 v7, v1, 0x3

    aget v8, v0, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 121
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v8, v0, v11

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 122
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aget v8, v0, v12

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 125
    :cond_2
    if-ne v1, v2, :cond_5

    .line 129
    if-nez v5, :cond_3

    .line 131
    :cond_3
    if-ne v5, v12, :cond_4

    .line 132
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v10

    .line 133
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v11

    .line 135
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v10

    shl-int/lit8 v7, v7, 0x2

    sget-object v8, Lorg/zoolu/tools/Base64;->aux:[I

    aget v8, v8, v11

    ushr-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    aput v7, v0, v10

    .line 137
    mul-int/lit8 v7, v1, 0x3

    aget v8, v0, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 140
    :cond_4
    if-ne v5, v13, :cond_5

    .line 141
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v10

    .line 142
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v11

    .line 143
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    aput v8, v7, v12

    .line 145
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v10

    shl-int/lit8 v7, v7, 0x2

    sget-object v8, Lorg/zoolu/tools/Base64;->aux:[I

    aget v8, v8, v11

    ushr-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    aput v7, v0, v10

    .line 146
    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v11

    rem-int/lit8 v7, v7, 0x10

    shl-int/lit8 v7, v7, 0x4

    sget-object v8, Lorg/zoolu/tools/Base64;->aux:[I

    aget v8, v8, v12

    ushr-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v0, v11

    .line 148
    mul-int/lit8 v7, v1, 0x3

    aget v8, v0, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 149
    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v8, v0, v11

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 152
    :cond_5
    return-object v4
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 12
    .param p0, "input"    # [B

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 39
    const-string v4, ""

    .line 40
    .local v4, "stringacod":Ljava/lang/String;
    new-array v0, v11, [B

    .line 42
    .local v0, "bin":[B
    array-length v5, p0

    div-int/lit8 v2, v5, 0x3

    .line 43
    .local v2, "iter":I
    array-length v5, p0

    rem-int/lit8 v3, v5, 0x3

    .line 44
    .local v3, "nzero":I
    const/4 v1, 0x0

    .line 46
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 47
    mul-int/lit8 v5, v1, 0x3

    aget-byte v5, p0, v5

    aput-byte v5, v0, v9

    .line 48
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v0, v8

    .line 49
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    aput-byte v5, v0, v10

    .line 51
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    aget-byte v6, v0, v9

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aput v6, v5, v9

    .line 52
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    aget-byte v6, v0, v9

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    aget-byte v7, v0, v8

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    aput v6, v5, v8

    .line 53
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    aget-byte v6, v0, v8

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    aget-byte v7, v0, v10

    ushr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    aput v6, v5, v10

    .line 54
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    aget-byte v6, v0, v10

    and-int/lit8 v6, v6, 0x3f

    aput v6, v5, v11

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 64
    :cond_0
    if-ne v1, v2, :cond_1

    .line 65
    if-nez v3, :cond_2

    .line 89
    :cond_1
    :goto_1
    return-object v4

    .line 66
    :cond_2
    if-ne v3, v8, :cond_3

    .line 70
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    mul-int/lit8 v6, v2, 0x3

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aput v6, v5, v9

    .line 71
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    mul-int/lit8 v6, v2, 0x3

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    aput v6, v5, v8

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 75
    :cond_3
    if-ne v3, v10, :cond_1

    .line 78
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    mul-int/lit8 v6, v2, 0x3

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aput v6, v5, v9

    .line 79
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    mul-int/lit8 v6, v2, 0x3

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    aput v6, v5, v8

    .line 81
    sget-object v5, Lorg/zoolu/tools/Base64;->aux:[I

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    aput v6, v5, v10

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sget-object v7, Lorg/zoolu/tools/Base64;->aux:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 158
    const/4 v7, 0x0

    aget-object v4, p0, v7

    .line 159
    .local v4, "messaggio":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 160
    .local v0, "bmess":[B
    invoke-static {v0}, Lorg/zoolu/tools/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "mess64":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "messaggio codificato: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    invoke-static {v3}, Lorg/zoolu/tools/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 163
    .local v1, "decodificato":[B
    const-string v5, ""

    .line 165
    .local v5, "strdecodificato":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "strdecodificato":Ljava/lang/String;
    .local v6, "strdecodificato":Ljava/lang/String;
    move-object v5, v6

    .line 169
    .end local v6    # "strdecodificato":Ljava/lang/String;
    .restart local v5    # "strdecodificato":Ljava/lang/String;
    :goto_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "messaggio decodificato e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    return-void

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
