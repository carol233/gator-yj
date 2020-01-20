.class public abstract Lorg/zoolu/sip/message/BaseMessageFactory;
.super Ljava/lang/Object;
.source "BaseMessageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create2xxAckRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 1
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, "ACK"

    invoke-static {p0, v0, p1}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createByeRequest(Lorg/zoolu/sip/dialog/Dialog;)Lorg/zoolu/sip/message/Message;
    .locals 3
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;

    .prologue
    .line 397
    const-string v1, "BYE"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 398
    .local v0, "msg":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->removeExpiresHeader()V

    .line 399
    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->removeContacts()V

    .line 400
    return-object v0
.end method

.method public static createCancelRequest(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/dialog/Dialog;)Lorg/zoolu/sip/message/Message;
    .locals 22
    .param p0, "method"    # Lorg/zoolu/sip/message/Message;
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;

    .prologue
    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v20

    .line 378
    .local v20, "to":Lorg/zoolu/sip/header/ToHeader;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v19

    .line 379
    .local v19, "from":Lorg/zoolu/sip/header/FromHeader;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    .line 380
    .local v2, "request_uri":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getContactHeader()Lorg/zoolu/sip/header/ContactHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ContactHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v5

    .line 381
    .local v5, "contact":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v21

    .line 382
    .local v21, "via":Lorg/zoolu/sip/header/ViaHeader;
    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, "host_addr":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/header/ViaHeader;->getPort()I

    move-result v8

    .line 384
    .local v8, "host_port":I
    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/header/ViaHeader;->hasRport()Z

    move-result v9

    .line 385
    .local v9, "rport":Z
    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/header/ViaHeader;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, "proto":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ViaHeader;->getBranch()Ljava/lang/String;

    move-result-object v15

    .line 387
    .local v15, "branch":Ljava/lang/String;
    const-string v1, "CANCEL"

    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;

    move-result-object v10

    invoke-virtual {v10}, Lorg/zoolu/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v11

    invoke-virtual {v11}, Lorg/zoolu/sip/header/CSeqHeader;->getSequenceNumber()J

    move-result-wide v11

    const-string v13, "tag"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/zoolu/sip/header/FromHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "tag"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/zoolu/sip/header/ToHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v1 .. v18}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v1

    return-object v1
.end method

.method public static createInviteRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 1
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "INVITE"

    invoke-static {p0, v0, p1}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createInviteRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 15
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "request_uri"    # Lorg/zoolu/sip/address/SipURL;
    .param p2, "to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "icsi"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->pickCallId()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "call_id":Ljava/lang/String;
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickInitialCSeq()I

    move-result v14

    .line 292
    .local v14, "cseq":I
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickTag()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "local_tag":Ljava/lang/String;
    if-nez p4, :cond_0

    .line 295
    move-object/from16 p4, p3

    .line 296
    :cond_0
    const-string v1, "INVITE"

    int-to-long v7, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-static/range {v0 .. v13}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createNon2xxAckRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/message/Message;
    .locals 22
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "method"    # Lorg/zoolu/sip/message/Message;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 321
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    .line 322
    .local v2, "request_uri":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v20

    .line 323
    .local v20, "from":Lorg/zoolu/sip/header/FromHeader;
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v21

    .line 324
    .local v21, "to":Lorg/zoolu/sip/header/ToHeader;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "via_addr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v8

    .line 326
    .local v8, "host_port":I
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->isRportSet()Z

    move-result v9

    .line 328
    .local v9, "rport":Z
    invoke-virtual {v2}, Lorg/zoolu/sip/address/SipURL;->hasTransport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v2}, Lorg/zoolu/sip/address/SipURL;->getTransport()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "proto":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ViaHeader;->getBranch()Ljava/lang/String;

    move-result-object v15

    .line 333
    .local v15, "branch":Ljava/lang/String;
    const/4 v5, 0x0

    .line 334
    .local v5, "contact":Lorg/zoolu/sip/address/NameAddress;
    const-string v1, "ACK"

    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;

    move-result-object v10

    invoke-virtual {v10}, Lorg/zoolu/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v11

    invoke-virtual {v11}, Lorg/zoolu/sip/header/CSeqHeader;->getSequenceNumber()J

    move-result-wide v11

    const-string v13, "tag"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/zoolu/sip/header/FromHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "tag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lorg/zoolu/sip/header/ToHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v1 .. v18}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v19

    .line 340
    .local v19, "ack":Lorg/zoolu/sip/message/Message;
    invoke-virtual/range {v19 .. v19}, Lorg/zoolu/sip/message/Message;->removeExpiresHeader()V

    .line 341
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->hasRouteHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 343
    :cond_0
    return-object v19

    .line 331
    .end local v5    # "contact":Lorg/zoolu/sip/address/NameAddress;
    .end local v6    # "proto":Ljava/lang/String;
    .end local v15    # "branch":Ljava/lang/String;
    .end local v19    # "ack":Lorg/zoolu/sip/message/Message;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "proto":Ljava/lang/String;
    goto :goto_0
