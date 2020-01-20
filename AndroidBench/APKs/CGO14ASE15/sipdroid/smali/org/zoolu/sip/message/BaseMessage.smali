.class public abstract Lorg/zoolu/sip/message/BaseMessage;
.super Ljava/lang/Object;
.source "BaseMessage.java"


# static fields
.field protected static MAX_PKT_SIZE:I = 0x0

.field public static final PROTO_SCTP:Ljava/lang/String; = "sctp"

.field public static final PROTO_TCP:Ljava/lang/String; = "tcp"

.field public static final PROTO_TLS:Ljava/lang/String; = "tls"

.field public static final PROTO_UDP:Ljava/lang/String; = "udp"


# instance fields
.field protected connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

.field private message:Ljava/lang/String;

.field protected remote_addr:Ljava/lang/String;

.field protected remote_port:I

.field protected transport_proto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x1f40

    sput v0, Lorg/zoolu/sip/message/BaseMessage;->MAX_PKT_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;->init()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;->init()V

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/UdpPacket;)V
    .locals 4
    .param p1, "packet"    # Lorg/zoolu/net/UdpPacket;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;->init()V

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/zoolu/net/UdpPacket;->getLength()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/message/BaseMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/zoolu/sip/message/BaseMessage;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-object v0, p1, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lorg/zoolu/sip/message/BaseMessage;->remote_addr:Ljava/lang/String;

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_addr:Ljava/lang/String;

    .line 103
    iget v0, p1, Lorg/zoolu/sip/message/BaseMessage;->remote_port:I

    iput v0, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_port:I

    .line 104
    iget-object v0, p1, Lorg/zoolu/sip/message/BaseMessage;->transport_proto:Ljava/lang/String;

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->transport_proto:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lorg/zoolu/sip/message/BaseMessage;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 107
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;->init()V

    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_addr:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_port:I

    .line 70
    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->transport_proto:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 72
    return-void
.end method


# virtual methods
.method public addContactHeader(Lorg/zoolu/sip/header/ContactHeader;Z)V
    .locals 0
    .param p1, "ch"    # Lorg/zoolu/sip/header/ContactHeader;
    .param p2, "top"    # Z

    .prologue
    .line 740
    invoke-virtual {p0, p1, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeader(Lorg/zoolu/sip/header/Header;Z)V

    .line 741
    return-void
.end method

.method public addContacts(Lorg/zoolu/sip/header/MultipleHeader;Z)V
    .locals 0
    .param p1, "contacts"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "top"    # Z

    .prologue
    .line 761
    invoke-virtual {p0, p1, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Lorg/zoolu/sip/header/MultipleHeader;Z)V

    .line 762
    return-void
.end method

.method public addHeader(Lorg/zoolu/sip/header/Header;Z)V
    .locals 1
    .param p1, "header"    # Lorg/zoolu/sip/header/Header;
    .param p2, "top"    # Z

    .prologue
    .line 442
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Ljava/lang/String;Z)V

    .line 443
    return-void
.end method

