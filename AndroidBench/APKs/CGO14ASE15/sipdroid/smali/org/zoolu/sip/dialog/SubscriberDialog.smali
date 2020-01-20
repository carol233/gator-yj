.class public Lorg/zoolu/sip/dialog/SubscriberDialog;
.super Lorg/zoolu/sip/dialog/Dialog;
.source "SubscriberDialog.java"

# interfaces
.implements Lorg/zoolu/sip/transaction/TransactionClientListener;


# static fields
.field protected static final ACTIVE:Ljava/lang/String; = "active"

.field protected static final D_ACCEPTED:I = 0x2

.field protected static final D_ACTIVE:I = 0x4

.field protected static final D_INIT:I = 0x0

.field protected static final D_PENDING:I = 0x3

.field protected static final D_SUBSCRIBING:I = 0x1

.field protected static final D_TERMINATED:I = 0x9

.field protected static final PENDING:Ljava/lang/String; = "pending"

.field protected static final TERMINATED:Ljava/lang/String; = "terminated"


# instance fields
.field event:Ljava/lang/String;

.field id:Ljava/lang/String;

.field listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

.field subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionClient;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/dialog/SubscriberDialogListener;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1}, Lorg/zoolu/sip/dialog/Dialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 155
    iput-object p4, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    .line 156
    iput-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionClient;

    .line 160
    iput-object p2, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->event:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->id:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    .line 163
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getStatus()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

    return v0
.end method

