.class public Lorg/zoolu/tools/SimpleDigest;
.super Lorg/zoolu/tools/MessageDigest;
.source "SimpleDigest.java"


# instance fields
.field add_term:B

.field index:I

.field is_done:Z

.field message_digest:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lorg/zoolu/tools/SimpleDigest;->init(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lorg/zoolu/tools/SimpleDigest;->init(I)V

    .line 67
    invoke-virtual {p0, p2}, Lorg/zoolu/tools/SimpleDigest;->update(Ljava/lang/String;)Lorg/zoolu/tools/MessageDigest;

    .line 68
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "buffer"    # [B

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lorg/zoolu/tools/SimpleDigest;->init(I)V

    .line 55
    invoke-virtual {p0, p2}, Lorg/zoolu/tools/SimpleDigest;->update([B)Lorg/zoolu/tools/MessageDigest;

    .line 56
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/zoolu/tools/MessageDigest;-><init>()V

    .line 60
    invoke-direct {p0, p1}, Lorg/zoolu/tools/SimpleDigest;->init(I)V

    .line 61
    invoke-virtual {p0, p2, p3, p4}, Lorg/zoolu/tools/SimpleDigest;->update([BII)Lorg/zoolu/tools/MessageDigest;

    .line 62
    return-void
.end method

.method public static digest(ILjava/lang/String;)[B
    .locals 2
    .param p0, "size"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lorg/zoolu/tools/SimpleDigest;

    invoke-direct {v0, p0, p1}, Lorg/zoolu/tools/SimpleDigest;-><init>(ILjava/lang/String;)V

    .line 134
    .local v0, "md":Lorg/zoolu/tools/MessageDigest;
    invoke-virtual {v0}, Lorg/zoolu/tools/MessageDigest;->doFinal()[B

    move-result-object v1

    return-object v1
.end method

.method public static digest(I[B)[B
    .locals 2
    .param p0, "size"    # I
    .param p1, "buffer"    # [B

    .prologue
    .line 128
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/zoolu/tools/SimpleDigest;->digest(I[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static digest(I[BII)[B
    .locals 2
    .param p0, "size"    # I
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 122
    new-instance v0, Lorg/zoolu/tools/SimpleDigest;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/zoolu/tools/SimpleDigest;-><init>(I[BII)V

    .line 123
    .local v0, "md":Lorg/zoolu/tools/MessageDigest;
    invoke-virtual {v0}, Lorg/zoolu/tools/MessageDigest;->doFinal()[B

    move-result-object v1

    return-object v1
.end method

.method private init(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 72
    iput-boolean v3, p0, Lorg/zoolu/tools/SimpleDigest;->is_done:Z

    .line 73
    new-array v1, p1, [B

    iput-object v1, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iput v3, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    .line 77
    iput-byte v3, p0, Lorg/zoolu/tools/SimpleDigest;->add_term:B

    .line 78
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 6

    .prologue
    .line 104
    iget-boolean v2, p0, Lorg/zoolu/tools/SimpleDigest;->is_done:Z

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    .line 117
    :goto_0
    return-object v2

    .line 108
    :cond_0
    iget-object v2, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    array-length v2, v2

    iget v3, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    sub-int v1, v2, v3

    .line 109
    .local v1, "k":I
    :goto_1
    iget v2, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    iget-object v3, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 110
    iget-object v2, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    iget v3, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    iget-object v4, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    iget v5, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    aget-byte v4, v4, v5

    xor-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 111
    iget v2, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 115
    iget-object v2, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    iget-object v3, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    aget-byte v3, v3, v0

    iget-byte v4, p0, Lorg/zoolu/tools/SimpleDigest;->add_term:B

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    :cond_2
    iget-object v2, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    goto :goto_0
.end method

.method public update([BII)Lorg/zoolu/tools/MessageDigest;
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 85
    iget-boolean v1, p0, Lorg/zoolu/tools/SimpleDigest;->is_done:Z

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    return-object p0

    .line 89
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 90
    iget v1, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    iget-object v2, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    .line 92
    :cond_2
    iget-byte v1, p0, Lorg/zoolu/tools/SimpleDigest;->add_term:B

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/zoolu/tools/SimpleDigest;->add_term:B

    .line 93
    iget-object v1, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    iget v2, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    iget-object v3, p0, Lorg/zoolu/tools/SimpleDigest;->message_digest:[B

    iget v4, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    aget-byte v3, v3, v4

    iget-byte v4, p0, Lorg/zoolu/tools/SimpleDigest;->add_term:B

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 94
    iget v1, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/zoolu/tools/SimpleDigest;->index:I

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
