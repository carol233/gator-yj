.class public Lorg/zoolu/sip/call/ExtendedCall;
.super Lorg/zoolu/sip/call/Call;
.source "ExtendedCall.java"

# interfaces
.implements Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;


# instance fields
.field next_nonce:Ljava/lang/String;

.field passwd:Ljava/lang/String;

.field qop:Ljava/lang/String;

.field realm:Ljava/lang/String;

.field refer:Lorg/zoolu/sip/message/Message;

.field username:Ljava/lang/String;

.field xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/ExtendedCallListener;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "from_url"    # Ljava/lang/String;
    .param p3, "contact_url"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "passwd"    # Ljava/lang/String;
    .param p7, "call_listener"    # Lorg/zoolu/sip/call/ExtendedCallListener;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, p7}, Lorg/zoolu/sip/call/Call;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/CallListener;)V

    .line 92
    iput-object p7, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    .line 93
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->refer:Lorg/zoolu/sip/message/Message;

    .line 94
    iput-object p4, p0, Lorg/zoolu/sip/call/ExtendedCall;->username:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lorg/zoolu/sip/call/ExtendedCall;->realm:Ljava/lang/String;

    .line 96
    iput-object p6, p0, Lorg/zoolu/sip/call/ExtendedCall;->passwd:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->next_nonce:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->qop:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/ExtendedCallListener;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "from_url"    # Ljava/lang/String;
    .param p3, "contact_url"    # Ljava/lang/String;
    .param p4, "call_listener"    # Lorg/zoolu/sip/call/ExtendedCallListener;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/zoolu/sip/call/Call;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/call/CallListener;)V

    .line 70
    iput-object p4, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    .line 71
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->refer:Lorg/zoolu/sip/message/Message;

    .line 72
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->username:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->realm:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->passwd:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->next_nonce:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->qop:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public acceptTransfer()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    check-cast v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/ExtendedCall;->refer:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->acceptRefer(Lorg/zoolu/sip/message/Message;)V

    .line 153
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "r_user"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "icsi"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->username:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 115
    new-instance v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/ExtendedCall;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/call/ExtendedCall;->username:Ljava/lang/String;

    iget-object v3, p0, Lorg/zoolu/sip/call/ExtendedCall;->realm:Ljava/lang/String;

    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->passwd:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    .line 119
    :goto_0
    if-nez p2, :cond_0

    .line 120
    iget-object p2, p0, Lorg/zoolu/sip/call/ExtendedCall;->from_url:Ljava/lang/String;

    .line 121
    :cond_0
    if-nez p3, :cond_1

    .line 122
    iget-object p3, p0, Lorg/zoolu/sip/call/ExtendedCall;->contact_url:Ljava/lang/String;

    .line 123
    :cond_1
    if-eqz p4, :cond_2

    .line 124
    iput-object p4, p0, Lorg/zoolu/sip/call/ExtendedCall;->local_sdp:Ljava/lang/String;

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->local_sdp:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->local_sdp:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/sip/dialog/InviteDialog;->invite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_1
    return-void

    .line 118
    :cond_3
    new-instance v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/ExtendedCall;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1, p2, p3}, Lorg/zoolu/sip/dialog/InviteDialog;->inviteWithoutOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public call(Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 133
    new-instance v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/ExtendedCall;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    .line 134
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->local_sdp:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->local_sdp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->invite(Lorg/zoolu/sip/message/Message;)V

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/dialog/InviteDialog;->inviteWithoutOffer(Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public info(CI)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "duration"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    check-cast v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    invoke-virtual {v0, p1, p2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->info(CI)V

    .line 143
    return-void
.end method

.method public listen()V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/ExtendedCall;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/call/ExtendedCall;->username:Ljava/lang/String;

    iget-object v3, p0, Lorg/zoolu/sip/call/ExtendedCall;->realm:Ljava/lang/String;

    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->passwd:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    .line 108
    :goto_0
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    invoke-virtual {v0}, Lorg/zoolu/sip/dialog/InviteDialog;->listen()V

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/ExtendedCall;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-direct {v0, v1, p0}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    goto :goto_0
.end method

.method public notify(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    check-cast v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    invoke-virtual {v0, p1, p2}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->notify(ILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public onDlgAltRequest(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 232
    return-void
.end method

.method public onDlgAltResponse(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 240
    return-void
.end method

.method public onDlgNotify(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 9
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "sipfragment"    # Ljava/lang/String;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v8, 0x12c

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 201
    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v4, :cond_1

    .line 202
    const-string v4, "NOT the current dialog"

    invoke-virtual {p0, v4, v6}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v4, "onDlgNotify()"

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 206
    const-string v4, "refer"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    new-instance v1, Lorg/zoolu/sip/message/Message;

    invoke-direct {v1, p3}, Lorg/zoolu/sip/message/Message;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "fragment":Lorg/zoolu/sip/message/Message;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 209
    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v3

    .line 211
    .local v3, "status_line":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v3}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 212
    .local v0, "code":I
    invoke-virtual {v3}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "reason":Ljava/lang/String;
    const/16 v4, 0xc8

    if-lt v0, v4, :cond_2

    if-ge v0, v8, :cond_2

    .line 214
    const-string v4, "Call successfully transferred"

    invoke-virtual {p0, v4, v7}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 215
    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    invoke-interface {v4, p0, p4}, Lorg/zoolu/sip/call/ExtendedCallListener;->onCallTransferSuccess(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 217
    :cond_2
    if-lt v0, v8, :cond_0

    .line 218
    const-string v4, "Call NOT transferred"

    invoke-virtual {p0, v4, v7}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 219
    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    invoke-interface {v4, p0, v2, p4}, Lorg/zoolu/sip/call/ExtendedCallListener;->onCallTransferFailure(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgRefer(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/message/Message;)V
    .locals 2
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "refer_to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "referred_by"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 171
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDlgRefer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/zoolu/sip/address/NameAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 175
    iput-object p4, p0, Lorg/zoolu/sip/call/ExtendedCall;->refer:Lorg/zoolu/sip/message/Message;

    .line 176
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    invoke-interface {v0, p0, p2, p3, p4}, Lorg/zoolu/sip/call/ExtendedCallListener;->onCallTransfer(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public onDlgReferResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "d"    # Lorg/zoolu/sip/dialog/InviteDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v2, 0x12c

    .line 183
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    if-eq p1, v0, :cond_1

    .line 184
    const-string v0, "NOT the current dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDlgReferResponse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/call/ExtendedCall;->printLog(Ljava/lang/String;I)V

    .line 189
    const/16 v0, 0xc8

    if-lt p2, v0, :cond_2

    if-ge p2, v2, :cond_2

    .line 190
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    invoke-interface {v0, p0, p4}, Lorg/zoolu/sip/call/ExtendedCallListener;->onCallTransferAccepted(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0

    .line 192
    :cond_2
    if-lt p2, v2, :cond_0

    .line 193
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->xcall_listener:Lorg/zoolu/sip/call/ExtendedCallListener;

    invoke-interface {v0, p0, p3, p4}, Lorg/zoolu/sip/call/ExtendedCallListener;->onCallTransferRefused(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtendedCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_CALL:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 250
    :cond_0
    return-void
.end method

.method public refuseTransfer()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    check-cast v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    iget-object v1, p0, Lorg/zoolu/sip/call/ExtendedCall;->refer:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->refuseRefer(Lorg/zoolu/sip/message/Message;)V

    .line 158
    return-void
.end method

.method public transfer(Ljava/lang/String;)V
    .locals 2
    .param p1, "transfer_to"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/zoolu/sip/call/ExtendedCall;->dialog:Lorg/zoolu/sip/dialog/InviteDialog;

    check-cast v0, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;

    new-instance v1, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/dialog/ExtendedInviteDialog;->refer(Lorg/zoolu/sip/address/NameAddress;)V

    .line 148
    return-void
.end method
