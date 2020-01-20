.class public Lorg/zoolu/sip/dialog/NotifierDialog;
.super Lorg/zoolu/sip/dialog/Dialog;
.source "NotifierDialog.java"

# interfaces
.implements Lorg/zoolu/sip/transaction/TransactionClientListener;


# static fields
.field protected static final ACTIVE:Ljava/lang/String; = "active"

.field protected static final D_ACTIVE:I = 0x4

.field protected static final D_INIT:I = 0x0

.field protected static final D_PENDING:I = 0x3

.field protected static final D_SUBSCRIBED:I = 0x2

.field protected static final D_TERMINATED:I = 0x9

.field protected static final D_WAITING:I = 0x1

.field protected static final PENDING:Ljava/lang/String; = "pending"

.field protected static final TERMINATED:Ljava/lang/String; = "terminated"


# instance fields
.field event:Ljava/lang/String;

.field id:Ljava/lang/String;

.field listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

.field notify_transaction:Lorg/zoolu/sip/transaction/TransactionClient;

.field subscribe_req:Lorg/zoolu/sip/message/Message;

.field subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionServer;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/NotifierDialogListener;)V
    .locals 0
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "listener"    # Lorg/zoolu/sip/dialog/NotifierDialogListener;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lorg/zoolu/sip/dialog/Dialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 161
    invoke-direct {p0, p2}, Lorg/zoolu/sip/dialog/NotifierDialog;->init(Lorg/zoolu/sip/dialog/NotifierDialogListener;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/dialog/NotifierDialogListener;)V
    .locals 3
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "subscribe"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/dialog/NotifierDialogListener;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/zoolu/sip/dialog/Dialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 171
    invoke-direct {p0, p3}, Lorg/zoolu/sip/dialog/NotifierDialog;->init(Lorg/zoolu/sip/dialog/NotifierDialogListener;)V

    .line 173
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    .line 174
    iput-object p2, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_req:Lorg/zoolu/sip/message/Message;

    .line 175
    new-instance v1, Lorg/zoolu/sip/transaction/TransactionServer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionServer;

    .line 177
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Lorg/zoolu/sip/dialog/NotifierDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 178
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getEventHeader()Lorg/zoolu/sip/header/EventHeader;

    move-result-object v0

    .line 179
    .local v0, "eh":Lorg/zoolu/sip/header/EventHeader;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lorg/zoolu/sip/header/EventHeader;->getEvent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->event:Ljava/lang/String;

    .line 181
    invoke-virtual {v0}, Lorg/zoolu/sip/header/EventHeader;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->id:Ljava/lang/String;

    .line 183
    :cond_0
    return-void
.end method