.method public addHeaderAfter(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V
    .locals 1
    .param p1, "new_header"    # Lorg/zoolu/sip/header/Header;
    .param p2, "refer_header"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeadersAfter(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public addHeaderBefore(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V
    .locals 1
    .param p1, "new_header"    # Lorg/zoolu/sip/header/Header;
    .param p2, "refer_header"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeadersBefore(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method protected addHeaders(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 497
    return-void
.end method

.method protected addHeaders(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "top"    # Z

    .prologue
    .line 464
    if-eqz p2, :cond_3

    .line 465
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasRequestLine()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasStatusLine()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    :cond_0
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 467
    .local v4, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->goToNextHeader()Lorg/zoolu/sip/provider/SipParser;

    .line 468
    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v2

    .line 485
    .end local v4    # "par":Lorg/zoolu/sip/provider/SipParser;
    .local v2, "i":I
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "head":Ljava/lang/String;
    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "tail":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "new_message":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    iput-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 490
    return-void

    .line 470
    .end local v1    # "head":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "new_message":Ljava/lang/String;
    .end local v5    # "tail":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    goto :goto_0

    .line 472
    .end local v2    # "i":I
    :cond_3
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 474
    .restart local v4    # "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->goToEndOfLastHeader()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/sip/provider/SipParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v2

    .line 475
    .restart local v2    # "i":I
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    .end local v4    # "par":Lorg/zoolu/sip/provider/SipParser;
    iget-object v6, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 477
    .restart local v4    # "par":Lorg/zoolu/sip/provider/SipParser;
    const-string v6, "Content-Length"

    invoke-virtual {v4, v6}, Lorg/zoolu/sip/provider/SipParser;->indexOfHeader(Ljava/lang/String;)I

    move-result v0

    .line 478
    .local v0, "aux":I
    if-ge v0, v2, :cond_4

    .line 479
    move v2, v0

    .line 481
    :cond_4
    const-string v6, "Content-Type"

    invoke-virtual {v4, v6}, Lorg/zoolu/sip/provider/SipParser;->indexOfHeader(Ljava/lang/String;)I

    move-result v0

    .line 482
    if-ge v0, v2, :cond_1

    .line 483
    move v2, v0

    goto :goto_0
.end method

.method public addHeaders(Ljava/util/Vector;Z)V
    .locals 4
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
    .line 447
    .local p1, "headers":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const-string v1, ""

    .line 448
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/header/Header;

    invoke-virtual {v2}, Lorg/zoolu/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0, v1, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Ljava/lang/String;Z)V

    .line 451
    return-void
.end method

.method public addHeaders(Lorg/zoolu/sip/header/MultipleHeader;Z)V
    .locals 1
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "top"    # Z

    .prologue
    .line 455
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Ljava/lang/String;Z)V

    .line 456
    return-void
.end method

.method protected addHeadersAfter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "refer_header"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 558
    invoke-virtual {p0, p2}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    invoke-virtual {p0, p1, v4}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Ljava/lang/String;Z)V

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1, p2}, Lorg/zoolu/sip/provider/SipParser;->goTo(Ljava/lang/String;)Lorg/zoolu/tools/Parser;

    .line 563
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->indexOfNextHeader()I

    move-result v0

    .line 564
    .local v0, "here":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public addHeadersAfter(Lorg/zoolu/sip/header/MultipleHeader;Ljava/lang/String;)V
    .locals 1
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "refer_header"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeadersAfter(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method protected addHeadersBefore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "refer_header"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-virtual {p0, p2}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Ljava/lang/String;Z)V

    .line 532
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 527
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1, p2}, Lorg/zoolu/sip/provider/SipParser;->goTo(Ljava/lang/String;)Lorg/zoolu/tools/Parser;

    .line 528
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 529
    .local v0, "here":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public addHeadersBefore(Lorg/zoolu/sip/header/MultipleHeader;Ljava/lang/String;)V
    .locals 1
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "refer_header"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeadersBefore(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public addRecordRouteHeader(Lorg/zoolu/sip/header/RecordRouteHeader;)V
    .locals 1
    .param p1, "rr"    # Lorg/zoolu/sip/header/RecordRouteHeader;

    .prologue
    .line 888
    const-string v0, "CSeq"

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addHeaderAfter(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public addRecordRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 1
    .param p1, "routes"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 893
    const-string v0, "CSeq"

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addHeadersAfter(Lorg/zoolu/sip/header/MultipleHeader;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public addRouteHeader(Lorg/zoolu/sip/header/RouteHeader;)V
    .locals 1
    .param p1, "h"    # Lorg/zoolu/sip/header/RouteHeader;

    .prologue
    .line 835
    const-string v0, "Via"

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addHeaderAfter(Lorg/zoolu/sip/header/Header;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public addRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 1
    .param p1, "routes"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 840
    const-string v0, "Via"

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addHeadersAfter(Lorg/zoolu/sip/header/MultipleHeader;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public addViaHeader(Lorg/zoolu/sip/header/ViaHeader;)V
    .locals 1
    .param p1, "vh"    # Lorg/zoolu/sip/header/ViaHeader;

    .prologue
    .line 783
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addHeader(Lorg/zoolu/sip/header/Header;Z)V

    .line 784
    return-void
.end method

.method public addVias(Lorg/zoolu/sip/header/MultipleHeader;Z)V
    .locals 0
    .param p1, "vias"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p2, "top"    # Z

    .prologue
    .line 813
    invoke-virtual {p0, p1, p2}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Lorg/zoolu/sip/header/MultipleHeader;Z)V

    .line 814
    return-void
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public createsDialog()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v2

    .line 241
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "method":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lorg/zoolu/sip/message/SipMethods;->dialog_methods:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 243
    sget-object v3, Lorg/zoolu/sip/message/SipMethods;->dialog_methods:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    const/4 v2, 0x1

    goto :goto_0

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAcceptHeader()Lorg/zoolu/sip/header/AcceptHeader;
    .locals 2

    .prologue
    .line 1095
    const-string v1, "Accept"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1096
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1097
    const/4 v1, 0x0

    .line 1099
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/AcceptHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/AcceptHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getAlertInfoHeader()Lorg/zoolu/sip/header/AlertInfoHeader;
    .locals 2

    .prologue
    .line 1119
    const-string v1, "Alert-Info"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1120
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1121
    const/4 v1, 0x0

    .line 1123
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/AlertInfoHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/AlertInfoHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getAllowHeader()Lorg/zoolu/sip/header/AllowHeader;
    .locals 2

    .prologue
    .line 1143
    const-string v1, "Allow"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1144
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1145
    const/4 v1, 0x0

    .line 1147
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/AllowHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/AllowHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getAuthenticationInfoHeader()Lorg/zoolu/sip/header/AuthenticationInfoHeader;
    .locals 2

    .prologue
    .line 1307
    const-string v1, "Authentication-Info"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1308
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1309
    const/4 v1, 0x0

    .line 1311
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/AuthenticationInfoHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/AuthenticationInfoHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getAuthorizationHeader()Lorg/zoolu/sip/header/AuthorizationHeader;
    .locals 2

    .prologue
    .line 1331
    const-string v1, "Authorization"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1332
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1333
    const/4 v1, 0x0

    .line 1335
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/AuthorizationHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/AuthorizationHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1264
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasBody()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1265
    const/4 v3, 0x0

    .line 1281
    :goto_0
    return-object v3

    .line 1266
    :cond_0
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    iget-object v4, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->goToBody()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 1270
    .local v0, "begin":I
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasContentLengthHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1271
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getContentLengthHeader()Lorg/zoolu/sip/header/ContentLengthHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v2

    .line 1276
    .local v2, "len":I
    :goto_1
    add-int v1, v0, v2

    .line 1277
    .local v1, "end":I
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 1279
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 1281
    :cond_1
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1274
    .end local v1    # "end":I
    .end local v2    # "len":I
    :cond_2
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v0

    .restart local v2    # "len":I
    goto :goto_1
.end method

.method public getBodyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getContentTypeHeader()Lorg/zoolu/sip/header/ContentTypeHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;
    .locals 2

    .prologue
    .line 941
    const-string v1, "CSeq"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 942
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 943
    const/4 v1, 0x0

    .line 945
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/CSeqHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/CSeqHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;
    .locals 2

    .prologue
    .line 970
    const-string v1, "Call-ID"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 971
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 972
    const/4 v1, 0x0

    .line 974
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/CallIdHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/CallIdHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    return-object v0
.end method

.method public getContactHeader()Lorg/zoolu/sip/header/ContactHeader;
    .locals 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getContacts()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 733
    .local v0, "mh":Lorg/zoolu/sip/header/MultipleHeader;
    if-nez v0, :cond_0

    .line 734
    const/4 v1, 0x0

    .line 735
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ContactHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getTop()Lorg/zoolu/sip/header/Header;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/header/ContactHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getContacts()Lorg/zoolu/sip/header/MultipleHeader;
    .locals 2

    .prologue
    .line 752
    const-string v1, "Contact"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeaders(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 753
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 754
    new-instance v1, Lorg/zoolu/sip/header/MultipleHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/util/Vector;)V

    .line 756
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentLengthHeader()Lorg/zoolu/sip/header/ContentLengthHeader;
    .locals 2

    .prologue
    .line 1210
    const-string v1, "Content-Length"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1211
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1212
    const/4 v1, 0x0

    .line 1214
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ContentLengthHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ContentLengthHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getContentTypeHeader()Lorg/zoolu/sip/header/ContentTypeHeader;
    .locals 2

    .prologue
    .line 1186
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1187
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1188
    const/4 v1, 0x0

    .line 1190
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ContentTypeHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ContentTypeHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getDateHeader()Lorg/zoolu/sip/header/DateHeader;
    .locals 2

    .prologue
    .line 1013
    const-string v1, "Date"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1014
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1015
    const/4 v1, 0x0

    .line 1017
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/DateHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/DateHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getDialogId()Lorg/zoolu/sip/provider/DialogIdentifier;
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "call_id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "local_tag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "remote_tag":Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-direct {v3, v0, v1, v2}, Lorg/zoolu/sip/provider/DialogIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 178
    .end local v1    # "local_tag":Ljava/lang/String;
    .end local v2    # "remote_tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "local_tag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "remote_tag":Ljava/lang/String;
    goto :goto_0
.end method

.method public getExpiresHeader()Lorg/zoolu/sip/header/ExpiresHeader;
    .locals 2

    .prologue
    .line 1162
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1163
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1164
    const/4 v1, 0x0

    .line 1166
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ExpiresHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ExpiresHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/RequestLine;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromHeader()Lorg/zoolu/sip/header/FromHeader;
    .locals 2

    .prologue
    .line 679
    const-string v1, "From"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 680
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 681
    const/4 v1, 0x0

    .line 683
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/FromHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/FromHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;
    .locals 2
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0, p1}, Lorg/zoolu/sip/provider/SipParser;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v1

    return-object v1
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
    .line 428
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 429
    .local v2, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    :goto_0
    invoke-virtual {v1, p1}, Lorg/zoolu/sip/provider/SipParser;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    :cond_0
    return-object v2
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getMaxForwardsHeader()Lorg/zoolu/sip/header/MaxForwardsHeader;
    .locals 2

    .prologue
    .line 655
    const-string v1, "Max-Forwards"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 656
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 657
    const/4 v1, 0x0

    .line 659
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/MaxForwardsHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/MaxForwardsHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getMethodId()Lorg/zoolu/sip/provider/MethodIdentifier;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "method":Ljava/lang/String;
    new-instance v1, Lorg/zoolu/sip/provider/MethodIdentifier;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/provider/MethodIdentifier;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getProxyAuthenticateHeader()Lorg/zoolu/sip/header/ProxyAuthenticateHeader;
    .locals 2

    .prologue
    .line 1379
    const-string v1, "Proxy-Authenticate"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1380
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1381
    const/4 v1, 0x0

    .line 1383
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getProxyAuthorizationHeader()Lorg/zoolu/sip/header/ProxyAuthorizationHeader;
    .locals 2

    .prologue
    .line 1403
    const-string v1, "Proxy-Authorization"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1404
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1405
    const/4 v1, 0x0

    .line 1407
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ProxyAuthorizationHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ProxyAuthorizationHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getRecordRouteHeader()Lorg/zoolu/sip/header/RecordRouteHeader;
    .locals 3

    .prologue
    .line 900
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRecordRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 901
    .local v0, "mh":Lorg/zoolu/sip/header/MultipleHeader;
    if-nez v0, :cond_0

    .line 902
    const/4 v1, 0x0

    .line 903
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/RecordRouteHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getTop()Lorg/zoolu/sip/header/Header;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/header/RecordRouteHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getRecordRoutes()Lorg/zoolu/sip/header/MultipleHeader;
    .locals 2

    .prologue
    .line 908
    const-string v1, "Record-Route"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeaders(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 909
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 910
    new-instance v1, Lorg/zoolu/sip/header/MultipleHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/util/Vector;)V

    .line 912
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_port:I

    return v0
.end method

.method public getRequestLine()Lorg/zoolu/sip/header/RequestLine;
    .locals 5

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    const/4 v3, 0x0

    .line 302
    :goto_0
    return-object v3

    .line 298
    :cond_0
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 301
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->indexOfEOH()I

    move-result v3

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/zoolu/sip/provider/SipParser;->subParser(I)Lorg/zoolu/tools/Parser;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Lorg/zoolu/tools/Parser;)V

    .line 302
    .end local v1    # "par":Lorg/zoolu/sip/provider/SipParser;
    .local v2, "par":Lorg/zoolu/sip/provider/SipParser;
    new-instance v3, Lorg/zoolu/sip/header/RequestLine;

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->getSipURL()Lorg/zoolu/sip/address/SipURL;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/zoolu/sip/header/RequestLine;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    goto :goto_0
.end method

.method public getRouteHeader()Lorg/zoolu/sip/header/RouteHeader;
    .locals 3

    .prologue
    .line 847
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 848
    .local v0, "mh":Lorg/zoolu/sip/header/MultipleHeader;
    if-nez v0, :cond_0

    .line 849
    const/4 v1, 0x0

    .line 850
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/RouteHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getTop()Lorg/zoolu/sip/header/Header;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/header/RouteHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getRoutes()Lorg/zoolu/sip/header/MultipleHeader;
    .locals 2

    .prologue
    .line 855
    const-string v1, "Route"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeaders(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 856
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 857
    new-instance v1, Lorg/zoolu/sip/header/MultipleHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/util/Vector;)V

    .line 859
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServerHeader()Lorg/zoolu/sip/header/ServerHeader;
    .locals 2

    .prologue
    .line 1066
    const-string v1, "Server"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1067
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1068
    const/4 v1, 0x0

    .line 1070
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ServerHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ServerHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getStatusLine()Lorg/zoolu/sip/header/StatusLine;
    .locals 6

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isResponse()Z

    move-result v5

    if-nez v5, :cond_0

    .line 352
    const/4 v5, 0x0

    .line 360
    :goto_0
    return-object v5

    .line 354
    :cond_0
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 355
    .local v3, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 356
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getInt()I

    move-result v1

    .line 357
    .local v1, "code":I
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v0

    .line 358
    .local v0, "begin":I
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->indexOfEOH()I

    move-result v2

    .line 359
    .local v2, "end":I
    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "reason":Ljava/lang/String;
    new-instance v5, Lorg/zoolu/sip/header/StatusLine;

    invoke-direct {v5, v1, v4}, Lorg/zoolu/sip/header/StatusLine;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getSubjectHeader()Lorg/zoolu/sip/header/SubjectHeader;
    .locals 2

    .prologue
    .line 994
    const-string v1, "Subject"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 995
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 996
    const/4 v1, 0x0

    .line 998
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/SubjectHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/SubjectHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getToHeader()Lorg/zoolu/sip/header/ToHeader;
    .locals 2

    .prologue
    .line 703
    const-string v1, "To"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 704
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 705
    const/4 v1, 0x0

    .line 707
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ToHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ToHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;
    .locals 9

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "call_id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v8

    .line 188
    .local v8, "top_via":Lorg/zoolu/sip/header/ViaHeader;
    const/4 v6, 0x0

    .line 189
    .local v6, "branch":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/zoolu/sip/header/ViaHeader;->hasBranch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v8}, Lorg/zoolu/sip/header/ViaHeader;->getBranch()Ljava/lang/String;

    move-result-object v6

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v7

    .line 193
    .local v7, "cseqh":Lorg/zoolu/sip/header/CSeqHeader;
    invoke-virtual {v7}, Lorg/zoolu/sip/header/CSeqHeader;->getSequenceNumber()J

    move-result-wide v2

    .line 194
    .local v2, "seqn":J
    invoke-virtual {v7}, Lorg/zoolu/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "method":Ljava/lang/String;
    new-instance v0, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransactionMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransportProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->transport_proto:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentHeader()Lorg/zoolu/sip/header/UserAgentHeader;
    .locals 2

    .prologue
    .line 1042
    const-string v1, "User-Agent"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1043
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1044
    const/4 v1, 0x0

    .line 1046
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/UserAgentHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/UserAgentHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getViaHeader()Lorg/zoolu/sip/header/ViaHeader;
    .locals 3

    .prologue
    .line 789
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getVias()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 790
    .local v0, "mh":Lorg/zoolu/sip/header/MultipleHeader;
    if-nez v0, :cond_0

    .line 791
    const/4 v1, 0x0

    .line 792
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ViaHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getTop()Lorg/zoolu/sip/header/Header;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/header/ViaHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getVias()Lorg/zoolu/sip/header/MultipleHeader;
    .locals 2

    .prologue
    .line 804
    const-string v1, "Via"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeaders(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 805
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 806
    new-instance v1, Lorg/zoolu/sip/header/MultipleHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/util/Vector;)V

    .line 808
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWwwAuthenticateHeader()Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    .locals 2

    .prologue
    .line 1355
    const-string v1, "WWW-Authenticate"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 1356
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 1357
    const/4 v1, 0x0

    .line 1359
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/WwwAuthenticateHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public hasAcceptHeader()Z
    .locals 1

    .prologue
    .line 1085
    const-string v0, "Accept"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAlertInfoHeader()Z
    .locals 1

    .prologue
    .line 1109
    const-string v0, "Alert-Info"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAllowHeader()Z
    .locals 1

    .prologue
    .line 1133
    const-string v0, "Allow"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAuthenticationInfoHeader()Z
    .locals 1

    .prologue
    .line 1297
    const-string v0, "Authentication-Info"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAuthorizationHeader()Z
    .locals 1

    .prologue
    .line 1321
    const-string v0, "Authorization"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 1229
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasContentLengthHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getContentLengthHeader()Lorg/zoolu/sip/header/ContentLengthHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1232
    :goto_0
    return v0

    .line 1230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1232
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasContentTypeHeader()Z

    move-result v0

    goto :goto_0
.end method

.method public hasCSeqHeader()Z
    .locals 1

    .prologue
    .line 936
    const-string v0, "CSeq"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCallIdHeader()Z
    .locals 1

    .prologue
    .line 960
    const-string v0, "Call-ID"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContactHeader()Z
    .locals 1

    .prologue
    .line 722
    const-string v0, "Contact"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContentLengthHeader()Z
    .locals 1

    .prologue
    .line 1205
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContentTypeHeader()Z
    .locals 1

    .prologue
    .line 1181
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasDateHeader()Z
    .locals 1

    .prologue
    .line 1008
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExpiresHeader()Z
    .locals 1

    .prologue
    .line 1157
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasFromHeader()Z
    .locals 1

    .prologue
    .line 674
    const-string v0, "From"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 408
    .local v0, "hd":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 409
    const/4 v1, 0x0

    .line 411
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasMaxForwardsHeader()Z
    .locals 1

    .prologue
    .line 650
    const-string v0, "Max-Forwards"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasProxyAuthenticateHeader()Z
    .locals 1

    .prologue
    .line 1369
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasProxyAuthorizationHeader()Z
    .locals 1

    .prologue
    .line 1393
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRecordRouteHeader()Z
    .locals 1

    .prologue
    .line 883
    const-string v0, "Record-Route"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasRequestLine()Z
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest()Z

    move-result v0

    return v0
.end method

.method public hasRouteHeader()Z
    .locals 1

    .prologue
    .line 830
    const-string v0, "Route"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasServerHeader()Z
    .locals 1

    .prologue
    .line 1056
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasStatusLine()Z
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isResponse()Z

    move-result v0

    return v0
.end method

.method public hasSubjectHeader()Z
    .locals 1

    .prologue
    .line 984
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasToHeader()Z
    .locals 1

    .prologue
    .line 698
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasUserAgentHeader()Z
    .locals 1

    .prologue
    .line 1032
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasViaHeader()Z
    .locals 1

    .prologue
    .line 778
    const-string v0, "Via"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasWwwAuthenticateHeader()Z
    .locals 1

    .prologue
    .line 1345
    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAck()Z
    .locals 1

    .prologue
    .line 271
    const-string v0, "ACK"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBye()Z
    .locals 1

    .prologue
    .line 266
    const-string v0, "BYE"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 261
    const-string v0, "CANCEL"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInfo()Z
    .locals 1

    .prologue
    .line 276
    const-string v0, "INFO"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInvite()Z
    .locals 1

    .prologue
    .line 251
    const-string v0, "INVITE"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOption()Z
    .locals 1

    .prologue
    .line 281
    const-string v0, "OPTION"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRegister()Z
    .locals 1

    .prologue
    .line 256
    const-string v0, "REGISTER"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRequest()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 212
    iget-object v4, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isResponse()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v3

    .line 214
    :cond_1
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "firstline":Ljava/lang/String;
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    invoke-direct {v4, v0}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "version":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 219
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v1, "SIP/"

    .line 222
    .local v1, "target":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 329
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v2

    .line 331
    :cond_1
    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "version":Ljava/lang/String;
    const-string v0, "SIP/"

    .line 334
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeAcceptHeader()V
    .locals 1

    .prologue
    .line 1104
    const-string v0, "Accept"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method public removeAlertInfoHeader()V
    .locals 1

    .prologue
    .line 1128
    const-string v0, "Alert-Info"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method public removeAllHeaders(Ljava/lang/String;)V
    .locals 9
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 614
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 615
    .local v4, "target":[Ljava/lang/String;
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 616
    .local v1, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v1, v4}, Lorg/zoolu/sip/provider/SipParser;->goTo([Ljava/lang/String;)Lorg/zoolu/tools/Parser;

    .line 617
    :goto_0
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 619
    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "head":Ljava/lang/String;
    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->indexOfNextHeader()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "tail":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 622
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v2, v5, v6}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;I)V

    .line 623
    .end local v1    # "par":Lorg/zoolu/sip/provider/SipParser;
    .local v2, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v2, v4}, Lorg/zoolu/sip/provider/SipParser;->goTo([Ljava/lang/String;)Lorg/zoolu/tools/Parser;

    move-object v1, v2

    .line 624
    .end local v2    # "par":Lorg/zoolu/sip/provider/SipParser;
    .restart local v1    # "par":Lorg/zoolu/sip/provider/SipParser;
    goto :goto_0

    .line 625
    .end local v0    # "head":Ljava/lang/String;
    .end local v3    # "tail":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public removeAllowHeader()V
    .locals 1

    .prologue
    .line 1152
    const-string v0, "Allow"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method public removeAuthenticationInfoHeader()V
    .locals 1

    .prologue
    .line 1316
    const-string v0, "Authentication-Info"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1317
    return-void
.end method

.method public removeAuthorizationHeader()V
    .locals 1

    .prologue
    .line 1340
    const-string v0, "Authorization"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1341
    return-void
.end method

.method public removeBody()V
    .locals 3

    .prologue
    .line 1286
    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->goToEndOfLastHeader()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v0

    .line 1288
    .local v0, "pos":I
    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 1289
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeContentLengthHeader()V

    .line 1290
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeContentTypeHeader()V

    .line 1291
    return-void
.end method

.method public removeCSeqHeader()V
    .locals 1

    .prologue
    .line 955
    const-string v0, "CSeq"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public removeCallIdHeader()V
    .locals 1

    .prologue
    .line 979
    const-string v0, "Call-ID"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public removeContacts()V
    .locals 1

    .prologue
    .line 773
    const-string v0, "Contact"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeAllHeaders(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method protected removeContentLengthHeader()V
    .locals 1

    .prologue
    .line 1224
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method protected removeContentTypeHeader()V
    .locals 1

    .prologue
    .line 1200
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1201
    return-void
.end method

.method public removeDateHeader()V
    .locals 1

    .prologue
    .line 1027
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public removeExpiresHeader()V
    .locals 1

    .prologue
    .line 1176
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1177
    return-void
.end method

.method protected removeFirstLine()V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    new-instance v1, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/SipParser;->indexOfNextHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public removeFromHeader()V
    .locals 1

    .prologue
    .line 693
    const-string v0, "From"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 571
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;Z)V

    .line 572
    return-void
.end method

.method public removeHeader(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "first"    # Z

    .prologue
    const/4 v8, 0x0

    .line 576
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 577
    .local v4, "target":[Ljava/lang/String;
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 578
    .local v2, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v2, v4}, Lorg/zoolu/sip/provider/SipParser;->goTo([Ljava/lang/String;)Lorg/zoolu/tools/Parser;

    .line 579
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 593
    :goto_0
    return-void

    .line 581
    :cond_0
    if-nez p2, :cond_1

    .line 583
    :goto_1
    invoke-virtual {v2, v4}, Lorg/zoolu/sip/provider/SipParser;->indexOf([Ljava/lang/String;)I

    move-result v1

    .line 584
    .local v1, "next":I
    if-gez v1, :cond_2

    .line 588
    .end local v1    # "next":I
    :cond_1
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 589
    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "head":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->goToNextHeader()Lorg/zoolu/sip/provider/SipParser;

    .line 591
    iget-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "tail":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    goto :goto_0

    .line 586
    .end local v0    # "head":Ljava/lang/String;
    .end local v3    # "tail":Ljava/lang/String;
    .restart local v1    # "next":I
    :cond_2
    invoke-virtual {v2, v1}, Lorg/zoolu/sip/provider/SipParser;->setPos(I)Lorg/zoolu/tools/Parser;

    goto :goto_1
.end method

.method public removeMaxForwardsHeader()V
    .locals 1

    .prologue
    .line 669
    const-string v0, "Max-Forwards"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public removeProxyAuthenticateHeader()V
    .locals 1

    .prologue
    .line 1388
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method public removeProxyAuthorizationHeader()V
    .locals 1

    .prologue
    .line 1412
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1413
    return-void
.end method

.method public removeRecordRouteHeader()V
    .locals 1

    .prologue
    .line 917
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRecordRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 918
    .local v0, "mh":Lorg/zoolu/sip/header/MultipleHeader;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->removeTop()V

    .line 919
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->setRecordRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 920
    return-void
.end method

.method public removeRecordRoutes()V
    .locals 1

    .prologue
    .line 924
    const-string v0, "Record-Route"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeAllHeaders(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public removeRequestLine()V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeFirstLine()V

    goto :goto_0
.end method

.method public removeRouteHeader()V
    .locals 1

    .prologue
    .line 864
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 865
    .local v0, "mh":Lorg/zoolu/sip/header/MultipleHeader;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->removeTop()V

    .line 866
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->setRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 867
    return-void
.end method

.method public removeRoutes()V
    .locals 1

    .prologue
    .line 871
    const-string v0, "Route"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeAllHeaders(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public removeServerHeader()V
    .locals 1

    .prologue
    .line 1075
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method public removeStatusLine()V
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->isResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeFirstLine()V

    goto :goto_0
.end method

.method public removeSubjectHeader()V
    .locals 1

    .prologue
    .line 1003
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method public removeToHeader()V
    .locals 1

    .prologue
    .line 717
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public removeUserAgentHeader()V
    .locals 1

    .prologue
    .line 1051
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public removeViaHeader()V
    .locals 1

    .prologue
    .line 797
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getVias()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 798
    .local v0, "mh":Lorg/zoolu/sip/header/MultipleHeader;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->removeTop()V

    .line 799
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->setVias(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 800
    return-void
.end method

.method public removeVias()V
    .locals 1

    .prologue
    .line 825
    const-string v0, "Via"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeAllHeaders(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public removeWwwAuthenticateHeader()V
    .locals 1

    .prologue
    .line 1364
    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeHeader(Ljava/lang/String;)V

    .line 1365
    return-void
.end method

.method public rfc2543RouteAdapt()V
    .locals 5

    .prologue
    .line 1423
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasRouteHeader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1424
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 1426
    .local v0, "mrh":Lorg/zoolu/sip/header/MultipleHeader;
    new-instance v3, Lorg/zoolu/sip/header/RouteHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getTop()Lorg/zoolu/sip/header/Header;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/zoolu/sip/header/RouteHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    invoke-virtual {v3}, Lorg/zoolu/sip/header/RouteHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/address/SipURL;->hasLr()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1429
    new-instance v3, Lorg/zoolu/sip/header/RouteHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getTop()Lorg/zoolu/sip/header/Header;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/zoolu/sip/header/RouteHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    invoke-virtual {v3}, Lorg/zoolu/sip/header/RouteHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v1

    .line 1431
    .local v1, "next_hop":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    .line 1432
    .local v2, "recipient":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->removeTop()V

    .line 1433
    new-instance v3, Lorg/zoolu/sip/header/RouteHeader;

    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v4, v2}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    invoke-direct {v3, v4}, Lorg/zoolu/sip/header/RouteHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v0, v3}, Lorg/zoolu/sip/header/MultipleHeader;->addBottom(Lorg/zoolu/sip/header/Header;)V

    .line 1434
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->setRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 1435
    new-instance v3, Lorg/zoolu/sip/header/RequestLine;

    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/zoolu/sip/header/RequestLine;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/message/BaseMessage;->setRequestLine(Lorg/zoolu/sip/header/RequestLine;)V

    .line 1439
    .end local v0    # "mrh":Lorg/zoolu/sip/header/MultipleHeader;
    .end local v1    # "next_hop":Lorg/zoolu/sip/address/SipURL;
    .end local v2    # "recipient":Lorg/zoolu/sip/address/SipURL;
    :cond_0
    return-void
.end method

.method public rfc2543toRfc3261RouteUpdate()V
    .locals 6

    .prologue
    .line 1452
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v2

    .line 1453
    .local v2, "request_line":Lorg/zoolu/sip/header/RequestLine;
    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v1

    .line 1454
    .local v1, "next_hop":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->getRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v0

    .line 1455
    .local v0, "mrh":Lorg/zoolu/sip/header/MultipleHeader;
    new-instance v4, Lorg/zoolu/sip/header/RouteHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->getBottom()Lorg/zoolu/sip/header/Header;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/zoolu/sip/header/RouteHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    invoke-virtual {v4}, Lorg/zoolu/sip/header/RouteHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v3

    .line 1457
    .local v3, "target":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {v0}, Lorg/zoolu/sip/header/MultipleHeader;->removeBottom()V

    .line 1458
    invoke-virtual {v1}, Lorg/zoolu/sip/address/SipURL;->addLr()V

    .line 1459
    new-instance v4, Lorg/zoolu/sip/header/RouteHeader;

    new-instance v5, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v5, v1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    invoke-direct {v4, v5}, Lorg/zoolu/sip/header/RouteHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v0, v4}, Lorg/zoolu/sip/header/MultipleHeader;->addTop(Lorg/zoolu/sip/header/Header;)V

    .line 1460
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeRoutes()V

    .line 1461
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->addRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 1462
    new-instance v4, Lorg/zoolu/sip/header/RequestLine;

    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/zoolu/sip/header/RequestLine;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/message/BaseMessage;->setRequestLine(Lorg/zoolu/sip/header/RequestLine;)V

    .line 1463
    return-void
.end method

.method public setAcceptContactHeader(Lorg/zoolu/sip/header/AcceptContactHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/AcceptContactHeader;

    .prologue
    .line 1080
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1081
    return-void
.end method

.method public setAcceptHeader(Lorg/zoolu/sip/header/AcceptHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/AcceptHeader;

    .prologue
    .line 1090
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1091
    return-void
.end method

.method public setAlertInfoHeader(Lorg/zoolu/sip/header/AlertInfoHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/AlertInfoHeader;

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1115
    return-void
.end method

.method public setAllowHeader(Lorg/zoolu/sip/header/AllowHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/AllowHeader;

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1139
    return-void
.end method

.method public setAuthenticationInfoHeader(Lorg/zoolu/sip/header/AuthenticationInfoHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/AuthenticationInfoHeader;

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1303
    return-void
.end method

.method public setAuthorizationHeader(Lorg/zoolu/sip/header/AuthorizationHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/AuthorizationHeader;

    .prologue
    .line 1326
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1327
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 1255
    const-string v0, "application/sdp"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content_type"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 1242
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeBody()V

    .line 1243
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1244
    new-instance v0, Lorg/zoolu/sip/header/ContentTypeHeader;

    invoke-direct {v0, p1}, Lorg/zoolu/sip/header/ContentTypeHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->setContentTypeHeader(Lorg/zoolu/sip/header/ContentTypeHeader;)V

    .line 1245
    new-instance v0, Lorg/zoolu/sip/header/ContentLengthHeader;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/ContentLengthHeader;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->setContentLengthHeader(Lorg/zoolu/sip/header/ContentLengthHeader;)V

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 1251
    :goto_0
    return-void

    .line 1248
    :cond_0
    new-instance v0, Lorg/zoolu/sip/header/ContentLengthHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/ContentLengthHeader;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->setContentLengthHeader(Lorg/zoolu/sip/header/ContentLengthHeader;)V

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCSeqHeader(Lorg/zoolu/sip/header/CSeqHeader;)V
    .locals 0
    .param p1, "csh"    # Lorg/zoolu/sip/header/CSeqHeader;

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 951
    return-void
.end method

.method public setCallIdHeader(Lorg/zoolu/sip/header/CallIdHeader;)V
    .locals 0
    .param p1, "cih"    # Lorg/zoolu/sip/header/CallIdHeader;

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 966
    return-void
.end method

.method public setConnectionId(Lorg/zoolu/sip/provider/ConnectionIdentifier;)V
    .locals 0
    .param p1, "conn_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/zoolu/sip/message/BaseMessage;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 168
    return-void
.end method

.method public setContactHeader(Lorg/zoolu/sip/header/ContactHeader;)V
    .locals 1
    .param p1, "ch"    # Lorg/zoolu/sip/header/ContactHeader;

    .prologue
    .line 745
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasContactHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeContacts()V

    .line 747
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addHeader(Lorg/zoolu/sip/header/Header;Z)V

    .line 748
    return-void
.end method

.method public setContacts(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 1
    .param p1, "contacts"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 766
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasContactHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeContacts()V

    .line 768
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addContacts(Lorg/zoolu/sip/header/MultipleHeader;Z)V

    .line 769
    return-void
.end method

.method protected setContentLengthHeader(Lorg/zoolu/sip/header/ContentLengthHeader;)V
    .locals 0
    .param p1, "clh"    # Lorg/zoolu/sip/header/ContentLengthHeader;

    .prologue
    .line 1219
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1220
    return-void
.end method

.method protected setContentTypeHeader(Lorg/zoolu/sip/header/ContentTypeHeader;)V
    .locals 0
    .param p1, "cth"    # Lorg/zoolu/sip/header/ContentTypeHeader;

    .prologue
    .line 1195
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1196
    return-void
.end method

.method public setDateHeader(Lorg/zoolu/sip/header/DateHeader;)V
    .locals 0
    .param p1, "dh"    # Lorg/zoolu/sip/header/DateHeader;

    .prologue
    .line 1022
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1023
    return-void
.end method

.method public setExpiresHeader(Lorg/zoolu/sip/header/ExpiresHeader;)V
    .locals 0
    .param p1, "eh"    # Lorg/zoolu/sip/header/ExpiresHeader;

    .prologue
    .line 1171
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1172
    return-void
.end method

.method public setFromHeader(Lorg/zoolu/sip/header/FromHeader;)V
    .locals 0
    .param p1, "fh"    # Lorg/zoolu/sip/header/FromHeader;

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 689
    return-void
.end method

.method public setHeader(Lorg/zoolu/sip/header/Header;)V
    .locals 4
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 603
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "hname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/zoolu/sip/provider/SipParser;->indexOfHeader(Ljava/lang/String;)I

    move-result v1

    .line 606
    .local v1, "index":I
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeAllHeaders(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Ljava/lang/String;I)V

    .line 610
    .end local v1    # "index":I
    :goto_0
    return-void

    .line 609
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/zoolu/sip/message/BaseMessage;->addHeader(Lorg/zoolu/sip/header/Header;Z)V

    goto :goto_0
.end method

.method public setHeaders(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 4
    .param p1, "mheader"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 636
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->getName()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "hname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->hasHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/zoolu/sip/provider/SipParser;->indexOfHeader(Ljava/lang/String;)I

    move-result v1

    .line 639
    .local v1, "index":I
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/BaseMessage;->removeAllHeaders(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lorg/zoolu/sip/header/MultipleHeader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Ljava/lang/String;I)V

    .line 643
    .end local v1    # "index":I
    :goto_0
    return-void

    .line 642
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/zoolu/sip/message/BaseMessage;->addHeaders(Lorg/zoolu/sip/header/MultipleHeader;Z)V

    goto :goto_0
.end method

.method public setMaxForwardsHeader(Lorg/zoolu/sip/header/MaxForwardsHeader;)V
    .locals 0
    .param p1, "mfh"    # Lorg/zoolu/sip/header/MaxForwardsHeader;

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 665
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setProxyAuthenticateHeader(Lorg/zoolu/sip/header/ProxyAuthenticateHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/ProxyAuthenticateHeader;

    .prologue
    .line 1374
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1375
    return-void
.end method

.method public setProxyAuthorizationHeader(Lorg/zoolu/sip/header/ProxyAuthorizationHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/ProxyAuthorizationHeader;

    .prologue
    .line 1398
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1399
    return-void
.end method

.method public setRecordRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 1
    .param p1, "routes"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 929
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasRecordRouteHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeRecordRoutes()V

    .line 931
    :cond_0
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->addRecordRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 932
    return-void
.end method

.method public setRemoteAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_addr:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setRemotePort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 157
    iput p1, p0, Lorg/zoolu/sip/message/BaseMessage;->remote_port:I

    .line 158
    return-void
.end method

.method public setRequestLine(Lorg/zoolu/sip/header/RequestLine;)V
    .locals 3
    .param p1, "rl"    # Lorg/zoolu/sip/header/RequestLine;

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasRequestLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeRequestLine()V

    .line 309
    :cond_0
    invoke-virtual {p1}, Lorg/zoolu/sip/header/RequestLine;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 1
    .param p1, "routes"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 876
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasRouteHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeRoutes()V

    .line 878
    :cond_0
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->addRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 879
    return-void
.end method

.method public setServerHeader(Lorg/zoolu/sip/header/ServerHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/ServerHeader;

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1062
    return-void
.end method

.method public setStatusLine(Lorg/zoolu/sip/header/StatusLine;)V
    .locals 2
    .param p1, "sl"    # Lorg/zoolu/sip/header/StatusLine;

    .prologue
    .line 365
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasStatusLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeStatusLine()V

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/zoolu/sip/header/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setSubjectHeader(Lorg/zoolu/sip/header/SubjectHeader;)V
    .locals 0
    .param p1, "sh"    # Lorg/zoolu/sip/header/SubjectHeader;

    .prologue
    .line 989
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 990
    return-void
.end method

.method public setToHeader(Lorg/zoolu/sip/header/ToHeader;)V
    .locals 0
    .param p1, "th"    # Lorg/zoolu/sip/header/ToHeader;

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 713
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 0
    .param p1, "proto"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/zoolu/sip/message/BaseMessage;->transport_proto:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setUserAgentHeader(Lorg/zoolu/sip/header/UserAgentHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/UserAgentHeader;

    .prologue
    .line 1037
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1038
    return-void
.end method

.method public setVias(Lorg/zoolu/sip/header/MultipleHeader;)V
    .locals 1
    .param p1, "vias"    # Lorg/zoolu/sip/header/MultipleHeader;

    .prologue
    .line 818
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->hasViaHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lorg/zoolu/sip/message/BaseMessage;->removeVias()V

    .line 820
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/message/BaseMessage;->addContacts(Lorg/zoolu/sip/header/MultipleHeader;Z)V

    .line 821
    return-void
.end method

.method public setWwwAuthenticateHeader(Lorg/zoolu/sip/header/WwwAuthenticateHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/WwwAuthenticateHeader;

    .prologue
    .line 1350
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 1351
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/zoolu/sip/message/BaseMessage;->message:Ljava/lang/String;

    return-object v0
.end method
