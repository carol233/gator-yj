.class public abstract Lorg/zoolu/sip/message/BaseMessageOtp;
.super Lorg/zoolu/sip/message/BaseMessage;
.source "BaseMessageOtp.java"


# instance fields
.field protected body:Ljava/lang/String;

.field protected headers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/header/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected request_line:Lorg/zoolu/sip/header/RequestLine;

.field protected status_line:Lorg/zoolu/sip/header/StatusLine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;-><init>()V

    .line 57
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->init()V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;-><init>()V

    .line 76
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->init()V

    .line 77
    invoke-direct {p0, p1}, Lorg/zoolu/sip/message/BaseMessageOtp;->parseIt(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/UdpPacket;)V
    .locals 4
    .param p1, "packet"    # Lorg/zoolu/net/UdpPacket;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;-><init>()V

    .line 69
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->init()V

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getLength()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/zoolu/sip/message/BaseMessageOtp;->parseIt(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/message/BaseMessageOtp;)V
    .locals 3
    .param p1, "msg"    # Lorg/zoolu/sip/message/BaseMessageOtp;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;-><init>()V

    .line 82
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->init()V

    .line 83
    iget-object v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->remote_addr:Ljava/lang/String;

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->remote_addr:Ljava/lang/String;

    .line 84
    iget v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->remote_port:I

    iput v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->remote_port:I

    .line 85
    iget-object v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->transport_proto:Ljava/lang/String;

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->transport_proto:Ljava/lang/String;

    .line 86
    iget-object v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 88
    iget-object v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    .line 89
    iget-object v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    .line 90
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    iget-object v2, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p1, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;-><init>()V

    .line 63
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->init()V

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/zoolu/sip/message/BaseMessageOtp;->parseIt(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    .line 50
    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    .line 51
    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    .line 52
    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private parseIt(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v3, p1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, "par":Lorg/zoolu/sip/provider/SipParser;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "version":Ljava/lang/String;
    const-string v5, "SIP/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    .line 110
    :goto_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    .line 111
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getHeader()Lorg/zoolu/sip/header/Header;

    move-result-object v1

    .line 112
    .local v1, "h":Lorg/zoolu/sip/header/Header;
    :goto_1
    if-eqz v1, :cond_1

    .line 113
    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getHeader()Lorg/zoolu/sip/header/Header;

    move-result-object v1

    goto :goto_1

    .line 108
    .end local v1    # "h":Lorg/zoolu/sip/header/Header;
    :cond_0
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    goto :goto_0

    .line 116
    .restart local v1    # "h":Lorg/zoolu/sip/header/Header;
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->getContentLengthHeader()Lorg/zoolu/sip/header/ContentLengthHeader;

    move-result-object v0

    .line 117
    .local v0, "clh":Lorg/zoolu/sip/header/ContentLengthHeader;
    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {v0}, Lorg/zoolu/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v2

    .line 119
    .local v2, "len":I
    invoke-virtual {v3, v2}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    .line 125
    .end local v2    # "len":I
    :cond_2
    :goto_2
    return-void

    .line 120
    :cond_3
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->getContentTypeHeader()Lorg/zoolu/sip/header/ContentTypeHeader;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 121
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getRemainingString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    .line 122
    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 123
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public addHeader(Lorg/zoolu/sip/header/Header;Z)V
    .locals 2
    .param p1, "header"    # Lorg/zoolu/sip/header/Header;
    .param p2, "top"    # Z

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 273
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addHeaderAfter(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V
    .locals 2
    .param p1, "new_header"    # Lorg/zoolu/sip/header/Header;
    .param p2, "refer_hname"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->indexOfHeader(Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 336
    :goto_0
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 337
    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public addHeaderBefore(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V
    .locals 2
    .param p1, "new_header"    # Lorg/zoolu/sip/header/Header;
    .param p2, "refer_hname"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-virtual {p0, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->indexOfHeader(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 304
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 305
    return-void
.end method

.method public addHeaders(Ljava/util/Vector;Z)V
    .locals 3
    .param p2, "top"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/header/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "headers":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 281
    if-eqz p2, :cond_0

    .line 282
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 280
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 285
    :cond_1
    return-void
.end method

.method public addHeaders(Lorg/zoolu/sip/header/MultipleHeader;Z)V
    .locals 1
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "top"    # Z

    .prologue
    .line 289
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->isCommaSeparated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toHeader()Lorg/zoolu/sip/header/Header;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->addHeader(Lorg/zoolu/sip/header/Header;Z)V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getHeaders()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->addHeaders(Ljava/util/Vector;Z)V

    goto :goto_0
.end method

.method public addHeadersAfter(Lorg/zoolu/sip/header/MultipleHeader;Ljava/lang/String;)V
    .locals 6
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "refer_hname"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->isCommaSeparated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toHeader()Lorg/zoolu/sip/header/Header;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->addHeaderAfter(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p0, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->indexOfHeader(Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 350
    add-int/lit8 v1, v1, 0x1

    .line 353
    :goto_0
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getHeaders()Ljava/util/Vector;

    move-result-object v0

    .line 354
    .local v0, "hs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 355
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    add-int v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    .end local v0    # "hs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    .end local v2    # "k":I
    :cond_2
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0
.end method

.method public addHeadersBefore(Lorg/zoolu/sip/header/MultipleHeader;Ljava/lang/String;)V
    .locals 6
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "refer_hname"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->isCommaSeparated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toHeader()Lorg/zoolu/sip/header/Header;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->addHeaderBefore(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0, p2}, Lorg/zoolu/sip/message/BaseMessageOtp;->indexOfHeader(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 318
    const/4 v1, 0x0

    .line 319
    :cond_2
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getHeaders()Ljava/util/Vector;

    move-result-object v0

    .line 320
    .local v0, "hs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 321
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    add-int v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->getContentTypeHeader()Lorg/zoolu/sip/header/ContentTypeHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;
    .locals 2
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessageOtp;->indexOfHeader(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 250
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/header/Header;

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "hname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/header/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 259
    .local v2, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 260
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sip/header/Header;

    .line 261
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 259
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "h":Lorg/zoolu/sip/header/Header;
    :cond_1
    return-object v2
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getRequestLine()Lorg/zoolu/sip/header/RequestLine;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    return-object v0
.end method

.method public getStatusLine()Lorg/zoolu/sip/header/StatusLine;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasRequestLine()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasStatusLine()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexOfHeader(Ljava/lang/String;)I
    .locals 3
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 234
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sip/header/Header;

    .line 235
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    .end local v0    # "h":Lorg/zoolu/sip/header/Header;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 233
    .restart local v0    # "h":Lorg/zoolu/sip/header/Header;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "h":Lorg/zoolu/sip/header/Header;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isRequest()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllHeaders(Ljava/lang/String;)V
    .locals 3
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 382
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sip/header/Header;

    .line 383
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 385
    add-int/lit8 v1, v1, -0x1

    .line 381
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "h":Lorg/zoolu/sip/header/Header;
    :cond_1
    return-void
.end method

.method public removeBody()V
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->removeContentLengthHeader()V

    .line 476
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->removeContentTypeHeader()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    .line 478
    return-void
.end method

.method protected removeFirstLine()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->removeRequestLine()V

    .line 228
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->removeStatusLine()V

    .line 229
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessageOtp;->removeHeader(Ljava/lang/String;Z)V

    .line 362
    return-void
.end method

.method public removeHeader(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "first"    # Z

    .prologue
    .line 366
    const/4 v2, -0x1

    .line 367
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 368
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sip/header/Header;

    .line 369
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    move v2, v1

    .line 371
    if-eqz p2, :cond_0

    .line 372
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 367
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "h":Lorg/zoolu/sip/header/Header;
    :cond_1
    if-ltz v2, :cond_2

    .line 376
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 377
    :cond_2
    return-void
.end method

.method public removeRequestLine()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    .line 187
    return-void
.end method

.method public removeStatusLine()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    .line 220
    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content_type"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessageOtp;->removeBody()V

    .line 454
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    new-instance v0, Lorg/zoolu/sip/header/ContentTypeHeader;

    invoke-direct {v0, p1}, Lorg/zoolu/sip/header/ContentTypeHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessageOtp;->setContentTypeHeader(Lorg/zoolu/sip/header/ContentTypeHeader;)V

    .line 456
    new-instance v0, Lorg/zoolu/sip/header/ContentLengthHeader;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/ContentLengthHeader;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessageOtp;->setContentLengthHeader(Lorg/zoolu/sip/header/ContentLengthHeader;)V

    .line 457
    iput-object p2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Lorg/zoolu/sip/header/ContentLengthHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/ContentLengthHeader;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessageOtp;->setContentLengthHeader(Lorg/zoolu/sip/header/ContentLengthHeader;)V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHeader(Lorg/zoolu/sip/header/Header;)V
    .locals 5
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 395
    const/4 v0, 0x1

    .line 396
    .local v0, "first":Z
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "hname":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 398
    iget-object v4, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/header/Header;

    .line 399
    .local v1, "h":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v1}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    if-eqz v0, :cond_1

    .line 401
    iget-object v4, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v4, v1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 402
    const/4 v0, 0x0

    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_1
    iget-object v4, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 405
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 409
    .end local v1    # "h":Lorg/zoolu/sip/header/Header;
    :cond_2
    if-eqz v0, :cond_3

    .line 410
    iget-object v4, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 411
    :cond_3
    return-void
.end method

.method public setHeaders(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 9
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 415
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->isCommaSeparated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 416
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toHeader()Lorg/zoolu/sip/header/Header;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/zoolu/sip/message/BaseMessageOtp;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 436
    :cond_0
    return-void

    .line 418
    :cond_1
    const/4 v0, 0x1

    .line 419
    .local v0, "first":Z
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getName()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "hname":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 421
    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/header/Header;

    .line 422
    .local v1, "h":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v1}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 423
    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getHeaders()Ljava/util/Vector;

    move-result-object v3

    .line 425
    .local v3, "hs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 426
    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    add-int v8, v4, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 425
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 427
    :cond_2
    const/4 v0, 0x0

    .line 428
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v4, v6

    .line 420
    .end local v3    # "hs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    .end local v5    # "k":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    :cond_4
    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 431
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/zoolu/sip/message/BaseMessageOtp;->parseIt(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setRequestLine(Lorg/zoolu/sip/header/RequestLine;)V
    .locals 0
    .param p1, "rl"    # Lorg/zoolu/sip/header/RequestLine;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    .line 182
    return-void
.end method

.method public setStatusLine(Lorg/zoolu/sip/header/StatusLine;)V
    .locals 0
    .param p1, "sl"    # Lorg/zoolu/sip/header/StatusLine;

    .prologue
    .line 214
    iput-object p1, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v1, "str":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->request_line:Lorg/zoolu/sip/header/RequestLine;

    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 135
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/header/Header;

    invoke-virtual {v2}, Lorg/zoolu/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->status_line:Lorg/zoolu/sip/header/StatusLine;

    invoke-virtual {v2}, Lorg/zoolu/sip/header/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    .restart local v0    # "i":I
    :cond_2
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessageOtp;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
