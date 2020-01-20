.class public Lorg/zoolu/sip/message/MessageFactory;
.super Lorg/zoolu/sip/message/BaseMessageFactory;
.source "MessageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessageFactory;-><init>()V

    return-void
.end method

.method public static createMessageRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 19
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "recipient"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v5

    .line 57
    .local v5, "request_uri":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->pickCallId()Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "callid":Ljava/lang/String;
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickInitialCSeq()I

    move-result v17

    .line 59
    .local v17, "cseq":I
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickTag()Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "localtag":Ljava/lang/String;
    const-string v4, "MESSAGE"

    const/4 v8, 0x0

    move/from16 v0, v17

    int-to-long v10, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v3 .. v16}, Lorg/zoolu/sip/message/MessageFactory;->createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v18

    .line 64
    .local v18, "req":Lorg/zoolu/sip/message/Message;
    if-eqz p3, :cond_0

    .line 65
    new-instance v3, Lorg/zoolu/sip/header/SubjectHeader;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lorg/zoolu/sip/header/SubjectHeader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/zoolu/sip/message/Message;->setSubjectHeader(Lorg/zoolu/sip/header/SubjectHeader;)V

    .line 66
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object v18
.end method

.method public static createNotifyRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 3
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "sipfragment"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v1, "NOTIFY"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 146
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->removeExpiresHeader()V

    .line 147
    new-instance v1, Lorg/zoolu/sip/header/EventHeader;

    invoke-direct {v1, p1, p2}, Lorg/zoolu/sip/header/EventHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setEventHeader(Lorg/zoolu/sip/header/EventHeader;)V

    .line 148
    const-string v1, "message/sipfrag;version=2.0"

    invoke-virtual {v0, v1, p3}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method public static createNotifyRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 3
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "content_type"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v1, "NOTIFY"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 136
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->removeExpiresHeader()V

    .line 137
    new-instance v1, Lorg/zoolu/sip/header/EventHeader;

    invoke-direct {v1, p1, p2}, Lorg/zoolu/sip/header/EventHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setEventHeader(Lorg/zoolu/sip/header/EventHeader;)V

    .line 138
    invoke-virtual {v0, p3, p4}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public static createReferRequest(Lorg/zoolu/sip/dialog/Dialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;
    .locals 3
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;
    .param p1, "refer_to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "referred_by"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 97
    const-string v1, "REFER"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 98
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    new-instance v1, Lorg/zoolu/sip/header/ReferToHeader;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/header/ReferToHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setReferToHeader(Lorg/zoolu/sip/header/ReferToHeader;)V

    .line 99
    if-eqz p2, :cond_0

    .line 100
    new-instance v1, Lorg/zoolu/sip/header/ReferredByHeader;

    invoke-direct {v1, p2}, Lorg/zoolu/sip/header/ReferredByHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setReferredByHeader(Lorg/zoolu/sip/header/ReferredByHeader;)V

    .line 105
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ReferredByHeader;

    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/Dialog;->getLocalName()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/zoolu/sip/header/ReferredByHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setReferredByHeader(Lorg/zoolu/sip/header/ReferredByHeader;)V

    goto :goto_0
.end method

.method public static createReferRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;
    .locals 17
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "recipient"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "refer_to"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v3

    .line 75
    .local v3, "request_uri":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual/range {p0 .. p0}, Lorg/zoolu/sip/provider/SipProvider;->pickCallId()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "callid":Ljava/lang/String;
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickInitialCSeq()I

    move-result v15

    .line 77
    .local v15, "cseq":I
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickTag()Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, "localtag":Ljava/lang/String;
    const-string v2, "REFER"

    int-to-long v8, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v14}, Lorg/zoolu/sip/message/MessageFactory;->createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v16

    .line 82
    .local v16, "req":Lorg/zoolu/sip/message/Message;
    new-instance v1, Lorg/zoolu/sip/header/ReferToHeader;

    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ReferToHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setReferToHeader(Lorg/zoolu/sip/header/ReferToHeader;)V

    .line 85
    new-instance v1, Lorg/zoolu/sip/header/ReferredByHeader;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ReferredByHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setReferredByHeader(Lorg/zoolu/sip/header/ReferredByHeader;)V

    .line 86
    return-object v16
.end method

.method public static createSubscribeRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 3
    .param p0, "dialog"    # Lorg/zoolu/sip/dialog/Dialog;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "content_type"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v1, "SUBSCRIBE"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 127
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    new-instance v1, Lorg/zoolu/sip/header/EventHeader;

    invoke-direct {v1, p1, p2}, Lorg/zoolu/sip/header/EventHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setEventHeader(Lorg/zoolu/sip/header/EventHeader;)V

    .line 128
    invoke-virtual {v0, p3, p4}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-object v0
.end method

.method public static createSubscribeRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;
    .locals 10
    .param p0, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p1, "recipient"    # Lorg/zoolu/sip/address/SipURL;
    .param p2, "to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "from"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p5, "event"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "content_type"    # Ljava/lang/String;
    .param p8, "body"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v3, "SUBSCRIBE"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v8}, Lorg/zoolu/sip/message/MessageFactory;->createRequest(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v9

    .line 118
    .local v9, "req":Lorg/zoolu/sip/message/Message;
    new-instance v2, Lorg/zoolu/sip/header/EventHeader;

    move-object/from16 v0, p6

    invoke-direct {v2, p5, v0}, Lorg/zoolu/sip/header/EventHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lorg/zoolu/sip/message/Message;->setEventHeader(Lorg/zoolu/sip/header/EventHeader;)V

    .line 119
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v9, v0, v1}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v9
.end method
