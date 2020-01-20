.class public interface abstract Lorg/zoolu/sip/call/CallListener;
.super Ljava/lang/Object;
.source "CallListener.java"


# virtual methods
.method public abstract onCallAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallCanceling(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallClosed(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallClosing(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallConfirmed(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallIncoming(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallModifying(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallReInviteAccepted(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallReInviteRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallReInviteTimeout(Lorg/zoolu/sip/call/Call;)V
.end method

.method public abstract onCallRedirection(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Ljava/util/Vector;Lorg/zoolu/sip/message/Message;)V
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
.end method

.method public abstract onCallRefused(Lorg/zoolu/sip/call/Call;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallRinging(Lorg/zoolu/sip/call/Call;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallTimeout(Lorg/zoolu/sip/call/Call;)V
.end method
