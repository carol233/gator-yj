.class public Lorg/zoolu/sip/provider/SipParser;
.super Lorg/zoolu/tools/Parser;
.source "SipParser.java"


# static fields
.field public static MARK:[C

.field public static SEPARATOR:[C

.field public static param_separators:[C

.field public static uri_separators:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/zoolu/sip/provider/SipParser;->MARK:[C

    .line 79
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/zoolu/sip/provider/SipParser;->SEPARATOR:[C

    .line 248
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/zoolu/sip/provider/SipParser;->uri_separators:[C

    .line 354
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/zoolu/sip/provider/SipParser;->param_separators:[C

    return-void

    .line 76
    nop

    :array_0
    .array-data 2
        0x2ds
        0x5fs
        0x2es
        0x21s
        0x7es
        0x2as
        0x27s
        0x7cs
    .end array-data

    .line 79
    :array_1
    .array-data 2
        0x20s
        0x9s
        0xds
        0xas
        0x28s
        0x29s
        0x3cs
        0x3es
        0x2cs
        0x3bs
        0x5cs
        0x22s
        0x2fs
        0x5bs
        0x5ds
        0x3fs
        0x3ds
        0x7bs
        0x7ds
    .end array-data

    .line 248
    nop

    :array_2
    .array-data 2
        0x20s
        0x3es
        0xas
        0xds
    .end array-data

    .line 354
    :array_3
    .array-data 2
        0x20s
        0x3ds
        0x3bs
        0x2cs
        0xas
        0xds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/StringBuffer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "i"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/StringBuffer;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/tools/Parser;)V
    .locals 2
    .param p1, "p"    # Lorg/zoolu/tools/Parser;

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/zoolu/tools/Parser;->getWholeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public static isMark(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 86
    sget-object v0, Lorg/zoolu/sip/provider/SipParser;->MARK:[C

    invoke-static {v0, p0}, Lorg/zoolu/sip/provider/SipParser;->isAnyOf([CC)Z

    move-result v0

    return v0
.end method

.method public static isSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 105
    sget-object v0, Lorg/zoolu/sip/provider/SipParser;->SEPARATOR:[C

    invoke-static {v0, p0}, Lorg/zoolu/sip/provider/SipParser;->isAnyOf([CC)Z

    move-result v0

    return v0
.end method

.method public static isUnreserved(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 91
    invoke-static {p0}, Lorg/zoolu/sip/provider/SipParser;->isAlphanum(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/zoolu/sip/provider/SipParser;->isMark(C)Z

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


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 342
    :try_start_0
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    invoke-static {v2, v3}, Lorg/zoolu/tools/DateFormat;->parseEEEddMMM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    .line 343
    .local v0, "d":Ljava/util/Date;
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    const-string v3, "GMT"

    iget v4, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/zoolu/sip/provider/SipParser;->index:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    return-object v0

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader()Lorg/zoolu/sip/header/Header;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 188
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v7

    if-nez v7, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v6

    .line 190
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 191
    .local v0, "begin":I
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->indexOfEOH()I

    move-result v2

    .line 192
    .local v2, "end":I
    sub-int v7, v2, v0

    invoke-virtual {p0, v7}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "header_str":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    .line 194
    const/16 v7, 0x3a

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 195
    .local v1, "colon":I
    if-ltz v1, :cond_0

    .line 197
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "hname":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "hvalue":Ljava/lang/String;
    new-instance v6, Lorg/zoolu/sip/header/Header;

    invoke-direct {v6, v4, v5}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;
    .locals 7
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 204
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/zoolu/sip/provider/SipParser;->indexOfHeader(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v5, v6}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;I)V

    .line 205
    .local v3, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v4

    .line 207
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/provider/SipParser;->skipN(I)Lorg/zoolu/tools/Parser;

    .line 208
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/provider/SipParser;->indexOf(C)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 209
    .local v0, "begin":I
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->indexOfEOH()I

    move-result v1

    .line 210
    .local v1, "end":I
    if-gt v0, v1, :cond_0

    .line 212
    iget-object v4, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "hvalue":Ljava/lang/String;
    iput v1, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 214
    new-instance v4, Lorg/zoolu/sip/header/Header;

    invoke-direct {v4, p1, v2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNameAddress()Lorg/zoolu/sip/address/NameAddress;
    .locals 6

    .prologue
    const/16 v5, 0x22

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "text":Ljava/lang/String;
    const/4 v3, 0x0

    .line 286
    .local v3, "url":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 287
    .local v0, "begin":I
    const-string v4, "<sip:"

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/provider/SipParser;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, "begin_url":I
    if-gez v1, :cond_1

    .line 293
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getSipURL()Lorg/zoolu/sip/address/SipURL;

    move-result-object v3

    .line 295
    if-nez v3, :cond_0

    .line 296
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/provider/SipParser;->setPos(I)Lorg/zoolu/tools/Parser;

    .line 297
    new-instance v3, Lorg/zoolu/sip/address/SipURL;

    .end local v3    # "url":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v3    # "url":Lorg/zoolu/sip/address/SipURL;
    :cond_0
    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v4, v3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    .line 311
    :goto_0
    return-object v4

    .line 301
    :cond_1
    sub-int v4, v1, v0

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getSipURL()Lorg/zoolu/sip/address/SipURL;

    move-result-object v3

    .line 303
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_2

    .line 305
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 308
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 309
    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v4, v3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    goto :goto_0

    .line 311
    :cond_3
    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v4, v2, v3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 363
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    sget-object v1, Lorg/zoolu/sip/provider/SipParser;->param_separators:[C

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 366
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->nextChar()C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    .line 367
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 368
    sget-object v0, Lorg/zoolu/sip/provider/SipParser;->param_separators:[C

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/provider/SipParser;->getWordSkippingQuoted([C)Ljava/lang/String;

    move-result-object v0

    .line 376
    :cond_1
    return-object v0

    .line 372
    :cond_2
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/provider/SipParser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    .line 373
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Vector;
    .locals 3
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
    .line 385
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 386
    .local v1, "params":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    sget-object v2, Lorg/zoolu/sip/provider/SipParser;->param_separators:[C

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 389
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 390
    :cond_1
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/provider/SipParser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    .line 391
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 394
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getRequestLine()Lorg/zoolu/sip/header/RequestLine;
    .locals 6

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 223
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 224
    .local v0, "begin":I
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->indexOfEOH()I

    move-result v1

    .line 225
    .local v1, "end":I
    sub-int v4, v1, v0

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "request_uri":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    .line 227
    new-instance v4, Lorg/zoolu/sip/header/RequestLine;

    new-instance v5, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v5, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/zoolu/sip/provider/SipParser;->getSipURL()Lorg/zoolu/sip/address/SipURL;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/zoolu/sip/header/RequestLine;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    return-object v4
.end method

.method public getSipMessage()Lorg/zoolu/sip/message/Message;
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v6, 0x0

    .line 446
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipCRLF()Lorg/zoolu/tools/Parser;

    .line 449
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v7

    if-nez v7, :cond_1

    .line 450
    iget-object v5, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    .line 453
    .local v5, "text":Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/zoolu/sip/message/Message;

    invoke-direct {v4, v5}, Lorg/zoolu/sip/message/Message;-><init>(Ljava/lang/String;)V

    .line 454
    .local v4, "msg":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v4}, Lorg/zoolu/sip/message/Message;->hasContentLengthHeader()Z

    move-result v7

    if-nez v7, :cond_2

    .line 478
    :cond_0
    :goto_1
    return-object v6

    .line 452
    .end local v4    # "msg":Lorg/zoolu/sip/message/Message;
    .end local v5    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getRemainingString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_0

    .line 456
    .restart local v4    # "msg":Lorg/zoolu/sip/message/Message;
    :cond_2
    invoke-virtual {v4}, Lorg/zoolu/sip/message/Message;->getContentLengthHeader()Lorg/zoolu/sip/header/ContentLengthHeader;

    move-result-object v7

    invoke-virtual {v7}, Lorg/zoolu/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v1

    .line 459
    .local v1, "body_len":I
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 460
    .local v0, "begin":I
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->goToEndOfLastHeader()Lorg/zoolu/sip/provider/SipParser;

    .line 461
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 463
    invoke-virtual {p0, v8}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    .line 464
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 466
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/zoolu/tools/Parser;->goTo(C)Lorg/zoolu/tools/Parser;

    .line 468
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 470
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v7

    invoke-virtual {v7}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v2

    .line 473
    .local v2, "body_pos":I
    add-int v3, v2, v1

    .line 474
    .local v3, "end":I
    iget-object v7, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v3, v7, :cond_0

    .line 475
    iput v3, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 476
    new-instance v6, Lorg/zoolu/sip/message/Message;

    iget-object v7, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/zoolu/sip/message/Message;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSipURL()Lorg/zoolu/sip/address/SipURL;
    .locals 4

    .prologue
    .line 254
    const-string v3, "sip:"

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/provider/SipParser;->goTo(Ljava/lang/String;)Lorg/zoolu/tools/Parser;

    .line 255
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    const/4 v3, 0x0

    .line 264
    :goto_0
    return-object v3

    .line 257
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 258
    .local v0, "begin":I
    sget-object v3, Lorg/zoolu/sip/provider/SipParser;->uri_separators:[C

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/provider/SipParser;->indexOf([C)I

    move-result v1

    .line 259
    .local v1, "end":I
    if-gez v1, :cond_1

    .line 260
    iget-object v3, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 261
    :cond_1
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 264
    :cond_2
    new-instance v3, Lorg/zoolu/sip/address/SipURL;

    invoke-direct {v3, v2}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatusLine()Lorg/zoolu/sip/header/StatusLine;
    .locals 6

    .prologue
    .line 232
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "version":Ljava/lang/String;
    const-string v5, "SIP/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 234
    iget-object v5, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 235
    const/4 v5, 0x0

    .line 243
    :goto_0
    return-object v5

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 238
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getInt()I

    move-result v1

    .line 239
    .local v1, "code":I
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 240
    .local v0, "begin":I
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->indexOfEOH()I

    move-result v2

    .line 241
    .local v2, "end":I
    sub-int v5, v2, v0

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    .line 243
    new-instance v5, Lorg/zoolu/sip/header/StatusLine;

    invoke-direct {v5, v1, v3}, Lorg/zoolu/sip/header/StatusLine;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public goToBody()Lorg/zoolu/sip/provider/SipParser;
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 180
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->goToEndOfLastHeader()Lorg/zoolu/sip/provider/SipParser;

    .line 181
    invoke-virtual {p0, v1}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 182
    invoke-virtual {p0, v1}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 183
    return-object p0
.end method

.method public goToCommaHeaderSeparator()Lorg/zoolu/sip/provider/SipParser;
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->indexOfCommaHeaderSeparator()I

    move-result v0

    .line 430
    .local v0, "comma":I
    if-gez v0, :cond_0

    .line 431
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 434
    :goto_0
    return-object p0

    .line 433
    :cond_0
    iput v0, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    goto :goto_0
.end method

.method public goToEndOfLastHeader()Lorg/zoolu/sip/provider/SipParser;
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\r\n\r\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\n\n"

    aput-object v2, v0, v1

    .line 165
    .local v0, "delimiters":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/provider/SipParser;->goTo([Ljava/lang/String;)Lorg/zoolu/tools/Parser;

    .line 166
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    const-string v2, "\r\n"

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 175
    :cond_0
    :goto_0
    return-object p0

    .line 170
    :cond_1
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 171
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    goto :goto_0
.end method

.method public goToNextHeader()Lorg/zoolu/sip/provider/SipParser;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->indexOfEOH()I

    move-result v0

    iput v0, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 155
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    .line 156
    return-object p0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    sget-object v0, Lorg/zoolu/sip/provider/SipParser;->param_separators:[C

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const/4 v0, 0x1

    .line 406
    :goto_1
    return v0

    .line 402
    :cond_1
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/provider/SipParser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    .line 403
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 406
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public indexOfCommaHeaderSeparator()I
    .locals 4

    .prologue
    .line 413
    const/4 v2, 0x0

    .line 414
    .local v2, "inside_quoted_string":Z
    iget v1, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 415
    iget-object v3, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 416
    .local v0, "c":C
    const/16 v3, 0x22

    if-ne v0, v3, :cond_0

    .line 417
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 418
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2

    .line 421
    .end local v0    # "c":C
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 417
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 414
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "c":C
    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public indexOfEOH()I
    .locals 4

    .prologue
    .line 118
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    invoke-direct {v1, v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;I)V

    .line 120
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    :cond_0
    sget-object v2, Lorg/zoolu/sip/provider/SipParser;->CRLF:[C

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/provider/SipParser;->goTo([C)Lorg/zoolu/tools/Parser;

    .line 121
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 127
    :cond_1
    :goto_0
    return v0

    .line 124
    :cond_2
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 125
    .local v0, "end":I
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    .line 126
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->nextChar()C

    move-result v2

    invoke-static {v2}, Lorg/zoolu/sip/provider/SipParser;->isWSP(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public indexOfHeader(Ljava/lang/String;)I
    .locals 4
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 146
    .local v1, "p":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 147
    .local v0, "m":Ljava/util/regex/Matcher;
    iget v2, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 149
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method

.method public indexOfNextHeader()I
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    iget v2, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;I)V

    .line 134
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->goToNextHeader()Lorg/zoolu/sip/provider/SipParser;

    .line 135
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v1

    return v1
.end method

.method public indexOfSeparator()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/zoolu/sip/provider/SipParser;->index:I

    .line 111
    .local v0, "begin":I
    :goto_0
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/zoolu/sip/provider/SipParser;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/zoolu/sip/provider/SipParser;->isSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return v0
.end method