.end method

.method public static createRegisterRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 23
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "qvalue"    # Ljava/lang/String;
    .param p5, "icsi"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v22

    .line 411
    .local v22, "to_url":Lorg/zoolu/sip/address/SipURL;
    new-instance v2, Lorg/zoolu/sip/address/SipURL;

    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sip/address/SipURL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sip/address/SipURL;->getPort()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;I)V

    .line 412
    .local v2, "registrar":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, "via_addr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v8

    .line 414
    .local v8, "host_port":I
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->isRportSet()Z

    move-result v9

    .line 416
    .local v9, "rport":Z
    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sip/address/SipURL;->hasTransport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sip/address/SipURL;->getTransport()Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "proto":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->pickCallId()Ljava/lang/String;

    move-result-object v10

    .line 421
    .local v10, "call_id":Ljava/lang/String;
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickInitialCSeq()I

    move-result v19

    .line 422
    .local v19, "cseq":I
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickTag()Ljava/lang/String;

    move-result-object v13

    .line 424
    .local v13, "local_tag":Ljava/lang/String;
    const-string v1, "REGISTER"

    move/from16 v0, v19

    int-to-long v11, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-static/range {v1 .. v18}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v20

    .line 428
    .local v20, "req":Lorg/zoolu/sip/message/Message;
    if-nez p3, :cond_0

    .line 429
    new-instance v21, Lorg/zoolu/sip/header/ContactHeader;

    invoke-direct/range {v21 .. v21}, Lorg/zoolu/sip/header/ContactHeader;-><init>()V

    .line 430
    .local v21, "star":Lorg/zoolu/sip/header/ContactHeader;
    invoke-virtual/range {v20 .. v21}, Lorg/zoolu/sip/message/Message;->setContactHeader(Lorg/zoolu/sip/header/ContactHeader;)V

    .line 431
    new-instance v1, Lorg/zoolu/sip/header/ExpiresHeader;

    sget v3, Lorg/zoolu/sip/provider/SipStack;->default_expires:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/zoolu/sip/header/ExpiresHeader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setExpiresHeader(Lorg/zoolu/sip/header/ExpiresHeader;)V

    .line 434
    .end local v21    # "star":Lorg/zoolu/sip/header/ContactHeader;
    :cond_0
    return-object v20

    .line 419
    .end local v6    # "proto":Ljava/lang/String;
    .end local v10    # "call_id":Ljava/lang/String;
    .end local v13    # "local_tag":Ljava/lang/String;
    .end local v19    # "cseq":I
    .end local v20    # "req":Lorg/zoolu/sip/message/Message;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "proto":Ljava/lang/String;
    goto :goto_0
.end method