.method private init(Lorg/zoolu/sip/dialog/NotifierDialogListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/zoolu/sip/dialog/NotifierDialogListener;

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object p1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    .line 188
    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionServer;

    .line 189
    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->notify_transaction:Lorg/zoolu/sip/transaction/TransactionClient;

    .line 190
    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_req:Lorg/zoolu/sip/message/Message;

    .line 191
    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->event:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->id:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    .line 194
    return-void
.end method


# virtual methods
.method public accept(ILjava/lang/String;)V
    .locals 7
    .param p1, "expires"    # I
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0xca

    .line 214
    const-string v0, "inside accept()"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 215
    invoke-static {v1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/zoolu/sip/dialog/NotifierDialog;->respond(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public activate()V
    .locals 1

    .prologue
    .line 253
    sget v0, Lorg/zoolu/sip/provider/SipStack;->default_expires:I

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->activate(I)V

    .line 254
    return-void
.end method

.method public activate(I)V
    .locals 2
    .param p1, "expires"    # I

    .prologue
    const/4 v1, 0x0

    .line 258
    const-string v0, "active"

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->notify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getStatus()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    return v0
.end method

.method protected getStatusDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    const-string v0, "D_INIT"

    goto :goto_0

    .line 95
    :pswitch_2
    const-string v0, "D_WAITING"

    goto :goto_0

    .line 97
    :pswitch_3
    const-string v0, "D_SUBSCRIBED"

    goto :goto_0

    .line 99
    :pswitch_4
    const-string v0, "D_PENDING"

    goto :goto_0

    .line 101
    :pswitch_5
    const-string v0, "D_ACTIVE"

    goto :goto_0

    .line 103
    :pswitch_6
    const-string v0, "D_TERMINATED"

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public isConfirmed()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

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
    .line 117
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubscriptionActive()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubscriptionPending()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubscriptionTerminated()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

    const/16 v1, 0x9

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
    .line 127
    iget v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->status:I

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
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 200
    const-string v0, "inside method listen()"

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "first subscription already received"

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    .line 208
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v1, Lorg/zoolu/sip/provider/MethodIdentifier;

    const-string v2, "SUBSCRIBE"

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/MethodIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    goto :goto_0
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "expires"    # I
    .param p3, "content_type"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v2, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->event:Ljava/lang/String;

    iget-object v3, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->id:Ljava/lang/String;

    invoke-static {p0, v2, v3, p3, p4}, Lorg/zoolu/sip/message/MessageFactory;->createNotifyRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 293
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    if-eqz p1, :cond_1

    .line 294
    new-instance v1, Lorg/zoolu/sip/header/SubscriptionStateHeader;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/header/SubscriptionStateHeader;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, "sh":Lorg/zoolu/sip/header/SubscriptionStateHeader;
    if-ltz p2, :cond_0

    .line 296
    invoke-virtual {v1, p2}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->setExpires(I)Lorg/zoolu/sip/header/SubscriptionStateHeader;

    .line 297
    :cond_0
    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setSubscriptionStateHeader(Lorg/zoolu/sip/header/SubscriptionStateHeader;)V

    .line 299
    .end local v1    # "sh":Lorg/zoolu/sip/header/SubscriptionStateHeader;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->notify(Lorg/zoolu/sip/message/Message;)V

    .line 300
    return-void
.end method

.method public notify(Lorg/zoolu/sip/message/Message;)V
    .locals 6
    .param p1, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 304
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getSubscriptionStateHeader()Lorg/zoolu/sip/header/SubscriptionStateHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "subscription_state":Ljava/lang/String;
    const-string v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    .line 315
    :cond_1
    :goto_0
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionClient;

    iget-object v2, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v2, p1, p0}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    .line 317
    .local v0, "notify_transaction":Lorg/zoolu/sip/transaction/TransactionClient;
    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    .line 318
    return-void

    .line 308
    .end local v0    # "notify_transaction":Lorg/zoolu/sip/transaction/TransactionClient;
    :cond_2
    const-string v2, "pending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    invoke-virtual {p0, v4}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    goto :goto_0

    .line 311
    :cond_3
    const-string v2, "terminated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    goto :goto_0
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 8
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x1

    .line 372
    const-string v0, "onReceivedMessage()"

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 373
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string v0, "subscription already terminated: message discarded"

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isSubscribe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    .line 383
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v1, Lorg/zoolu/sip/provider/MethodIdentifier;

    const-string v4, "SUBSCRIBE"

    invoke-direct {v1, v4}, Lorg/zoolu/sip/provider/MethodIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 386
    :cond_2
    iput-object p2, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_req:Lorg/zoolu/sip/message/Message;

    .line 387
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v2

    .line 388
    .local v2, "target":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    .line 389
    .local v3, "subscriber":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getEventHeader()Lorg/zoolu/sip/header/EventHeader;

    move-result-object v7

    .line 390
    .local v7, "eh":Lorg/zoolu/sip/header/EventHeader;
    if-eqz v7, :cond_3

    .line 391
    invoke-virtual {v7}, Lorg/zoolu/sip/header/EventHeader;->getEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->event:Ljava/lang/String;

    .line 392
    invoke-virtual {v7}, Lorg/zoolu/sip/header/EventHeader;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->id:Ljava/lang/String;

    .line 394
    :cond_3
    invoke-virtual {p0, v5, p2}, Lorg/zoolu/sip/dialog/NotifierDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 395
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionServer;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, p2, v4}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionServer;

    .line 397
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    iget-object v4, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->event:Ljava/lang/String;

    iget-object v5, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->id:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/zoolu/sip/dialog/NotifierDialogListener;->onDlgSubscribe(Lorg/zoolu/sip/dialog/NotifierDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 401
    .end local v2    # "target":Lorg/zoolu/sip/address/NameAddress;
    .end local v3    # "subscriber":Lorg/zoolu/sip/address/NameAddress;
    .end local v7    # "eh":Lorg/zoolu/sip/header/EventHeader;
    :cond_4
    const-string v0, "message is not a SUBSCRIBE: message discarded"

    invoke-virtual {p0, v0, v5}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 348
    const-string v1, "onTransFailureResponse()"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 349
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    .line 350
    .local v0, "status_line":Lorg/zoolu/sip/header/StatusLine;
    iget-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3, p2}, Lorg/zoolu/sip/dialog/NotifierDialogListener;->onDlgNotificationFailure(Lorg/zoolu/sip/dialog/NotifierDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onTransProvisionalResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 327
    const-string v0, "onTransProvisionalResponse()"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 329
    return-void
.end method

.method public onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 336
    const-string v1, "onTransSuccessResponse()"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    .line 338
    .local v0, "status_line":Lorg/zoolu/sip/header/StatusLine;
    iget-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3, p2}, Lorg/zoolu/sip/dialog/NotifierDialogListener;->onDlgNotificationSuccess(Lorg/zoolu/sip/dialog/NotifierDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V
    .locals 3
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;

    .prologue
    const/16 v2, 0x9

    .line 360
    const-string v0, "onTransTimeout()"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 361
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/NotifierDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/dialog/NotifierDialog;->changeStatus(I)V

    .line 363
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->listener:Lorg/zoolu/sip/dialog/NotifierDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/NotifierDialogListener;->onDlgNotifyTimeout(Lorg/zoolu/sip/dialog/NotifierDialog;)V

    .line 366
    :cond_0
    return-void
.end method

.method public pending()V
    .locals 1

    .prologue
    .line 263
    sget v0, Lorg/zoolu/sip/provider/SipStack;->default_expires:I

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->pending(I)V

    .line 264
    return-void
.end method

.method public pending(I)V
    .locals 2
    .param p1, "expires"    # I

    .prologue
    const/4 v1, 0x0

    .line 268
    const-string v0, "pending"

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->notify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifierDialog#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->dialog_sqn:I

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

    .line 413
    :cond_0
    return-void
.end method

.method public refuse()V
    .locals 7

    .prologue
    const/16 v1, 0x193

    const/4 v4, 0x0

    .line 220
    const-string v0, "inside refuse()"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 221
    invoke-static {v1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/zoolu/sip/dialog/NotifierDialog;->respond(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public respond(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "expires"    # I
    .param p4, "contact"    # Ljava/lang/String;
    .param p5, "content_type"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;

    .prologue
    .line 230
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

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "contact_url":Lorg/zoolu/sip/address/NameAddress;
    if-eqz p4, :cond_0

    .line 233
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    .end local v0    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    invoke-direct {v0, p4}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v0    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_req:Lorg/zoolu/sip/message/Message;

    invoke-static {p1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, v0}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v1

    .line 236
    .local v1, "resp":Lorg/zoolu/sip/message/Message;
    if-ltz p3, :cond_1

    .line 237
    new-instance v2, Lorg/zoolu/sip/header/ExpiresHeader;

    invoke-direct {v2, p3}, Lorg/zoolu/sip/header/ExpiresHeader;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/message/Message;->setExpiresHeader(Lorg/zoolu/sip/header/ExpiresHeader;)V

    .line 238
    :cond_1
    if-eqz p6, :cond_2

    .line 239
    invoke-virtual {v1, p5, p6}, Lorg/zoolu/sip/message/Message;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2
    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 241
    return-void
.end method

.method public respond(Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 245
    const-string v0, "inside respond(resp)"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/NotifierDialog;->printLog(Ljava/lang/String;I)V

    .line 246
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/dialog/NotifierDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionServer;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/transaction/TransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    .line 249
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->terminate(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v2, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->event:Ljava/lang/String;

    iget-object v3, p0, Lorg/zoolu/sip/dialog/NotifierDialog;->id:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4, v4}, Lorg/zoolu/sip/message/MessageFactory;->createNotifyRequest(Lorg/zoolu/sip/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 280
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    new-instance v1, Lorg/zoolu/sip/header/SubscriptionStateHeader;

    const-string v2, "terminated"

    invoke-direct {v1, v2}, Lorg/zoolu/sip/header/SubscriptionStateHeader;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "sh":Lorg/zoolu/sip/header/SubscriptionStateHeader;
    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {v1, p1}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->setReason(Ljava/lang/String;)Lorg/zoolu/sip/header/SubscriptionStateHeader;

    .line 284
    :cond_0
    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->setSubscriptionStateHeader(Lorg/zoolu/sip/header/SubscriptionStateHeader;)V

    .line 285
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/NotifierDialog;->notify(Lorg/zoolu/sip/message/Message;)V

    .line 286
    return-void
.end method
