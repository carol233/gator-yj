.class public Lorg/zoolu/sip/call/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lorg/zoolu/sip/dialog/InviteDialogListener;


# instance fields
.field protected contact_url:Ljava/lang/String;

.field protected dialog:Lorg/zoolu/sip/dialog/InviteDialog;

.field protected from_url:Ljava/lang/String;

.field listener:Lorg/zoolu/sip/call/CallListener;

.field protected local_sdp:Ljava/lang/String;

.field log:Lorg/zoolu/tools/Log;

.field protected remote_sdp:Ljava/lang/String;

.field protected sip_provider:Lorg/zoolu/sip/provider/SipProvider;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/CallListener;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "from_url"    # Ljava/lang/String;
    .param p3, "contact_url"    # Ljava/lang/String;
    .param p4, "call_listener"    # Lorg/zoolu/sip/call/CallListener;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/zoolu/sip/call/Call;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 79
    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getLog()Lorg/zoolu/tools/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/call/Call;->log:Lorg/zoolu/tools/Log;

    .line 80
    iput-object p4, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    .line 81
    iput-object p2, p0, Lorg/zoolu/sip/call/Call;->from_url:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/zoolu/sip/call/Call;->contact_url:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    .line 84
    iput-object v1, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)V
    .locals 3
    .param p1, "sdp"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/Call;->contact_url:Ljava/lang/String;

    iget-object v2, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/sip/dialog/InviteDialog;->accept(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public ackWithAnswer(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdp"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/Call;->contact_url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->ackWithAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public busy()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->busy()V

    .line 243
    :cond_0
    return-void
.end method

.method public bye()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->bye()V

    .line 217
    :cond_0
    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/sip/call/Call;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "icsi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/sip/call/Call;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "icsi"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 141
    if-nez p2, :cond_0

    .line 142
    iget-object p2, p0, Lorg/zoolu/sip/call/Call;->from_url:Ljava/lang/String;

    .line 143
    :cond_0
    if-nez p3, :cond_1

    .line 144
    iget-object p3, p0, Lorg/zoolu/sip/call/Call;->contact_url:Ljava/lang/String;

    .line 145
    :cond_1
    if-eqz p4, :cond_2

    .line 146
    iput-object p4, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 147
    :cond_2
    new-instance v0, Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/Call;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p0}, Lorg/zoolu/sip/dialog/InviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/InviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    .line 148
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v4, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialog;->invite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1, p2, p3}, Lorg/zoolu/sip/dialog/InviteDialog;->inviteWithoutOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public call(Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 156
    new-instance v0, Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/Call;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p0}, Lorg/zoolu/sip/dialog/InviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/InviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    .line 157
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->invite(Lorg/zoolu/sip/message/Message;)V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->inviteWithoutOffer(Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->cancel()V

    .line 211
    :cond_0
    return-void
.end method

.method public getLocalSessionDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteSessionDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->refuse()V

    .line 235
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->cancel()V

    .line 236
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->bye()V

    .line 238
    :cond_0
    return-void
.end method

.method public isOnCall()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->isSessionActive()Z

    move-result v0

    return v0
.end method

.method public listen()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/Call;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p0}, Lorg/zoolu/sip/dialog/InviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/InviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    .line 125
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->listen()V

    .line 126
    return-void
.end method

