.class public abstract Lorg/zoolu/tools/MessageDigest;
.super Ljava/lang/Object;
.source "MessageDigest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B

    .prologue
    .line 71
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 72
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object v1
.end method


# virtual methods
.method public asHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/zoolu/tools/MessageDigest;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lorg/zoolu/tools/MessageDigest;->asHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract doFinal()[B
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/zoolu/tools/MessageDigest;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;)Lorg/zoolu/tools/MessageDigest;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 42
    .local v0, "buf":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/zoolu/tools/MessageDigest;->update([BII)Lorg/zoolu/tools/MessageDigest;

    move-result-object v1

    return-object v1
.end method

.method public update([B)Lorg/zoolu/tools/MessageDigest;
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 50
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/zoolu/tools/MessageDigest;->update([BII)Lorg/zoolu/tools/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public abstract update([BII)Lorg/zoolu/tools/MessageDigest;
.end method