.method public static createRequest(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 7
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "request_uri"    # Lorg/zoolu/sip/address/SipURL;
    .param p2, "to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p5, "proto"    # Ljava/lang/String;
    .param p6, "via_addr"    # Ljava/lang/String;
    .param p7, "host_port"    # I
    .param p8, "rport"    # Z
    .param p9, "call_id"    # Ljava/lang/String;
    .param p10, "cseq"    # J
    .param p12, "local_tag"    # Ljava/lang/String;
    .param p13, "remote_tag"    # Ljava/lang/String;
    .param p14, "branch"    # Ljava/lang/String;
    .param p15, "body"    # Ljava/lang/String;
    .param p16, "qvalue"    # Ljava/lang/String;
    .param p17, "icsi"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v3, Lorg/zoolu/sip/message/Message;

    invoke-direct {v3}, Lorg/zoolu/sip/message/Message;-><init>()V

    .line 95
    .local v3, "req":Lorg/zoolu/sip/message/Message;
    new-instance v5, Lorg/zoolu/sip/header/RequestLine;

    invoke-direct {v5, p0, p1}, Lorg/zoolu/sip/header/RequestLine;-><init>(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setRequestLine(Lorg/zoolu/sip/header/RequestLine;)V

    .line 96
    new-instance v4, Lorg/zoolu/sip/header/ViaHeader;

    invoke-direct {v4, p5, p6, p7}, Lorg/zoolu/sip/header/ViaHeader;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    .local v4, "via":Lorg/zoolu/sip/header/ViaHeader;
    if-eqz p8, :cond_0

    .line 98
    invoke-virtual {v4}, Lorg/zoolu/sip/header/ViaHeader;->setRport()V

    .line 99
    :cond_0
    if-nez p14, :cond_1

    .line 100
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickBranch()Ljava/lang/String;

    move-result-object p14

    .line 101
    :cond_1
    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Lorg/zoolu/sip/header/ViaHeader;->setBranch(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v4}, Lorg/zoolu/sip/message/Message;->addViaHeader(Lorg/zoolu/sip/header/ViaHeader;)V

    .line 103
    new-instance v5, Lorg/zoolu/sip/header/MaxForwardsHeader;

    const/16 v6, 0x46

    invoke-direct {v5, v6}, Lorg/zoolu/sip/header/MaxForwardsHeader;-><init>(I)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setMaxForwardsHeader(Lorg/zoolu/sip/header/MaxForwardsHeader;)V

    .line 104
    if-nez p13, :cond_6

    .line 105
    new-instance v5, Lorg/zoolu/sip/header/ToHeader;

    invoke-direct {v5, p2}, Lorg/zoolu/sip/header/ToHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setToHeader(Lorg/zoolu/sip/header/ToHeader;)V

    .line 108
    :goto_0
    new-instance v5, Lorg/zoolu/sip/header/FromHeader;

    move-object/from16 v0, p12

    invoke-direct {v5, p3, v0}, Lorg/zoolu/sip/header/FromHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setFromHeader(Lorg/zoolu/sip/header/FromHeader;)V

    .line 109
    new-instance v5, Lorg/zoolu/sip/header/CallIdHeader;

    move-object/from16 v0, p9

    invoke-direct {v5, v0}, Lorg/zoolu/sip/header/CallIdHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setCallIdHeader(Lorg/zoolu/sip/header/CallIdHeader;)V

    .line 110
    new-instance v5, Lorg/zoolu/sip/header/CSeqHeader;

    move-wide/from16 v0, p10

    invoke-direct {v5, v0, v1, p0}, Lorg/zoolu/sip/header/CSeqHeader;-><init>(JLjava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setCSeqHeader(Lorg/zoolu/sip/header/CSeqHeader;)V

    .line 113
    if-eqz p4, :cond_3

    .line 114
    const-string v5, "REGISTER"

    if-eq p0, v5, :cond_2

    const-string v5, "INVITE"

    if-ne p0, v5, :cond_7

    :cond_2
    if-eqz p17, :cond_7

    .line 115
    new-instance v2, Lorg/zoolu/sip/header/MultipleHeader;

    const-string v5, "Contact"

    invoke-direct {v2, v5}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "contacts":Lorg/zoolu/sip/header/MultipleHeader;
    new-instance v5, Lorg/zoolu/sip/header/ContactHeader;

    move-object/from16 v0, p16

    move-object/from16 v1, p17

    invoke-direct {v5, p4, v0, v1}, Lorg/zoolu/sip/header/ContactHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/zoolu/sip/header/MultipleHeader;->addBottom(Lorg/zoolu/sip/header/Header;)V

    .line 117
    invoke-virtual {v3, v2}, Lorg/zoolu/sip/message/Message;->setContacts(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 126
    .end local v2    # "contacts":Lorg/zoolu/sip/header/MultipleHeader;
    :cond_3
    :goto_1
    const-string v5, "INVITE"

    if-ne p0, v5, :cond_4

    if-eqz p17, :cond_4

    .line 127
    new-instance v5, Lorg/zoolu/sip/header/AcceptContactHeader;

    move-object/from16 v0, p17

    invoke-direct {v5, v0}, Lorg/zoolu/sip/header/AcceptContactHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setAcceptContactHeader(Lorg/zoolu/sip/header/AcceptContactHeader;)V

    .line 130
    :cond_4
    new-instance v5, Lorg/zoolu/sip/header/ExpiresHeader;

    sget v6, Lorg/zoolu/sip/provider/SipStack;->default_expires:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/zoolu/sip/header/ExpiresHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setExpiresHeader(Lorg/zoolu/sip/header/ExpiresHeader;)V

    .line 133
    sget-object v5, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 134
    new-instance v5, Lorg/zoolu/sip/header/UserAgentHeader;

    sget-object v6, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/zoolu/sip/header/UserAgentHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setUserAgentHeader(Lorg/zoolu/sip/header/UserAgentHeader;)V

    .line 136
    :cond_5
    move-object/from16 v0, p15

    invoke-virtual {v3, v0}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;)V

    .line 138
    return-object v3

    .line 107
    :cond_6
    new-instance v5, Lorg/zoolu/sip/header/ToHeader;

    move-object/from16 v0, p13

    invoke-direct {v5, p2, v0}, Lorg/zoolu/sip/header/ToHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/message/Message;->setToHeader(Lorg/zoolu/sip/header/ToHeader;)V

    goto :goto_0

    .line 120
    :cond_7
    new-instance v2, Lorg/zoolu/sip/header/MultipleHeader;

    const-string v5, "Contact"

    invoke-direct {v2, v5}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v2    # "contacts":Lorg/zoolu/sip/header/MultipleHeader;
    new-instance v5, Lorg/zoolu/sip/header/ContactHeader;

    invoke-direct {v5, p4}, Lorg/zoolu/sip/header/ContactHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v2, v5}, Lorg/zoolu/sip/header/MultipleHeader;->addBottom(Lorg/zoolu/sip/header/Header;)V

    .line 122
    invoke-virtual {v3, v2}, Lorg/zoolu/sip/message/Message;->setContacts(Lorg/zoolu/sip/header/MultipleHeader;)V

    goto :goto_1
.end method

.method public static createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 26
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getRemoteName()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    .line 238
    .local v3, "to":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getLocalName()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v4

    .line 239
    .local v4, "from":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getRemoteContact()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v25

    .line 240
    .local v25, "target":Lorg/zoolu/sip/address/NameAddress;
    if-nez v25, :cond_0

    .line 241
    move-object/from16 v25, v3

    .line 242
    :cond_0
    invoke-virtual/range {v25 .. v25}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    .line 243
    .local v2, "request_uri":Lorg/zoolu/sip/address/SipURL;
    if-nez v2, :cond_1

    .line 244
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getRemoteName()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    .line 245
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getSipProvider()Lorg/zoolu/sip/provider/SipProvider;

    move-result-object v24

    .line 246
    .local v24, "sip_provider":Lorg/zoolu/sip/provider/SipProvider;
    invoke-virtual/range {v24 .. v24}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "via_addr":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v8

    .line 248
    .local v8, "host_port":I
    invoke-virtual/range {v24 .. v24}, Lorg/zoolu/sip/provider/SipProvider;->isRportSet()Z

    move-result v9

    .line 250
    .local v9, "rport":Z
    invoke-virtual/range {v25 .. v25}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/address/SipURL;->hasTransport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    invoke-virtual/range {v25 .. v25}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/address/SipURL;->getTransport()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "proto":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getLocalContact()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v5

    .line 255
    .local v5, "contact":Lorg/zoolu/sip/address/NameAddress;
    if-nez v5, :cond_2

    .line 256
    move-object v5, v4

    .line 258
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/zoolu/sip/message/SipMethods;->isAck(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p1 .. p1}, Lorg/zoolu/sip/message/SipMethods;->isCancel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 259
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->incLocalCSeq()V

    .line 260
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getCallID()Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, "call_id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getLocalCSeq()J

    move-result-wide v11

    .line 262
    .local v11, "cseq":J
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getLocalTag()Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "local_tag":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v14

    .line 265
    .local v14, "remote_tag":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-object/from16 v16, p2

    invoke-static/range {v1 .. v18}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v21

    .line 268
    .local v21, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/dialog/Dialog;->getRoute()Ljava/util/Vector;

    move-result-object v22

    .line 269
    .local v22, "route":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/address/NameAddress;>;"
    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 270
    new-instance v23, Ljava/util/Vector;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v1

    move-object/from16 v0, v23

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 271
    .local v23, "route_s":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v19

    .line 272
    .local v19, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/address/NameAddress;>;"
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/zoolu/sip/address/NameAddress;

    .line 274
    .local v20, "elem":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    .end local v5    # "contact":Lorg/zoolu/sip/address/NameAddress;
    .end local v6    # "proto":Ljava/lang/String;
    .end local v10    # "call_id":Ljava/lang/String;
    .end local v11    # "cseq":J
    .end local v13    # "local_tag":Ljava/lang/String;
    .end local v14    # "remote_tag":Ljava/lang/String;
    .end local v19    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/address/NameAddress;>;"
    .end local v20    # "elem":Lorg/zoolu/sip/address/NameAddress;
    .end local v21    # "req":Lorg/zoolu/sip/message/Message;
    .end local v22    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/address/NameAddress;>;"
    .end local v23    # "route_s":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual/range {v24 .. v24}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "proto":Ljava/lang/String;
    goto :goto_0

    .line 276
    .restart local v5    # "contact":Lorg/zoolu/sip/address/NameAddress;
    .restart local v10    # "call_id":Ljava/lang/String;
    .restart local v11    # "cseq":J
    .restart local v13    # "local_tag":Ljava/lang/String;
    .restart local v14    # "remote_tag":Ljava/lang/String;
    .restart local v19    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/address/NameAddress;>;"
    .restart local v21    # "req":Lorg/zoolu/sip/message/Message;
    .restart local v22    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/address/NameAddress;>;"
    .restart local v23    # "route_s":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_5
    new-instance v1, Lorg/zoolu/sip/header/MultipleHeader;

    const-string v15, "Route"

    move-object/from16 v0, v23

    invoke-direct {v1, v15, v0}, Lorg/zoolu/sip/header/MultipleHeader;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->addRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 278
    .end local v19    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/address/NameAddress;>;"
    .end local v23    # "route_s":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/message/Message;->rfc2543RouteAdapt()V

    .line 279
    return-object v21
.end method

.method public static createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 8
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p3}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/SipURL;->getUserName()Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "contact_user":Ljava/lang/String;
    new-instance v5, Lorg/zoolu/sip/address/NameAddress;

    new-instance v0, Lorg/zoolu/sip/address/SipURL;

    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v2

    invoke-direct {v0, v7, v1, v2}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v0}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    .line 220
    .local v5, "contact":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {p2}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 15
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "request_uri"    # Lorg/zoolu/sip/address/SipURL;
    .param p3, "to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p5, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p6, "body"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->pickCallId()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "call_id":Ljava/lang/String;
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickInitialCSeq()I

    move-result v14

    .line 192
    .local v14, "cseq":I
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickTag()Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "local_tag":Ljava/lang/String;
    int-to-long v7, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v12, p6

    invoke-static/range {v0 .. v13}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 18
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "request_uri"    # Lorg/zoolu/sip/address/SipURL;
    .param p3, "to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p5, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p6, "call_id"    # Ljava/lang/String;
    .param p7, "cseq"    # J
    .param p9, "local_tag"    # Ljava/lang/String;
    .param p10, "remote_tag"    # Ljava/lang/String;
    .param p11, "branch"    # Ljava/lang/String;
    .param p12, "body"    # Ljava/lang/String;
    .param p13, "icsi"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "via_addr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v7

    .line 159
    .local v7, "host_port":I
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->isRportSet()Z

    move-result v8

    .line 161
    .local v8, "rport":Z
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/address/SipURL;->hasTransport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/address/SipURL;->getTransport()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "proto":Ljava/lang/String;
    :goto_0
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v17, p13

    invoke-static/range {v0 .. v17}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    return-object v0

    .line 164
    .end local v5    # "proto":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "proto":Ljava/lang/String;
    goto :goto_0