.method public modify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "sdp"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p2, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/zoolu/sip/dialog/InviteDialog;->reInvite(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onDlgAck(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 437
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 438
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iput-object p2, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    .line 443
    :cond_2
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p2, p3}, Lorg/zoolu/sip/call/CallListener;->onCallConfirmed(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgBye(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 467
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 468
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p2}, Lorg/zoolu/sip/call/CallListener;->onCallClosing(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgByeFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 482
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 483
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p4}, Lorg/zoolu/sip/call/CallListener;->onCallClosed(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgByeSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 497
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 498
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p4}, Lorg/zoolu/sip/call/CallListener;->onCallClosed(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgCall(Lorg/zoolu/sip/dialog/InviteDialog;)V
    .locals 0
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/InviteDialog;

    .prologue
    .line 513
    return-void
.end method

.method public onDlgCancel(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 453
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 454
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p2}, Lorg/zoolu/sip/call/CallListener;->onCallCanceling(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V
    .locals 0
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/InviteDialog;

    .prologue
    .line 523
    return-void
.end method

.method public onDlgInvite(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 6
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "callee"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "caller"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 254
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 255
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iput-object p4, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    .line 260
    :cond_2
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/zoolu/sip/call/CallListener;->onCallIncoming(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgInviteFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 338
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p3, p4}, Lorg/zoolu/sip/call/CallListener;->onCallRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgInviteProvisionalResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 288
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iput-object p4, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    .line 293
    :cond_2
    const/16 v0, 0xb4

    if-eq p2, v0, :cond_3

    const/16 v0, 0xb7

    if-ne p2, v0, :cond_0

    .line 294
    :cond_3
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p5}, Lorg/zoolu/sip/call/CallListener;->onCallRinging(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgInviteRedirectResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/header/MultipleHeader;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "contacts"    # Lorg/zoolu/sip/header/MultipleHeader;
    .param p5, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 322
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 323
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-virtual {p4}, Lorg/zoolu/sip/header/MultipleHeader;->getValues()Ljava/util/Vector;

    move-result-object v1

    invoke-interface {v0, p0, p3, v1, p5}, Lorg/zoolu/sip/call/CallListener;->onCallRedirection(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Ljava/util/Vector;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgInviteSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 306
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iput-object p4, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    .line 311
    :cond_2
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p4, p5}, Lorg/zoolu/sip/call/CallListener;->onCallAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgReInvite(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 270
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 271
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iput-object p2, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    .line 276
    :cond_2
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p2, p3}, Lorg/zoolu/sip/call/CallListener;->onCallModifying(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgReInviteFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 409
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 410
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p3, p4}, Lorg/zoolu/sip/call/CallListener;->onCallReInviteRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgReInviteProvisionalResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 365
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 366
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iput-object p4, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDlgReInviteSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 380
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 381
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iput-object p4, p0, Lorg/zoolu/sip/call/Call;->remote_sdp:Ljava/lang/String;

    .line 386
    :cond_2
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0, p4, p5}, Lorg/zoolu/sip/call/CallListener;->onCallReInviteAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgReInviteTimeout(Lorg/zoolu/sip/dialog/InviteDialog;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;

    .prologue
    .line 423
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 424
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/call/CallListener;->onCallReInviteTimeout(Lorg/zoolu/sip/call/Call;)V

    goto :goto_0
.end method

.method public onDlgTimeout(Lorg/zoolu/sip/dialog/InviteDialog;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;

    .prologue
    .line 351
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 352
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/Call;->printLog(Ljava/lang/String;I)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->listener:Lorg/zoolu/sip/call/CallListener;

    invoke-interface {v0, p0}, Lorg/zoolu/sip/call/CallListener;->onCallTimeout(Lorg/zoolu/sip/call/Call;)V

    goto :goto_0
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_CALL:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 531
    :cond_0
    return-void
.end method

.method public redirect(Ljava/lang/String;)V
    .locals 3
    .param p1, "redirect_url"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    const/16 v1, 0x12e

    const-string v2, "Moved Temporarily"

    invoke-virtual {v0, v1, v2, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->redirect(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public refuse()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->refuse()V

    .line 205
    :cond_0
    return-void
.end method

.method public respond(Lorg/zoolu/sip/message/Message;)V
    .locals 1
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->respond(Lorg/zoolu/sip/message/Message;)V

    .line 181
    :cond_0
    return-void
.end method

.method public ring(Ljava/lang/String;)V
    .locals 1
    .param p1, "sdp"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/zoolu/sip/call/Call;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->ring(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setLocalSessionDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdp"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/zoolu/sip/call/Call;->local_sdp:Ljava/lang/String;

    .line 110
    return-void
.end method
