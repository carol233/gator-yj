.class public Lorg/zoolu/sip/dialog/InviteDialog;
.super Lorg/zoolu/sip/dialog/Dialog;
.source "InviteDialog.java"

# interfaces
.implements Lorg/zoolu/sip/transaction/TransactionClientListener;
.implements Lorg/zoolu/sip/transaction/InviteTransactionServerListener;
.implements Lorg/zoolu/sip/transaction/AckTransactionServerListener;
.implements Lorg/zoolu/sip/provider/SipProviderListener;


# static fields
.field protected static final D_ACCEPTED:I = 0x5

.field protected static final D_BYED:I = 0x8

.field protected static final D_BYEING:I = 0x7

.field protected static final D_CALL:I = 0x6

.field protected static final D_CLOSE:I = 0x9

.field protected static final D_INIT:I = 0x0

.field protected static final D_INVITED:I = 0x3

.field protected static final D_INVITING:I = 0x2

.field protected static final D_REFUSED:I = 0x4

.field protected static final D_ReACCEPTED:I = 0xf

.field protected static final D_ReINVITED:I = 0xd

.field protected static final D_ReINVITING:I = 0xc

.field protected static final D_ReREFUSED:I = 0xe

.field protected static final D_ReWAITING:I = 0xb

.field protected static final D_WAITING:I = 0x1


# instance fields
.field ack_req:Lorg/zoolu/sip/message/Message;

.field ack_ts:Lorg/zoolu/sip/transaction/AckTransactionServer;

.field bye_ts:Lorg/zoolu/sip/transaction/TransactionServer;

.field invite_offer:Z

.field invite_req:Lorg/zoolu/sip/message/Message;

.field invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

