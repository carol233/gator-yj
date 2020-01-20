.class public Lorg/zoolu/tools/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field public static CRLF:[C

.field public static SPACE:[C

.field public static WSP:[C

.field public static WSPCRLF:[C


# instance fields
.field protected index:I

.field protected str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 223
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/zoolu/tools/Parser;->WSP:[C

    .line 225
    sget-object v0, Lorg/zoolu/tools/Parser;->WSP:[C

    sput-object v0, Lorg/zoolu/tools/Parser;->SPACE:[C

    .line 227
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/zoolu/tools/Parser;->CRLF:[C

    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/zoolu/tools/Parser;->WSPCRLF:[C

    return-void

    .line 223
    :array_0
    .array-data 2
        0x20s
        0x9s
    .end array-data

    .line 227
    :array_1
    .array-data 2
        0xds
        0xas
    .end array-data

    .line 229
    :array_2
    .array-data 2
        0x20s
        0x9s
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to costruct a new Parser with a null String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to costruct a new Parser with a null String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    .line 79
    iput p2, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to costruct a new Parser with a null StringBuffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "i"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to costruct a new Parser with a null StringBuffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    .line 103
    iput p2, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 104
    return-void
.end method

.method public static compareIgnoreCase(CC)I
    .locals 1
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .prologue
    .line 309
    invoke-static {p0}, Lorg/zoolu/tools/Parser;->isUpAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 311
    :cond_0
    invoke-static {p1}, Lorg/zoolu/tools/Parser;->isUpAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    add-int/lit8 v0, p1, 0x20

    int-to-char p1, v0

    .line 313
    :cond_1
    sub-int v0, p0, p1

    return v0
.end method

.method public static isAlpha(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 254
    invoke-static {p0}, Lorg/zoolu/tools/Parser;->isUpAlpha(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/zoolu/tools/Parser;->isLowAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAlphanum(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 259
    invoke-static {p0}, Lorg/zoolu/tools/Parser;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/zoolu/tools/Parser;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyOf([CC)Z
    .locals 3
    .param p0, "ca"    # [C
    .param p1, "ch"    # C

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 235
    aget-char v2, p0, v1

    if-ne v2, p1, :cond_1

    .line 236
    const/4 v0, 0x1

    .line 239
    :cond_0
    return v0

    .line 234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isCR(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 274
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCRLF(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 284
    sget-object v0, Lorg/zoolu/tools/Parser;->CRLF:[C

    invoke-static {v0, p0}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v0

    return v0
.end method

.method public static isChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 269
    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 264
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHT(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 289
    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLF(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 279
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowAlpha(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 249
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSP(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 294
    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpAlpha(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 244
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWSP(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 299
    sget-object v0, Lorg/zoolu/tools/Parser;->WSP:[C

    invoke-static {v0, p0}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v0

    return v0
.end method

.method public static isWSPCRLF(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 304
    sget-object v0, Lorg/zoolu/tools/Parser;->WSPCRLF:[C

    invoke-static {v0, p0}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getChar()C
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 5

    .prologue
    .line 555
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 556
    .local v0, "end":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/zoolu/tools/Parser;->isCRLF(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "line":Ljava/lang/String;
    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 561
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 562
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    const-string v3, "\r\n"

    iget v4, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 563
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 567
    :cond_1
    :goto_1
    return-object v1

    .line 565
    :cond_2
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_1
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    return v0
.end method

.method public getRemainingString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 512
    .local v0, "begin":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/zoolu/tools/Parser;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    move v1, v0

    .line 515
    .local v1, "end":I
    :goto_1
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/zoolu/tools/Parser;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 517
    :cond_1
    iput v1, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 518
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 523
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 524
    .local v0, "start":I
    add-int v1, v0, p1

    iput v1, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 525
    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->getStringVector()Ljava/util/Vector;

    move-result-object v2

    .line 602
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 603
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 604
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_0
    return-object v0
.end method

.method public getStringUnquoted()Ljava/lang/String;
    .locals 5

    .prologue
    .line 636
    :goto_0
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/zoolu/tools/Parser;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 637
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_0

    .line 638
    :cond_0
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 639
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    iget v4, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 650
    :goto_1
    return-object v1

    .line 642
    :cond_1
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    const-string v3, "\""

    iget v4, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .local v0, "next_qmark":I
    if-lez v0, :cond_2

    .line 646
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "qtext":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_1

    .line 650
    .end local v0    # "next_qmark":I
    .end local v1    # "qtext":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getStringVector()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 594
    .local v0, "list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 595
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    return-object v0
.end method

.method public getWholeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getWord([C)Ljava/lang/String;
    .locals 3
    .param p1, "separators"    # [C

    .prologue
    .line 530
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 531
    .local v0, "begin":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p1, v2}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_0
    move v1, v0

    .line 534
    .local v1, "end":I
    :goto_1
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p1, v2}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v2

    if-nez v2, :cond_1

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    :cond_1
    iput v1, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 537
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getWordArray([C)[Ljava/lang/String;
    .locals 4
    .param p1, "separators"    # [C

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/Parser;->getWordVector([C)Ljava/util/Vector;

    move-result-object v2

    .line 584
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 585
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 586
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :cond_0
    return-object v0
.end method

.method public getWordSkippingQuoted([C)Ljava/lang/String;
    .locals 5
    .param p1, "separators"    # [C

    .prologue
    .line 615
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 616
    .local v0, "begin":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p1, v3}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    const/4 v2, 0x0

    .line 619
    .local v2, "inside_quoted_string":Z
    move v1, v0

    .line 621
    .local v1, "end":I
    :goto_1
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p1, v3}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_4

    .line 622
    :cond_1
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    .line 623
    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 624
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 623
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 626
    :cond_4
    iput v1, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 627
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getWordVector([C)Ljava/util/Vector;
    .locals 2
    .param p1, "separators"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 576
    .local v0, "list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    return-object v0
.end method

.method public goTo(C)Lorg/zoolu/tools/Parser;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 162
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 163
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    if-gez v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 165
    :cond_0
    return-object p0
.end method

.method public goTo(Ljava/lang/String;)Lorg/zoolu/tools/Parser;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 179
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    if-gez v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 181
    :cond_0
    return-object p0
.end method

.method public goTo([C)Lorg/zoolu/tools/Parser;
    .locals 1
    .param p1, "cc"    # [C

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/Parser;->indexOf([C)I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 171
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    if-gez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 173
    :cond_0
    return-object p0
.end method

.method public goTo([Ljava/lang/String;)Lorg/zoolu/tools/Parser;
    .locals 1
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/Parser;->indexOf([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 187
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    if-gez v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 189
    :cond_0
    return-object p0
.end method

.method public goToIgnoreCase(Ljava/lang/String;)Lorg/zoolu/tools/Parser;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/Parser;->indexOfIgnoreCase(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 195
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    if-gez v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 197
    :cond_0
    return-object p0
.end method

.method public goToIgnoreCase([Ljava/lang/String;)Lorg/zoolu/tools/Parser;
    .locals 1
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lorg/zoolu/tools/Parser;->indexOfIgnoreCase([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 203
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    if-gez v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 205
    :cond_0
    return-object p0
.end method

.method public goToNextLine()Lorg/zoolu/tools/Parser;
    .locals 3

    .prologue
    .line 210
    :goto_0
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/zoolu/tools/Parser;->isCRLF(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_0

    .line 213
    :cond_0
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    const-string v1, "\r\n"

    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 219
    :cond_1
    :goto_1
    return-object p0

    .line 217
    :cond_2
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_1
.end method

.method public goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 656
    const/4 v1, 0x0

    .line 659
    .local v1, "inside_quotes":Z
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->nextChar()C

    move-result v2

    if-ne v2, p1, :cond_0

    if-eqz v1, :cond_3

    .line 660
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->nextChar()C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 661
    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 662
    :cond_1
    :goto_1
    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/zoolu/tools/Parser;->index:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    throw v0

    .line 661
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 669
    :cond_3
    return-object p0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(C)I
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 333
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf([C)I
    .locals 5
    .param p1, "cc"    # [C

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "found":Z
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 344
    .local v0, "begin":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 345
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 346
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-char v4, p1, v2

    if-ne v3, v4, :cond_1

    .line 347
    const/4 v1, 0x1

    .line 350
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v3, v0, -0x1

    :goto_2
    return v3

    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public indexOf([Ljava/lang/String;)I
    .locals 5
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "found":Z
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 367
    .local v0, "begin":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 368
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 369
    iget-object v3, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    const/4 v1, 0x1

    .line 373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v3, v0, -0x1

    :goto_2
    return v3

    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public indexOfIgnoreCase(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 380
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-direct {v0, v1, v2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 381
    .local v0, "par":Lorg/zoolu/tools/Parser;
    :goto_0
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {v0, p1}, Lorg/zoolu/tools/Parser;->startsWithIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v1

    .line 387
    :goto_1
    return v1

    .line 385
    :cond_0
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 387
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public indexOfIgnoreCase([Ljava/lang/String;)I
    .locals 3
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    .line 395
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-direct {v0, v1, v2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 396
    .local v0, "par":Lorg/zoolu/tools/Parser;
    :goto_0
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v0, p1}, Lorg/zoolu/tools/Parser;->startsWithIgnoreCase([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v1

    .line 402
    :goto_1
    return v1

    .line 400
    :cond_0
    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 402
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public indexOfNextLine()I
    .locals 4

    .prologue
    .line 407
    new-instance v1, Lorg/zoolu/tools/Parser;

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-direct {v1, v2, v3}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 408
    .local v1, "par":Lorg/zoolu/tools/Parser;
    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->goToNextLine()Lorg/zoolu/tools/Parser;

    .line 409
    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v0

    .line 410
    .local v0, "i":I
    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public nextChar()C
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/tools/Parser;->charAt(I)C

    move-result v0

    return v0
.end method

.method public setPos(I)Lorg/zoolu/tools/Parser;
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 156
    iput p1, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 157
    return-object p0
.end method

.method public skipCRLF()Lorg/zoolu/tools/Parser;
    .locals 2

    .prologue
    .line 482
    :goto_0
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/zoolu/tools/Parser;->isCRLF(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_0

    .line 484
    :cond_0
    return-object p0
.end method

.method public skipChar()Lorg/zoolu/tools/Parser;
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 457
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 458
    :cond_0
    return-object p0
.end method

.method public skipChars([C)Lorg/zoolu/tools/Parser;
    .locals 2
    .param p1, "cc"    # [C

    .prologue
    .line 496
    :goto_0
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->nextChar()C

    move-result v0

    invoke-static {p1, v0}, Lorg/zoolu/tools/Parser;->isAnyOf([CC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_0

    .line 498
    :cond_0
    return-object p0
.end method

.method public skipN(I)Lorg/zoolu/tools/Parser;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 463
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 464
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    .line 466
    :cond_0
    return-object p0
.end method

.method public skipString()Lorg/zoolu/tools/Parser;
    .locals 0

    .prologue
    .line 503
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public skipWSP()Lorg/zoolu/tools/Parser;
    .locals 2

    .prologue
    .line 471
    :goto_0
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/zoolu/tools/Parser;->isSP(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_0

    .line 473
    :cond_0
    return-object p0
.end method

.method public skipWSPCRLF()Lorg/zoolu/tools/Parser;
    .locals 2

    .prologue
    .line 489
    :goto_0
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/zoolu/tools/Parser;->isWSPCRLF(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Parser;->index:I

    goto :goto_0

    .line 491
    :cond_0
    return-object p0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith([Ljava/lang/String;)Z
    .locals 4
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    aget-object v2, p1, v0

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    const/4 v1, 0x1

    .line 425
    :goto_1
    return v1

    .line 422
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public startsWithIgnoreCase(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 430
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lorg/zoolu/tools/Parser;->compareIgnoreCase(CC)I

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const/4 v1, 0x0

    .line 434
    :goto_1
    return v1

    .line 430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public startsWithIgnoreCase([Ljava/lang/String;)Z
    .locals 8
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 440
    const/4 v0, 0x1

    .line 441
    .local v0, "equal":Z
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget v5, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 442
    aget-object v5, p1, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v7, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lorg/zoolu/tools/Parser;->compareIgnoreCase(CC)I

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    :goto_2
    if-nez v0, :cond_2

    .line 446
    :cond_0
    if-eqz v0, :cond_3

    .line 449
    .end local v0    # "equal":Z
    .end local v2    # "k":I
    :goto_3
    return v3

    .restart local v0    # "equal":Z
    .restart local v2    # "k":I
    :cond_1
    move v0, v4

    .line 442
    goto :goto_2

    .line 441
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "equal":Z
    .end local v2    # "k":I
    :cond_4
    move v3, v4

    .line 449
    goto :goto_3
.end method

.method public subParser(I)Lorg/zoolu/tools/Parser;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 126
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/tools/Parser;->str:Ljava/lang/String;

    iget v2, p0, Lorg/zoolu/tools/Parser;->index:I

    iget v3, p0, Lorg/zoolu/tools/Parser;->index:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p0}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
