.class public abstract Lorg/zoolu/sip/call/CallListenerAdapter;
.super Ljava/lang/Object;
.source "CallListenerAdapter.java"

# interfaces
.implements Lorg/zoolu/sip/call/ExtendedCallListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public onCallAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 150
    return-void
.end method

.method public onCallCanceling(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "cancel"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 207
    return-void
.end method

.method public onCallClosed(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 221
    return-void
.end method

.method public onCallClosing(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "bye"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 214
    return-void
.end method

.method public onCallConfirmed(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "ack"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 174
    return-void
.end method

.method public onCallIncoming(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 8
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "callee"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "caller"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "sdp"    # Ljava/lang/String;
    .param p5, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 96
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 97
    new-instance v3, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-direct {v3, p4}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "remote_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    new-instance v0, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {p1}, Lorg/zoolu/sip/call/Call;->getLocalSessionDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "local_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    new-instance v2, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {v3}, Lorg/zoolu/sdp/SessionDescriptor;->getOrigin()Lorg/zoolu/sdp/OriginField;

    move-result-object v4

    invoke-virtual {v3}, Lorg/zoolu/sdp/SessionDescriptor;->getSessionName()Lorg/zoolu/sdp/SessionNameField;

    move-result-object v5

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getConnection()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v6

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getTime()Lorg/zoolu/sdp/TimeField;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 103
    .local v2, "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptors(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 104
    invoke-virtual {v3}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/zoolu/sip/call/SdpTools;->sdpMediaProduct(Lorg/zoolu/sdp/SessionDescriptor;Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    move-result-object v2

    .line 106
    const-string v4, "rtpmap"

    invoke-static {v2, v4}, Lorg/zoolu/sip/call/SdpTools;->sdpAttirbuteSelection(Lorg/zoolu/sdp/SessionDescriptor;Ljava/lang/String;)Lorg/zoolu/sdp/SessionDescriptor;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .end local v0    # "local_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    .end local v2    # "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    .end local v3    # "remote_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    .local v1, "local_session":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Lorg/zoolu/sip/call/Call;->ring(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v1}, Lorg/zoolu/sip/call/Call;->accept(Ljava/lang/String;)V

    .line 113
    return-void

    .line 109
    .end local v1    # "local_session":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/zoolu/sip/call/Call;->getLocalSessionDescriptor()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "local_session":Ljava/lang/String;
    goto :goto_0
.end method

.method public onCallModifying(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 8
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "invite"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 121
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 122
    new-instance v3, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-direct {v3, p2}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, "remote_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    new-instance v0, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {p1}, Lorg/zoolu/sip/call/Call;->getLocalSessionDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "local_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    new-instance v2, Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {v3}, Lorg/zoolu/sdp/SessionDescriptor;->getOrigin()Lorg/zoolu/sdp/OriginField;

    move-result-object v4

    invoke-virtual {v3}, Lorg/zoolu/sdp/SessionDescriptor;->getSessionName()Lorg/zoolu/sdp/SessionNameField;

    move-result-object v5

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getConnection()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v6

    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getTime()Lorg/zoolu/sdp/TimeField;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/zoolu/sdp/SessionDescriptor;-><init>(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 128
    .local v2, "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    invoke-virtual {v0}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptors(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 129
    invoke-virtual {v3}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptors()Ljava/util/Vector;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/zoolu/sip/call/SdpTools;->sdpMediaProduct(Lorg/zoolu/sdp/SessionDescriptor;Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;

    move-result-object v2

    .line 131
    const-string v4, "rtpmap"

    invoke-static {v2, v4}, Lorg/zoolu/sip/call/SdpTools;->sdpAttirbuteSelection(Lorg/zoolu/sdp/SessionDescriptor;Ljava/lang/String;)Lorg/zoolu/sdp/SessionDescriptor;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .end local v0    # "local_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    .end local v2    # "new_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    .end local v3    # "remote_sdp":Lorg/zoolu/sdp/SessionDescriptor;
    .local v1, "local_session":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Lorg/zoolu/sip/call/Call;->accept(Ljava/lang/String;)V

    .line 137
    return-void

    .line 134
    .end local v1    # "local_session":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/zoolu/sip/call/Call;->getLocalSessionDescriptor()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "local_session":Ljava/lang/String;
    goto :goto_0
.end method

.method public onCallReInviteAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "sdp"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 187
    return-void
.end method

.method public onCallReInviteRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 195
    return-void
.end method

.method public onCallReInviteTimeout(Lorg/zoolu/sip/call/Call;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;

    .prologue
    .line 201
    return-void
.end method

.method public onCallRedirection(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Ljava/util/Vector;Lorg/zoolu/sip/message/Message;)V
    .locals 1
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "reason"    # Ljava/lang/String;
    .param p4, "resp"    # Lorg/zoolu/sip/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/zoolu/sip/call/Call;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/zoolu/sip/message/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, "contact_list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/zoolu/sip/call/Call;->call(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onCallRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 157
    return-void
.end method

.method public onCallRinging(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 143
    return-void
.end method

.method public onCallTimeout(Lorg/zoolu/sip/call/Call;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/Call;

    .prologue
    .line 180
    return-void
.end method

.method public onCallTransfer(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "refer_to"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "refered_by"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "refer"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 229
    return-void
.end method

.method public onCallTransferAccepted(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 235
    return-void
.end method

.method public onCallTransferFailure(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notify"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 258
    return-void
.end method

.method public onCallTransferRefused(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 242
    return-void
.end method

.method public onCallTransferSuccess(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "call"    # Lorg/zoolu/sip/call/ExtendedCall;
    .param p2, "notify"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 250
    return-void
.end method
