.class public Lorg/zoolu/sip/dialog/ExtendedInviteDialog;
.super Lorg/zoolu/sip/dialog/InviteDialog;
.source "ExtendedInviteDialog.java"


# static fields
.field static final MAX_ATTEMPTS:I = 0x3


# instance fields
.field attempts:I

.field dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

.field next_nonce:Ljava/lang/String;

.field passwd:Ljava/lang/String;

.field qop:Ljava/lang/String;

.field realm:Ljava/lang/String;

.field transactions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lorg/zoolu/sip/provider/TransactionIdentifier;",
            "Lorg/zoolu/sip/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V
    .locals 0
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .param p5, "listener"    # Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    .prologue
    .line 87
    invoke-direct {p0, p1, p5}, Lorg/zoolu/sip/dialog/InviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/InviteDialogListener;)V

    .line 88
    invoke-direct {p0, p5}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->init(Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V

    .line 89
    iput-object p2, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->username:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->realm:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->passwd:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V
    .locals 0
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "listener"    # Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/dialog/InviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/InviteDialogListener;)V

    .line 81
    invoke-direct {p0, p2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->init(Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V

    .line 82
    return-void
.end method

.method private init(Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    .prologue
    const/4 v1, 0x0

    .line 96
    iput-object p1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    .line 98
    iput-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->username:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->realm:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->passwd:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->next_nonce:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->qop:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->attempts:I

    .line 104
    return-void
.end method


# virtual methods
.method public acceptRefer(Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 168
    const-string v1, "inside acceptRefer(refer)"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 169
    const/16 v1, 0xca

    const/16 v2, 0xc8

    invoke-static {v2}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 171
    .local v0, "resp":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 172
    return-void
.end method

.method public info(CI)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "duration"    # I

    .prologue
    .line 120
    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/zoolu/sip/message/BaseMessageFactory;->createRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 121
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    const-string v1, "application/dtmf-relay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n+Duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->request(Lorg/zoolu/sip/message/Message;)V

    .line 123
    return-void
.end method

.method public notify(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Lorg/zoolu/sip/header/StatusLine;

    invoke-direct {v0, p1, p2}, Lorg/zoolu/sip/header/StatusLine;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->notify(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public notify(Ljava/lang/String;)V
    .locals 3
    .param p1, "sipfragment"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, "refer"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1}, Lorg/zoolu/sip/message/MessageFactory;->createNotifyRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 141
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->request(Lorg/zoolu/sip/message/Message;)V

    .line 142
    return-void
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 12
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v11, 0xc8

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getFirstLine()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    invoke-super {p0, p1, p2}, Lorg/zoolu/sip/dialog/InviteDialog;->onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    .line 220
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isInvite()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isAck()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isCancel()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isBye()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/zoolu/sip/dialog/InviteDialog;->onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 194
    :cond_2
    new-instance v5, Lorg/zoolu/sip/transaction/TransactionServer;

    iget-object v6, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v5, v6, p2, p0}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V

    .line 195
    .local v5, "t":Lorg/zoolu/sip/transaction/TransactionServer;
    iget-object v6, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual {v5}, Lorg/zoolu/sip/transaction/TransactionServer;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRefer()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getReferToHeader()Lorg/zoolu/sip/header/ReferToHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/sip/header/ReferToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v1

    .line 202
    .local v1, "refer_to":Lorg/zoolu/sip/address/NameAddress;
    const/4 v2, 0x0

    .line 203
    .local v2, "referred_by":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasReferredByHeader()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getReferredByHeader()Lorg/zoolu/sip/header/ReferredByHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/sip/header/ReferredByHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v2

    .line 205
    :cond_3
    iget-object v6, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    invoke-interface {v6, p0, v1, v2, p2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;->onDlgRefer(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 206
    .end local v1    # "refer_to":Lorg/zoolu/sip/address/NameAddress;
    .end local v2    # "referred_by":Lorg/zoolu/sip/address/NameAddress;
    :cond_4
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isNotify()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 207
    invoke-static {v11}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p2, v11, v6, v7}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v3

    .line 209
    .local v3, "resp":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 210
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getEventHeader()Lorg/zoolu/sip/header/EventHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/sip/header/EventHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "event":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "sipfragment":Ljava/lang/String;
    iget-object v6, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    invoke-interface {v6, p0, v0, v4, p2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;->onDlgNotify(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 214
    .end local v0    # "event":Ljava/lang/String;
    .end local v3    # "resp":Lorg/zoolu/sip/message/Message;
    .end local v4    # "sipfragment":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received alternative request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v7

    invoke-virtual {v7}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 216
    iget-object v6, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v7

    invoke-virtual {v7}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, p0, v7, v8, p2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;->onDlgAltRequest(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_0
.end method

.method public onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 24
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside onTransFailureResponse("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",msg)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 230
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v22

    .line 232
    .local v22, "status_line":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v15

    .line 233
    .local v15, "code":I
    invoke-virtual/range {v22 .. v22}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, "reason":Ljava/lang/String;
    const/16 v16, 0x0

    .line 236
    .local v16, "isErr401":Z
    const/16 v17, 0x0

    .line 239
    .local v17, "isErr407":Z
    move-object/from16 v0, p0

    iget v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->attempts:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 240
    sparse-switch v15, :sswitch_data_0

    .line 256
    :cond_0
    :goto_0
    or-int v4, v16, v17

    if-eqz v4, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->attempts:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->attempts:I

    .line 258
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getRequestMessage()Lorg/zoolu/sip/message/Message;

    move-result-object v20

    .line 259
    .local v20, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/header/CSeqHeader;->incSequenceNumber()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/zoolu/sip/message/Message;->setCSeqHeader(Lorg/zoolu/sip/header/CSeqHeader;)V

    .line 260
    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v23

    .line 261
    .local v23, "vh":Lorg/zoolu/sip/header/ViaHeader;
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickBranch()Ljava/lang/String;

    move-result-object v18

    .line 262
    .local v18, "newbranch":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/header/ViaHeader;->setBranch(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sip/message/Message;->removeViaHeader()V

    .line 265
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->addViaHeader(Lorg/zoolu/sip/header/ViaHeader;)V

    .line 267
    const/16 v4, 0x191

    if-ne v15, v4, :cond_1

    .line 268
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->getWwwAuthenticateHeader()Lorg/zoolu/sip/header/WwwAuthenticateHeader;

    move-result-object v6

    .line 271
    .local v6, "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    :goto_1
    invoke-virtual {v6}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;->getQopOptionsParam()Ljava/lang/String;

    move-result-object v19

    .line 272
    .local v19, "qop_options":Ljava/lang/String;
    if-eqz v19, :cond_2

    const-string v4, "auth"

    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->qop:Ljava/lang/String;

    .line 273
    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v21

    .line 274
    .local v21, "rl":Lorg/zoolu/sip/header/RequestLine;
    new-instance v3, Lorg/zoolu/sip/authentication/DigestAuthentication;

    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/sip/address/SipURL;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->qop:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->username:Ljava/lang/String;

    .end local v9    # "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->passwd:Ljava/lang/String;

    invoke-direct/range {v3 .. v10}, Lorg/zoolu/sip/authentication/DigestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v3, "digest":Lorg/zoolu/sip/authentication/DigestAuthentication;
    const/16 v4, 0x191

    if-ne v15, v4, :cond_3

    .line 279
    invoke-virtual {v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getAuthorizationHeader()Lorg/zoolu/sip/header/AuthorizationHeader;

    move-result-object v14

    .line 282
    .local v14, "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/zoolu/sip/message/Message;->setAuthorizationHeader(Lorg/zoolu/sip/header/AuthorizationHeader;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance p1, Lorg/zoolu/sip/transaction/TransactionClient;

    .end local p1    # "tc":Lorg/zoolu/sip/transaction/TransactionClient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v4, v1, v2}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 285
    .restart local p1    # "tc":Lorg/zoolu/sip/transaction/TransactionClient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    .line 287
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    .line 303
    .end local v3    # "digest":Lorg/zoolu/sip/authentication/DigestAuthentication;
    .end local v6    # "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    .end local v14    # "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    .end local v18    # "newbranch":Ljava/lang/String;
    .end local v19    # "qop_options":Ljava/lang/String;
    .end local v20    # "req":Lorg/zoolu/sip/message/Message;
    .end local v21    # "rl":Lorg/zoolu/sip/header/RequestLine;
    .end local v23    # "vh":Lorg/zoolu/sip/header/ViaHeader;
    :goto_4
    return-void

    .line 242
    .restart local v9    # "method":Ljava/lang/String;
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->hasWwwAuthenticateHeader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->getWwwAuthenticateHeader()Lorg/zoolu/sip/header/WwwAuthenticateHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;->getRealmParam()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->realm:Ljava/lang/String;

    .line 244
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 249
    :sswitch_1
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->hasProxyAuthenticateHeader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->getProxyAuthenticateHeader()Lorg/zoolu/sip/header/ProxyAuthenticateHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;->getRealmParam()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->realm:Ljava/lang/String;

    .line 251
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 270
    .restart local v18    # "newbranch":Ljava/lang/String;
    .restart local v20    # "req":Lorg/zoolu/sip/message/Message;
    .restart local v23    # "vh":Lorg/zoolu/sip/header/ViaHeader;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->getProxyAuthenticateHeader()Lorg/zoolu/sip/header/ProxyAuthenticateHeader;

    move-result-object v6

    .restart local v6    # "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    goto/16 :goto_1

    .line 272
    .restart local v19    # "qop_options":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 281
    .end local v9    # "method":Ljava/lang/String;
    .restart local v3    # "digest":Lorg/zoolu/sip/authentication/DigestAuthentication;
    .restart local v21    # "rl":Lorg/zoolu/sip/header/RequestLine;
    :cond_3
    invoke-virtual {v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getProxyAuthorizationHeader()Lorg/zoolu/sip/header/ProxyAuthorizationHeader;

    move-result-object v14

    .restart local v14    # "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    goto :goto_3

    .line 290
    .end local v3    # "digest":Lorg/zoolu/sip/authentication/DigestAuthentication;
    .end local v6    # "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    .end local v14    # "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    .end local v18    # "newbranch":Ljava/lang/String;
    .end local v19    # "qop_options":Ljava/lang/String;
    .end local v20    # "req":Lorg/zoolu/sip/message/Message;
    .end local v21    # "rl":Lorg/zoolu/sip/header/RequestLine;
    .end local v23    # "vh":Lorg/zoolu/sip/header/ViaHeader;
    .restart local v9    # "method":Ljava/lang/String;
    :cond_4
    const-string v4, "INVITE"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "CANCEL"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "BYE"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 293
    :cond_5
    invoke-super/range {p0 .. p2}, Lorg/zoolu/sip/dialog/InviteDialog;->onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    goto :goto_4

    .line 294
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "REFER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v4, v0, v15, v11, v1}, Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;->onDlgReferResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_4

    .line 298
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v12

    .line 299
    .local v12, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    move-object/from16 v8, p0

    move v10, v15

    move-object/from16 v13, p2

    invoke-interface/range {v7 .. v13}, Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;->onDlgAltResponse(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_4

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 8
    .param p1, "t"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside onTransSuccessResponse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msg)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->attempts:I

    .line 314
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v7

    .line 316
    .local v7, "status_line":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v7}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v3

    .line 317
    .local v3, "code":I
    invoke-virtual {v7}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "reason":Ljava/lang/String;
    const-string v0, "INVITE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BYE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/zoolu/sip/dialog/InviteDialog;->onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    .line 332
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REFER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    invoke-interface {v0, p0, v3, v4, p2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;->onDlgReferResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "body":Ljava/lang/String;
    iget-object v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_listener:Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;

    move-object v1, p0

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;->onDlgAltResponse(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V
    .locals 3
    .param p1, "t"    # Lorg/zoolu/sip/transaction/TransactionClient;

    .prologue
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onTransTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msg)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 341
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "method":Ljava/lang/String;
    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    :cond_0
    invoke-super {p0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtendedInviteDialog#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->dialog_sqn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_DIALOG:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 356
    :cond_0
    return-void
.end method

.method public refer(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "refer_to"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->refer(Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;)V

    .line 116
    return-void
.end method

.method public refer(Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;)V
    .locals 1
    .param p1, "refer_to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p2, "referred_by"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lorg/zoolu/sip/message/MessageFactory;->createReferRequest(Lorg/zoolu/sip/dialog/Dialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 129
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->request(Lorg/zoolu/sip/message/Message;)V

    .line 130
    return-void
.end method

.method public refuseRefer(Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v3, 0x25b

    .line 176
    const-string v1, "inside refuseRefer(refer)"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 177
    invoke-static {v3}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v3, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 179
    .local v0, "resp":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 180
    return-void
.end method

.method public request(Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 108
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionClient;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p1, p0}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 109
    .local v0, "t":Lorg/zoolu/sip/transaction/TransactionClient;
    iget-object v1, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    .line 111
    return-void
.end method

.method public respond(Lorg/zoolu/sip/message/Message;)V
    .locals 6
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v5, 0x3

    .line 146
    const-string v3, "inside respond(resp)"

    invoke-virtual {p0, v3, v5}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "method":Ljava/lang/String;
    const-string v3, "INVITE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CANCEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BYE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 164
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v2

    .line 154
    .local v2, "transaction_id":Lorg/zoolu/sip/provider/TransactionIdentifier;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transaction-id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 155
    iget-object v3, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    const-string v3, "responding"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    .line 157
    iget-object v3, p0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->transactions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/transaction/TransactionServer;

    .line 159
    .local v1, "t":Lorg/zoolu/sip/transaction/TransactionServer;
    invoke-virtual {v1, p1}, Lorg/zoolu/sip/transaction/TransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 161
    .end local v1    # "t":Lorg/zoolu/sip/transaction/TransactionServer;
    :cond_2
    const-string v3, "transaction server not found; message discarded"

    invoke-virtual {p0, v3, v5}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method