.end method

.method public static createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 4
    .param p0, "req"    # Lorg/zoolu/sip/message/Message;
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "local_tag"    # Ljava/lang/String;
    .param p4, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p5, "content_type"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;

    .prologue
    .line 468
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0}, Lorg/zoolu/sip/message/Message;-><init>()V

    .line 469
    .local v0, "resp":Lorg/zoolu/sip/message/Message;
    new-instance v2, Lorg/zoolu/sip/header/StatusLine;

    invoke-direct {v2, p1, p2}, Lorg/zoolu/sip/header/StatusLine;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setStatusLine(Lorg/zoolu/sip/header/StatusLine;)V

    .line 470
    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->getVias()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setVias(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 471
    const/16 v2, 0xb4

    if-lt p1, v2, :cond_0

    const/16 v2, 0x12c

    if-ge p1, v2, :cond_0

    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->hasRecordRouteHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->getRecordRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setRecordRoutes(Lorg/zoolu/sip/header/MultipleHeader;)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v1

    .line 474
    .local v1, "toh":Lorg/zoolu/sip/header/ToHeader;
    if-eqz p3, :cond_1

    .line 475
    const-string v2, "tag"

    invoke-virtual {v1, v2, p3}, Lorg/zoolu/sip/header/ToHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_1
    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setToHeader(Lorg/zoolu/sip/header/ToHeader;)V

    .line 477
    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setFromHeader(Lorg/zoolu/sip/header/FromHeader;)V

    .line 478
    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setCallIdHeader(Lorg/zoolu/sip/header/CallIdHeader;)V

    .line 479
    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setCSeqHeader(Lorg/zoolu/sip/header/CSeqHeader;)V

    .line 480
    if-eqz p4, :cond_2

    .line 481
    new-instance v2, Lorg/zoolu/sip/header/ContactHeader;

    invoke-direct {v2, p4}, Lorg/zoolu/sip/header/ContactHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setContactHeader(Lorg/zoolu/sip/header/ContactHeader;)V

    .line 483
    :cond_2
    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 484
    new-instance v2, Lorg/zoolu/sip/header/ServerHeader;

    sget-object v3, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/sip/header/ServerHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/message/Message;->setServerHeader(Lorg/zoolu/sip/header/ServerHeader;)V

    .line 486
    :cond_3
    if-nez p5, :cond_4

    .line 487
    invoke-virtual {v0, p6}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;)V

    .line 492
    :goto_0
    return-object v0

    .line 489
    :cond_4
    invoke-virtual {v0, p5, p6}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;
    .locals 7
    .param p0, "req"    # Lorg/zoolu/sip/message/Message;
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "contact"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    const/4 v5, 0x0

    .line 504
    const/4 v3, 0x0

    .line 505
    .local v3, "localtag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->createsDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ToHeader;->hasTag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    sget-boolean v0, Lorg/zoolu/sip/provider/SipStack;->early_dialog:Z

    if-nez v0, :cond_0

    const/16 v0, 0x65

    if-lt p1, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    .line 508
    :cond_0
    invoke-static {p0}, Lorg/zoolu/sip/provider/SipProvider;->pickTag(Lorg/zoolu/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    .line 510
    invoke-static/range {v0 .. v6}, Lorg/zoolu/sip/message/BaseMessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    return-object v0
.end method
