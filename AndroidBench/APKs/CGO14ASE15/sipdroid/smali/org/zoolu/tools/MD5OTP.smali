.class public Lorg/zoolu/tools/MD5OTP;
.super Ljava/lang/Object;
.source "MD5OTP.java"


# static fields
.field static size:I


# instance fields
.field h:[B

.field index:I

.field skey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "skey"    # [B

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/zoolu/tools/MD5OTP;->init(I[B[B)V

    .line 78
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "skey"    # [B
    .param p2, "iv"    # [B

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lorg/zoolu/tools/MD5OTP;->init(I[B[B)V

    .line 73
    return-void
.end method

.method private static asHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "bb"    # [B

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 170
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 171
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 172
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static cat([B[B)[B
    .locals 4
    .param p0, "aa"    # [B
    .param p1, "bb"    # [B

    .prologue
    .line 104
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [B

    .line 105
    .local v0, "cc":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 106
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 108
    array-length v2, p0

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_1
    return-object v0
.end method

.method private static clone([B)[B
    .locals 3
    .param p0, "bb"    # [B

    .prologue
    .line 96
    array-length v2, p0

    new-array v0, v2, [B

    .line 97
    .local v0, "cc":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 98
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v0
.end method

.method public static decrypt([B[B)[B
    .locals 4
    .param p0, "c"    # [B
    .param p1, "key"    # [B

    .prologue
    const/16 v3, 0x10

    .line 162
    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Lorg/zoolu/tools/MD5OTP;->sub([BII)[B

    move-result-object v1

    .line 163
    .local v1, "iv":[B
    array-length v2, p0

    invoke-static {p0, v3, v2}, Lorg/zoolu/tools/MD5OTP;->sub([BII)[B

    move-result-object v0

    .line 164
    .local v0, "buf":[B
    new-instance v2, Lorg/zoolu/tools/MD5OTP;

    invoke-direct {v2, p1, v1}, Lorg/zoolu/tools/MD5OTP;-><init>([B[B)V

    invoke-virtual {v2, v0}, Lorg/zoolu/tools/MD5OTP;->update([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static encrypt([B[B)[B
    .locals 4
    .param p0, "m"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 154
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/zoolu/tools/MD5;->digest(Ljava/lang/String;)[B

    move-result-object v1

    .line 156
    .local v1, "iv":[B
    new-instance v2, Lorg/zoolu/tools/MD5OTP;

    invoke-direct {v2, p1, v1}, Lorg/zoolu/tools/MD5OTP;-><init>([B[B)V

    invoke-virtual {v2, p0}, Lorg/zoolu/tools/MD5OTP;->update([B)[B

    move-result-object v0

    .line 157
    .local v0, "c":[B
    invoke-static {v1, v0}, Lorg/zoolu/tools/MD5OTP;->cat([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method private static hash([B)[B
    .locals 1
    .param p0, "bb"    # [B

    .prologue
    .line 122
    invoke-static {p0}, Lorg/zoolu/tools/MD5;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private init(I[B[B)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "skey"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 82
    sput p1, Lorg/zoolu/tools/MD5OTP;->size:I

    .line 83
    if-nez p3, :cond_0

    .line 84
    new-array p3, p1, [B

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 86
    const/4 v1, 0x0

    aput-byte v1, p3, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Lorg/zoolu/tools/MD5OTP;->skey:[B

    .line 90
    invoke-static {p3}, Lorg/zoolu/tools/MD5OTP;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/tools/MD5OTP;->h:[B

    .line 91
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lorg/zoolu/tools/MD5OTP;->index:I

    .line 92
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 180
    array-length v4, p0

    if-ge v4, v6, :cond_0

    .line 181
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Usage:\n\n   java MD5OTP <message> <pass_phrase> [<iv>]"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 186
    :cond_0
    aget-object v4, p0, v7

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 187
    .local v3, "msg":[B
    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 188
    .local v2, "key":[B
    const/4 v1, 0x0

    .line 189
    .local v1, "iv":[B
    array-length v4, p0

    if-le v4, v6, :cond_1

    .line 190
    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 192
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lorg/zoolu/tools/MD5OTP;->asHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    new-instance v4, Lorg/zoolu/tools/MD5OTP;

    invoke-direct {v4, v2, v1}, Lorg/zoolu/tools/MD5OTP;-><init>([B[B)V

    invoke-virtual {v4, v3}, Lorg/zoolu/tools/MD5OTP;->update([B)[B

    move-result-object v0

    .line 194
    .local v0, "cip":[B
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/zoolu/tools/MD5OTP;->asHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    new-instance v4, Lorg/zoolu/tools/MD5OTP;

    invoke-direct {v4, v2, v1}, Lorg/zoolu/tools/MD5OTP;-><init>([B[B)V

    invoke-virtual {v4, v0}, Lorg/zoolu/tools/MD5OTP;->update([B)[B

    move-result-object v0

    .line 196
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/zoolu/tools/MD5OTP;->asHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private static sub([BII)[B
    .locals 4
    .param p0, "bb"    # [B
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 114
    sub-int v2, p2, p1

    new-array v0, v2, [B

    .line 115
    .local v0, "cc":[B
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 116
    sub-int v2, v1, p1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-object v0
.end method


# virtual methods
.method public update(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 141
    const/16 v3, 0x800

    new-array v0, v3, [B

    .line 144
    .local v0, "buff":[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 145
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/zoolu/tools/MD5OTP;->sub([BII)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/zoolu/tools/MD5OTP;->update([B)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public update([B)[B
    .locals 5
    .param p1, "m"    # [B

    .prologue
    .line 127
    array-length v2, p1

    new-array v0, v2, [B

    .line 128
    .local v0, "c":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 129
    iget v2, p0, Lorg/zoolu/tools/MD5OTP;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/zoolu/tools/MD5OTP;->index:I

    .line 130
    iget v2, p0, Lorg/zoolu/tools/MD5OTP;->index:I

    sget v3, Lorg/zoolu/tools/MD5OTP;->size:I

    if-ne v2, v3, :cond_0

    .line 131
    iget-object v2, p0, Lorg/zoolu/tools/MD5OTP;->skey:[B

    iget-object v3, p0, Lorg/zoolu/tools/MD5OTP;->h:[B

    invoke-static {v2, v3}, Lorg/zoolu/tools/MD5OTP;->cat([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/zoolu/tools/MD5OTP;->hash([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/tools/MD5OTP;->h:[B

    .line 132
    const/4 v2, 0x0

    iput v2, p0, Lorg/zoolu/tools/MD5OTP;->index:I

    .line 134
    :cond_0
    aget-byte v2, p1, v1

    iget-object v3, p0, Lorg/zoolu/tools/MD5OTP;->h:[B

    iget v4, p0, Lorg/zoolu/tools/MD5OTP;->index:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-object v0
.end method