.method protected getStatusDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :pswitch_1
    const-string v0, "D_INIT"

    goto :goto_0

    .line 85
    :pswitch_2
    const-string v0, "D_SUBSCRIBING"

    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, "D_ACCEPTED"

    goto :goto_0

    .line 89
    :pswitch_4
    const-string v0, "D_PENDING"

    goto :goto_0

    .line 91
    :pswitch_5
    const-string v0, "D_ACTIVE"

    goto :goto_0

    .line 93
    :pswitch_6
    const-string v0, "D_TERMINATED"

    goto :goto_0

    .line 81
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
    .line 113
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

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
    .line 108
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

    const/4 v1, 0x2

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
    .line 128
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

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
    .line 123
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

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
    .line 133
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

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
    .line 118
    iget v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 12
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v8, 0x0

    const/16 v1, 0xc8

    const/4 v11, 0x3

    const/16 v10, 0x9

    .line 291
    const-string v0, "onReceivedMessage()"

    invoke-virtual {p0, v0, v11}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 292
    invoke-virtual {p0, v10}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "subscription already terminated: message discarded"

    invoke-virtual {p0, v0, v11}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isNotify()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 299
    new-instance v9, Lorg/zoolu/sip/transaction/TransactionServer;

    invoke-direct {v9, p1, p2, v8}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V

    .line 301
    .local v9, "ts":Lorg/zoolu/sip/transaction/TransactionServer;
    invoke-static {v1}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0, v8}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    .line 304
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v2

    .line 305
    .local v2, "to":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v3

    .line 306
    .local v3, "from":Lorg/zoolu/sip/address/NameAddress;
    const/4 v4, 0x0

    .line 307
    .local v4, "contact":Lorg/zoolu/sip/address/NameAddress;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasContactHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getContactHeader()Lorg/zoolu/sip/header/ContactHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ContactHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v4

    .line 309
    :cond_2
    const/4 v5, 0x0

    .line 310
    .local v5, "state":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasSubscriptionStateHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getSubscriptionStateHeader()Lorg/zoolu/sip/header/SubscriptionStateHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v5

    .line 312
    :cond_3
    const/4 v6, 0x0

    .line 313
    .local v6, "content_type":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasContentTypeHeader()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getContentTypeHeader()Lorg/zoolu/sip/header/ContentTypeHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 315
    :cond_4
    const/4 v7, 0x0

    .line 316
    .local v7, "body":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 317
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v7

    .line 319
    :cond_5
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    if-eqz v0, :cond_6

    .line 320
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    move-object v1, p0

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lorg/zoolu/sip/dialog/SubscriberDialogListener;->onDlgNotify(Lorg/zoolu/sip/dialog/SubscriberDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 323
    :cond_6
    if-eqz v5, :cond_0

    .line 324
    const-string v0, "active"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v10}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 325
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    goto/16 :goto_0

    .line 326
    :cond_7
    const-string v0, "pending"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 328
    invoke-virtual {p0, v11}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    goto/16 :goto_0

    .line 329
    :cond_8
    const-string v0, "terminated"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v10}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0, v10}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    .line 332
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/SubscriberDialogListener;->onDlgSubscriptionTerminated(Lorg/zoolu/sip/dialog/SubscriberDialog;)V

    goto/16 :goto_0

    .line 337
    .end local v2    # "to":Lorg/zoolu/sip/address/NameAddress;
    .end local v3    # "from":Lorg/zoolu/sip/address/NameAddress;
    .end local v4    # "contact":Lorg/zoolu/sip/address/NameAddress;
    .end local v5    # "state":Ljava/lang/String;
    .end local v6    # "content_type":Ljava/lang/String;
    .end local v7    # "body":Ljava/lang/String;
    .end local v9    # "ts":Lorg/zoolu/sip/transaction/TransactionServer;
    :cond_9
    const-string v0, "message is not a NOTIFY: message discarded"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 268
    const-string v1, "onTransFailureResponse()"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 269
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    .line 270
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    .line 271
    .local v0, "status_line":Lorg/zoolu/sip/header/StatusLine;
    iget-object v1, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3, p2}, Lorg/zoolu/sip/dialog/SubscriberDialogListener;->onDlgSubscriptionFailure(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onTransProvisionalResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 238
    const-string v0, "onTransProvisionalResponse()"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 240
    return-void
.end method

.method public onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 4
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v3, 0x4

    .line 247
    const-string v1, "onTransSuccessResponse()"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 248
    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lorg/zoolu/sip/dialog/SubscriberDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 251
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    .line 252
    .local v0, "status_line":Lorg/zoolu/sip/header/StatusLine;
    iget-object v1, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3, p2}, Lorg/zoolu/sip/dialog/SubscriberDialogListener;->onDlgSubscriptionSuccess(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    .line 261
    .end local v0    # "status_line":Lorg/zoolu/sip/header/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0, v3}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v0

    .line 257
    .restart local v0    # "status_line":Lorg/zoolu/sip/header/StatusLine;
    iget-object v1, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3, p2}, Lorg/zoolu/sip/dialog/SubscriberDialogListener;->onDlgSubscriptionSuccess(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V
    .locals 2
    .param p1, "tc"    # Lorg/zoolu/sip/transaction/TransactionClient;

    .prologue
    .line 281
    const-string v0, "onTransTimeout()"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 282
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    .line 283
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->listener:Lorg/zoolu/sip/dialog/SubscriberDialogListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/dialog/SubscriberDialogListener;->onDlgSubscribeTimeout(Lorg/zoolu/sip/dialog/SubscriberDialog;)V

    .line 285
    :cond_0
    return-void
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscriberDialog#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->dialog_sqn:I

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

    .line 349
    :cond_0
    return-void
.end method

.method public reSubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "subscriber"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "expires"    # I

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/zoolu/sip/dialog/SubscriberDialog;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "subscriber"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "expires"    # I

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside subscribe(target="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",subscriber="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",contact="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",expires="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 183
    new-instance v1, Lorg/zoolu/sip/address/SipURL;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "request_uri":Lorg/zoolu/sip/address/SipURL;
    new-instance v2, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v2, p1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "to_url":Lorg/zoolu/sip/address/NameAddress;
    new-instance v3, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v3, p2}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "from_url":Lorg/zoolu/sip/address/NameAddress;
    if-eqz p3, :cond_0

    .line 188
    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v4, p3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, "contact_url":Lorg/zoolu/sip/address/NameAddress;
    :goto_0
    const/4 v7, 0x0

    .line 192
    .local v7, "content_type":Ljava/lang/String;
    const/4 v8, 0x0

    .line 193
    .local v8, "body":Ljava/lang/String;
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v5, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->event:Ljava/lang/String;

    iget-object v6, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->id:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lorg/zoolu/sip/message/MessageFactory;->createSubscribeRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v9

    .line 196
    .local v9, "req":Lorg/zoolu/sip/message/Message;
    new-instance v0, Lorg/zoolu/sip/header/AcceptHeader;

    const-string v5, "application/pidf+xml"

    invoke-direct {v0, v5}, Lorg/zoolu/sip/header/AcceptHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/message/Message;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 197
    new-instance v0, Lorg/zoolu/sip/header/ExpiresHeader;

    invoke-direct {v0, p4}, Lorg/zoolu/sip/header/ExpiresHeader;-><init>(I)V

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/message/Message;->setExpiresHeader(Lorg/zoolu/sip/header/ExpiresHeader;)V

    .line 198
    invoke-virtual {p0, v9}, Lorg/zoolu/sip/dialog/SubscriberDialog;->subscribe(Lorg/zoolu/sip/message/Message;)V

    .line 199
    return-void

    .line 190
    .end local v4    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    .end local v7    # "content_type":Ljava/lang/String;
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "req":Lorg/zoolu/sip/message/Message;
    :cond_0
    move-object v4, v3

    .restart local v4    # "contact_url":Lorg/zoolu/sip/address/NameAddress;
    goto :goto_0
.end method

.method public subscribe(Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 209
    const-string v0, "inside subscribe(req)"

    invoke-virtual {p0, v0, v2}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 210
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "subscription already terminated: request aborted"

    invoke-virtual {p0, v0, v2}, Lorg/zoolu/sip/dialog/SubscriberDialog;->printLog(Ljava/lang/String;I)V

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0, v1}, Lorg/zoolu/sip/dialog/SubscriberDialog;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->changeStatus(I)V

    .line 219
    :cond_1
    invoke-virtual {p0, v1, p1}, Lorg/zoolu/sip/dialog/SubscriberDialog;->update(ILorg/zoolu/sip/message/Message;)V

    .line 221
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionClient;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p1, p0}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionClient;

    .line 222
    iget-object v0, p0, Lorg/zoolu/sip/dialog/SubscriberDialog;->subscribe_transaction:Lorg/zoolu/sip/transaction/TransactionClient;

    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    goto :goto_0
.end method