.field listener:Lorg/zoolu/sip/dialog/InviteDialogListener;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/InviteDialogListener;)V
    .locals 0
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "listener"    # Lorg/zoolu/sip/dialog/InviteDialogListener;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lorg/zoolu/sip/dialog/Dialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 159
    invoke-direct {p0, p2}, Lorg/zoolu/sip/dialog/InviteDialog;->init(Lorg/zoolu/sip/dialog/InviteDialogListener;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/dialog/InviteDialogListener;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "invite"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/dialog/InviteDialogListener;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/zoolu/sip/dialog/Dialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 169
    invoke-direct {p0, p3}, Lorg/zoolu/sip/dialog/InviteDialog;->init(Lorg/zoolu/sip/dialog/InviteDialogListener;)V

    .line 171
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 172
    iput-object p2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    .line 173
    new-instance v0, Lorg/zoolu/sip/transaction/InviteTransactionServer;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p1, v1, p0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/InviteTransactionServerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    .line 174
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 175
    return-void
.end method

.method private init(Lorg/zoolu/sip/dialog/InviteDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/zoolu/sip/dialog/InviteDialogListener;

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipProvider;->getLog()Lorg/zoolu/tools/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->log:Lorg/zoolu/tools/Log;

    .line 180
    iput-object p1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    .line 181
    iput-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    .line 182
    iput-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_req:Lorg/zoolu/sip/message/Message;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_offer:Z

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 185
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "sdp"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xc8

    .line 473
    const-string v0, "inside accept(sdp)"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 474
    invoke-static {v2}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1, p2}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public ackWithAnswer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "session_descriptor"    # Ljava/lang/String;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    new-instance v1, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->setLocalContact(Lorg/zoolu/sip/address/NameAddress;)V

    .line 351
    :cond_0
    invoke-static {p0, p2}, Lorg/zoolu/sip/message/MessageFactory;->create2xxAckRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 353
    .local v0, "ack":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->ackWithAnswer(Lorg/zoolu/sip/message/Message;)V

    .line 354
    return-void
.end method

.method public ackWithAnswer(Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "ack"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 358
    iput-object p1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_req:Lorg/zoolu/sip/message/Message;

    .line 360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_offer:Z

    .line 361
    new-instance v0, Lorg/zoolu/sip/transaction/AckTransactionClient;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/zoolu/sip/transaction/AckTransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 363
    .local v0, "ack_tc":Lorg/zoolu/sip/transaction/AckTransactionClient;
    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/AckTransactionClient;->request()V

    .line 364
    return-void
.end method

.method public busy()V
    .locals 2

    .prologue
    const/16 v1, 0x1e6

    .line 498
    invoke-static {v1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->refuse(ILjava/lang/String;)V

    .line 499
    return-void
.end method

.method public bye()V
    .locals 3

    .prologue
    .line 509
    const-string v1, "inside bye()"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 510
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-static {p0}, Lorg/zoolu/sip/message/MessageFactory;->createByeRequest(Lorg/zoolu/sip/dialog/Dialog;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 512
    .local v0, "bye":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->bye(Lorg/zoolu/sip/message/Message;)V

    .line 514
    .end local v0    # "bye":Lorg/zoolu/sip/message/Message;
    :cond_0
    return-void
.end method

.method public bye(Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "bye"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 524
    const-string v1, "inside bye(bye)"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 525
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 529
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionClient;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p1, p0}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 531
    .local v0, "tc":Lorg/zoolu/sip/transaction/TransactionClient;
    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    .line 534
    .end local v0    # "tc":Lorg/zoolu/sip/transaction/TransactionClient;
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 542
    const-string v1, "inside cancel()"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 543
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-static {v1, p0}, Lorg/zoolu/sip/message/MessageFactory;->createCancelRequest(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/dialog/Dialog;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 545
    .local v0, "cancel":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->cancel(Lorg/zoolu/sip/message/Message;)V

    .line 549
    .end local v0    # "cancel":Lorg/zoolu/sip/message/Message;
    :cond_1
    :goto_0
    return-void

    .line 546
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    :cond_3
    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    invoke-virtual {v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->terminate()V

    goto :goto_0
.end method

.method public cancel(Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "cancel"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 557
    const-string v1, "inside cancel(cancel)"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 558
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    :cond_0
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionClient;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 561
    .local v0, "tc":Lorg/zoolu/sip/transaction/TransactionClient;
    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    .line 565
    .end local v0    # "tc":Lorg/zoolu/sip/transaction/TransactionClient;
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    :cond_3
    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    invoke-virtual {v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->terminate()V

    goto :goto_0
.end method

.method public getInviteMessage()Lorg/zoolu/sip/message/Message;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    return-object v0
.end method

.method protected getStatus()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->status:I

    return v0
.end method

.method protected getStatusDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->status:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 90
    :pswitch_1
    const-string v0, "D_INIT"

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "D_WAITING"

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "D_INVITING"

    goto :goto_0

    .line 96
    :pswitch_4
    const-string v0, "D_INVITED"

    goto :goto_0

    .line 98
    :pswitch_5
    const-string v0, "D_REFUSED"

    goto :goto_0

    .line 100
    :pswitch_6
    const-string v0, "D_ACCEPTED"

    goto :goto_0

    .line 102
    :pswitch_7
    const-string v0, "D_CALL"

    goto :goto_0

    .line 104
    :pswitch_8
    const-string v0, "D_ReWAITING"

    goto :goto_0

    .line 106
    :pswitch_9
    const-string v0, "D_ReINVITING"

    goto :goto_0

    .line 108
    :pswitch_a
    const-string v0, "D_ReINVITED"

    goto :goto_0

    .line 110
    :pswitch_b
    const-string v0, "D_ReREFUSED"

    goto :goto_0

    .line 112
    :pswitch_c
    const-string v0, "D_ReACCEPTED"

    goto :goto_0

    .line 114
    :pswitch_d
    const-string v0, "D_BYEING"

    goto :goto_0

    .line 116
    :pswitch_e
    const-string v0, "D_BYED"

    goto :goto_0

    .line 118
    :pswitch_f
    const-string v0, "D_CLOSE"

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public invite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "session_descriptor"    # Ljava/lang/String;
    .param p5, "icsi"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "inside invite(callee,caller,contact,sdp)"

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v2, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v2, p1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "to_url":Lorg/zoolu/sip/address/NameAddress;
    new-instance v3, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v3, p2}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 221
    .local v3, "from_url":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {v2}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v1

    .line 223
    .local v1, "request_uri":Lorg/zoolu/sip/address/SipURL;
    const/4 v4, 0x0

    .line 224
    .local v4, "contact_url":Lorg/zoolu/sip/address/NameAddress;
    if-eqz p3, :cond_2

    .line 225
    const-string v0, "sip:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 226
    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    .end local v4    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    invoke-direct {v4, p3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v4    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    :goto_1
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/zoolu/sip/message/MessageFactory;->createInviteRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v7

    .line 236
    .local v7, "invite":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v7}, Lorg/zoolu/sip/dialog/InviteDialog;->invite(Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 228
    .end local v7    # "invite":Lorg/zoolu/sip/message/Message;
    :cond_1
    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    .end local v4    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    new-instance v0, Lorg/zoolu/sip/address/SipURL;

    iget-object v5, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v5}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v6}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v6

    invoke-direct {v0, p3, v5, v6}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v0}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    .restart local v4    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    goto :goto_1

    .line 231
    :cond_2
    move-object v4, v3

    goto :goto_1
.end method

.method public invite(Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v3, 0x0

    .line 247
    const-string v1, "inside invite(invite)"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 248
    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 252
    iput-object p1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    .line 253
    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {p0, v3, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 254
    new-instance v0, Lorg/zoolu/sip/transaction/InviteTransactionClient;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, v1, v2, p0}, Lorg/zoolu/sip/transaction/InviteTransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 256
    .local v0, "invite_tc":Lorg/zoolu/sip/transaction/InviteTransactionClient;
    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->request()V

    goto :goto_0
.end method

.method public inviteWithoutOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_offer:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 265
    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialog;->invite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public inviteWithoutOffer(Lorg/zoolu/sip/message/Message;)V
    .locals 1
    .param p1, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_offer:Z

    .line 274
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->invite(Lorg/zoolu/sip/message/Message;)V

    .line 275
    return-void
.end method

.method public isConfirmed()Z
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->status:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->status:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEarly()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->status:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionActive()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->status:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listen()V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 193
    new-instance v0, Lorg/zoolu/sip/transaction/InviteTransactionServer;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/transaction/InviteTransactionServerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    .line 194
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->listen()V

    goto :goto_0
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 10
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 597
    const-string v0, "inside onReceivedMessage(sip_provider,message)"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isAck()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isCancel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/CSeqHeader;->getSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/InviteDialog;->getRemoteCSeq()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 601
    const-string v0, "Request message is too late (CSeq too small): Message discarded"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isInvite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 614
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 617
    :goto_2
    iput-object p2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    .line 618
    new-instance v0, Lorg/zoolu/sip/transaction/InviteTransactionServer;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p1, v1, p0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/InviteTransactionServerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    .line 621
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 622
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v2

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgInvite(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 608
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 616
    :cond_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    goto :goto_2

    .line 627
    :cond_5
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-interface {v0, p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgReInvite(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 630
    :cond_6
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isAck()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 635
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_ts:Lorg/zoolu/sip/transaction/AckTransactionServer;

    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/AckTransactionServer;->terminate()V

    .line 636
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgAck(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 637
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgCall(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto/16 :goto_0

    .line 631
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 640
    :cond_9
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 641
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v7

    .line 644
    .local v7, "code":I
    const/16 v0, 0xc8

    if-lt v7, v0, :cond_a

    const/16 v0, 0x12c

    if-ge v7, v0, :cond_a

    const/4 v0, 0x1

    :goto_4
    const-string v1, "code 2xx was expected"

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyThat(ZLjava/lang/String;)Z

    .line 645
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_req:Lorg/zoolu/sip/message/Message;

    if-eqz v0, :cond_0

    .line 646
    new-instance v6, Lorg/zoolu/sip/transaction/AckTransactionClient;

    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_req:Lorg/zoolu/sip/message/Message;

    const/4 v1, 0x0

    invoke-direct {v6, p1, v0, v1}, Lorg/zoolu/sip/transaction/AckTransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 648
    .local v6, "ack_tc":Lorg/zoolu/sip/transaction/AckTransactionClient;
    invoke-virtual {v6}, Lorg/zoolu/sip/transaction/AckTransactionClient;->request()V

    goto/16 :goto_0

    .line 644
    .end local v6    # "ack_tc":Lorg/zoolu/sip/transaction/AckTransactionClient;
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 652
    .end local v7    # "code":I
    :cond_b
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isBye()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 653
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 656
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionServer;

    invoke-direct {v0, p1, p2, p0}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->bye_ts:Lorg/zoolu/sip/transaction/TransactionServer;

    .line 658
    const/16 v0, 0xc8

    const/16 v1, 0xc8

    invoke-static {v1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v8

    .line 660
    .local v8, "resp":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v8}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 661
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0, p2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgBye(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/message/Message;)V

    .line 662
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 663
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto/16 :goto_0

    .line 653
    .end local v8    # "resp":Lorg/zoolu/sip/message/Message;
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 666
    :cond_e
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 667
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    new-instance v9, Lorg/zoolu/sip/transaction/TransactionServer;

    const/4 v0, 0x0

    invoke-direct {v9, p1, p2, v0}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V

    .line 673
    .local v9, "ts":Lorg/zoolu/sip/transaction/TransactionServer;
    const/16 v0, 0xc8

    const/16 v1, 0xc8

    invoke-static {v1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    .line 676
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    const/16 v1, 0x1e7

    const/16 v2, 0x1e7

    invoke-static {v2}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v8

    .line 678
    .restart local v8    # "resp":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v8}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 679
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0, p2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgCancel(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_0

    .line 667
    .end local v8    # "resp":Lorg/zoolu/sip/message/Message;
    .end local v9    # "ts":Lorg/zoolu/sip/transaction/TransactionServer;
    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 682
    :cond_11
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    new-instance v9, Lorg/zoolu/sip/transaction/TransactionServer;

    const/4 v0, 0x0

    invoke-direct {v9, p1, p2, v0}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V

    .line 686
    .restart local v9    # "ts":Lorg/zoolu/sip/transaction/TransactionServer;
    const/16 v0, 0x195

    const/16 v1, 0x195

    invoke-static {v1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_0
.end method

.method public onTransAckTimeout(Lorg/zoolu/sip/transaction/AckTransactionServer;)V
    .locals 3
    .param p1, "ts"    # Lorg/zoolu/sip/transaction/AckTransactionServer;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 884
    const-string v0, "inside onAckSrvTimeout(ts)"

    invoke-virtual {p0, v0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 891
    :goto_1
    return-void

    .line 885
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 888
    :cond_2
    const-string v0, "No ACK received.."

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 889
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 890
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto :goto_1
.end method

.method public onTransFailureAck(Lorg/zoolu/sip/transaction/InviteTransactionServer;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "ts"    # Lorg/zoolu/sip/transaction/InviteTransactionServer;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v2, 0xe

    .line 866
    const-string v0, "inside onTransFailureAck(ts,msg)"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 867
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 875
    :goto_1
    return-void

    .line 867
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 869
    :cond_2
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 870
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    goto :goto_1

    .line 872
    :cond_3
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 873
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto :goto_1
.end method

.method public onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 9
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x6

    const/16 v5, 0x12c

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inside onTransFailureResponse("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",msg)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 725
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v4, "INVITE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 726
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v8}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 755
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 726
    goto :goto_0

    .line 728
    :cond_3
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v6

    .line 729
    .local v6, "statusline":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    .line 730
    .local v2, "code":I
    if-lt v2, v5, :cond_4

    const/16 v0, 0x2bc

    if-ge v2, v0, :cond_4

    :goto_2
    const-string v0, "error code was expected"

    invoke-virtual {p0, v3, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyThat(ZLjava/lang/String;)Z

    .line 731
    invoke-virtual {p0, v8}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 732
    invoke-virtual {p0, v7}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 733
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1, p2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgReInviteFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_1

    :cond_4
    move v3, v1

    .line 730
    goto :goto_2

    .line 736
    :cond_5
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 737
    if-lt v2, v5, :cond_6

    const/16 v0, 0x190

    if-ge v2, v0, :cond_6

    .line 738
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getContacts()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgInviteRedirectResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/header/MultipleHeader;Lorg/zoolu/sip/message/Message;)V

    .line 743
    :goto_3
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto :goto_1

    .line 741
    :cond_6
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1, p2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgInviteFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_3

    .line 745
    .end local v2    # "code":I
    .end local v6    # "statusline":Lorg/zoolu/sip/header/StatusLine;
    :cond_7
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BYE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v6

    .line 749
    .restart local v6    # "statusline":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    .line 750
    .restart local v2    # "code":I
    if-lt v2, v5, :cond_8

    const/16 v0, 0x2bc

    if-ge v2, v0, :cond_8

    :goto_4
    const-string v0, "error code was expected"

    invoke-virtual {p0, v3, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyThat(ZLjava/lang/String;)Z

    .line 751
    invoke-virtual {p0, v7}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 752
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1, p2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgByeFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_1

    :cond_8
    move v3, v1

    .line 750
    goto :goto_4
.end method

.method public onTransProvisionalResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 7
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 703
    const-string v0, "inside onTransProvisionalResponse(tc,mdg)"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 704
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v6

    .line 706
    .local v6, "statusline":Lorg/zoolu/sip/header/StatusLine;
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    invoke-virtual {v6}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgInviteProvisionalResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 709
    .end local v6    # "statusline":Lorg/zoolu/sip/header/StatusLine;
    :cond_0
    return-void
.end method

.method public onTransRequest(Lorg/zoolu/sip/transaction/TransactionServer;Lorg/zoolu/sip/message/Message;)V
    .locals 6
    .param p1, "ts"    # Lorg/zoolu/sip/transaction/TransactionServer;
    .param p2, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v2, 0x1

    .line 845
    const-string v0, "inside onTransRequest(ts,msg)"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 846
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionServer;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 850
    iput-object p2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    .line 851
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {p0, v2, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 852
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v2

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgInvite(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 11
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v10, 0x12c

    const/16 v9, 0xc8

    const/16 v5, 0xc

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 771
    const-string v0, "inside onTransSuccessResponse(tc,msg)"

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 772
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v4, "INVITE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 773
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 809
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 773
    goto :goto_0

    .line 775
    :cond_3
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v8

    .line 776
    .local v8, "statusline":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v8}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    .line 777
    .local v2, "code":I
    if-lt v2, v9, :cond_5

    if-ge v2, v10, :cond_5

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v4, "INVITE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    const-string v0, "2xx for invite was expected"

    invoke-virtual {p0, v3, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyThat(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v7

    .line 782
    .local v7, "re_inviting":Z
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 783
    invoke-virtual {p0, v1, p2}, Lorg/zoolu/sip/dialog/InviteDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 784
    iget-boolean v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_offer:Z

    if-eqz v0, :cond_4

    .line 786
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/MessageFactory;->create2xxAckRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_req:Lorg/zoolu/sip/message/Message;

    .line 787
    new-instance v6, Lorg/zoolu/sip/transaction/AckTransactionClient;

    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_req:Lorg/zoolu/sip/message/Message;

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v3}, Lorg/zoolu/sip/transaction/AckTransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 789
    .local v6, "ack_tc":Lorg/zoolu/sip/transaction/AckTransactionClient;
    invoke-virtual {v6}, Lorg/zoolu/sip/transaction/AckTransactionClient;->request()V

    .line 791
    .end local v6    # "ack_tc":Lorg/zoolu/sip/transaction/AckTransactionClient;
    :cond_4
    if-nez v7, :cond_6

    .line 792
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v8}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgInviteSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 794
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgCall(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto :goto_1

    .end local v7    # "re_inviting":Z
    :cond_5
    move v3, v1

    .line 777
    goto :goto_2

    .line 796
    .restart local v7    # "re_inviting":Z
    :cond_6
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v8}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgReInviteSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_1

    .line 798
    .end local v2    # "code":I
    .end local v7    # "re_inviting":Z
    .end local v8    # "statusline":Lorg/zoolu/sip/header/StatusLine;
    :cond_7
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BYE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v8

    .line 802
    .restart local v8    # "statusline":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v8}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    .line 803
    .restart local v2    # "code":I
    if-lt v2, v9, :cond_8

    if-ge v2, v10, :cond_8

    :goto_3
    const-string v0, "2xx for bye was expected"

    invoke-virtual {p0, v3, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyThat(ZLjava/lang/String;)Z

    .line 804
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 805
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-virtual {v8}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1, p2}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgByeSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 807
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto/16 :goto_1

    :cond_8
    move v3, v1

    .line 803
    goto :goto_3
.end method

.method public onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V
    .locals 3
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;

    .prologue
    const/16 v2, 0x9

    .line 816
    const-string v0, "inside onTransTimeout(tc,msg)"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 817
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 818
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 830
    :cond_1
    :goto_1
    return-void

    .line 818
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 820
    :cond_3
    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/InviteDialog;->cancel()V

    .line 821
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 822
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgTimeout(Lorg/zoolu/sip/dialog/InviteDialog;)V

    .line 823
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto :goto_1

    .line 824
    :cond_4
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 828
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->listener:Lorg/zoolu/sip/dialog/InviteDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/InviteDialogListener;->onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V

    goto :goto_1
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 897
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InviteDialog#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->dialog_sqn:I

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

    .line 900
    :cond_0
    return-void
.end method

.method public reInvite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "session_descriptor"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v2, "inside reInvite(contact,sdp)"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 289
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {p0, p2}, Lorg/zoolu/sip/message/MessageFactory;->createInviteRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v1

    .line 294
    .local v1, "invite":Lorg/zoolu/sip/message/Message;
    if-eqz p1, :cond_1

    .line 296
    const-string v2, "sip:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 297
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v0, p1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "contact_url":Lorg/zoolu/sip/address/NameAddress;
    :goto_1
    new-instance v2, Lorg/zoolu/sip/header/ContactHeader;

    invoke-direct {v2, v0}, Lorg/zoolu/sip/header/ContactHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/message/Message;->setContactHeader(Lorg/zoolu/sip/header/ContactHeader;)V

    .line 303
    .end local v0    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->reInvite(Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 299
    :cond_2
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    new-instance v2, Lorg/zoolu/sip/address/SipURL;

    iget-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v2}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    .restart local v0    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    goto :goto_1
.end method

.method public reInvite(Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 313
    const-string v1, "inside reInvite(invite)"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 314
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 317
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 318
    iput-object p1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    .line 319
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 320
    new-instance v0, Lorg/zoolu/sip/transaction/InviteTransactionClient;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, v1, v2, p0}, Lorg/zoolu/sip/transaction/InviteTransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 322
    .local v0, "invite_tc":Lorg/zoolu/sip/transaction/InviteTransactionClient;
    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->request()V

    goto :goto_0
.end method

.method public reInviteWithoutOffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "session_descriptor"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_offer:Z

    .line 344
    invoke-virtual {p0, p1, p2}, Lorg/zoolu/sip/dialog/InviteDialog;->reInvite(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public reInviteWithoutOffer(Lorg/zoolu/sip/message/Message;)V
    .locals 1
    .param p1, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_offer:Z

    .line 333
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->reInvite(Lorg/zoolu/sip/message/Message;)V

    .line 334
    return-void
.end method

.method public redirect(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside redirect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public refuse()V
    .locals 3

    .prologue
    const/16 v2, 0x193

    .line 491
    const-string v0, "inside refuse()"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 494
    invoke-static {v2}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/zoolu/sip/dialog/InviteDialog;->refuse(ILjava/lang/String;)V

    .line 495
    return-void
.end method

.method public refuse(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside refuse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 483
    invoke-virtual {p0, p1, p2, v2, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public respond(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "sdp"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside respond("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 445
    invoke-virtual {p0, v4}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    :cond_0
    const/4 v0, 0x0

    .line 447
    .local v0, "contact_address":Lorg/zoolu/sip/address/NameAddress;
    if-eqz p3, :cond_1

    .line 448
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    .end local v0    # "contact_address":Lorg/zoolu/sip/address/NameAddress;
    invoke-direct {v0, p3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 449
    .restart local v0    # "contact_address":Lorg/zoolu/sip/address/NameAddress;
    :cond_1
    iget-object v2, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_req:Lorg/zoolu/sip/message/Message;

    invoke-static {v2, p1, p2, v0}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v1

    .line 451
    .local v1, "resp":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v1, p4}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 457
    .end local v0    # "contact_address":Lorg/zoolu/sip/address/NameAddress;
    .end local v1    # "resp":Lorg/zoolu/sip/message/Message;
    :goto_0
    return-void

    .line 454
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog isn\'t in \"invited\" state: cannot respond ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/InviteDialog;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/InviteDialog;->getDialogID()Lorg/zoolu/sip/provider/DialogIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/zoolu/sip/dialog/InviteDialog;->printWarning(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public respond(Lorg/zoolu/sip/message/Message;)V
    .locals 7
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v6, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 380
    const-string v3, "inside respond(resp)"

    invoke-virtual {p0, v3, v5}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "method":Ljava/lang/String;
    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 383
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 384
    const-string v3, "respond(): InviteDialog not in (re)invited state: No response now"

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 437
    :cond_1
    :goto_1
    return-void

    .line 383
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 390
    :cond_3
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 392
    .local v0, "code":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_4

    if-ge v0, v6, :cond_4

    .line 393
    iget-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    invoke-virtual {v3, p1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    goto :goto_1

    .line 397
    :cond_4
    if-lt v0, v6, :cond_5

    .line 398
    invoke-virtual {p0, v4, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 401
    :cond_5
    if-lt v0, v6, :cond_7

    const/16 v3, 0x12c

    if-ge v0, v3, :cond_7

    .line 402
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 403
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 408
    :goto_2
    iget-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    invoke-virtual {v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->terminate()V

    .line 409
    iget-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    invoke-virtual {v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v1

    .line 410
    .local v1, "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    new-instance v3, Lorg/zoolu/sip/transaction/AckTransactionServer;

    iget-object v4, p0, Lorg/zoolu/sip/dialog/InviteDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v3, v4, v1, p1, p0}, Lorg/zoolu/sip/transaction/AckTransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/provider/ConnectionIdentifier;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/AckTransactionServerListener;)V

    iput-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_ts:Lorg/zoolu/sip/transaction/AckTransactionServer;

    .line 412
    iget-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->ack_ts:Lorg/zoolu/sip/transaction/AckTransactionServer;

    invoke-virtual {v3}, Lorg/zoolu/sip/transaction/AckTransactionServer;->respond()V

    goto :goto_1

    .line 405
    .end local v1    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    :cond_6
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    goto :goto_2

    .line 421
    :cond_7
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 422
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    .line 425
    :goto_3
    iget-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->invite_ts:Lorg/zoolu/sip/transaction/InviteTransactionServer;

    invoke-virtual {v3, p1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    goto :goto_1

    .line 424
    :cond_8
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->changeStatus(I)V

    goto :goto_3

    .line 432
    .end local v0    # "code":I
    :cond_9
    const-string v3, "BYE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->statusIs(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/InviteDialog;->verifyStatus(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    iget-object v3, p0, Lorg/zoolu/sip/dialog/InviteDialog;->bye_ts:Lorg/zoolu/sip/transaction/TransactionServer;

    invoke-virtual {v3, p1}, Lorg/zoolu/sip/transaction/TransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    goto :goto_1
.end method

.method public ring(Ljava/lang/String;)V
    .locals 3
    .param p1, "sdp"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xb4

    .line 464
    const-string v0, "inside ring()"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->printLog(Ljava/lang/String;I)V

    .line 465
    invoke-static {v2}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method
