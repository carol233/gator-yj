.class public interface abstract Lorg/zoolu/sip/call/ExtendedCallListener;
.super Ljava/lang/Object;
.source "ExtendedCallListener.java"

# interfaces
.implements Lorg/zoolu/sip/call/CallListener;


# virtual methods
.method public abstract onCallTransfer(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallTransferAccepted(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallTransferFailure(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallTransferRefused(Lorg/zoolu/sip/call/ExtendedCall;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onCallTransferSuccess(Lorg/zoolu/sip/call/ExtendedCall;Lorg/zoolu/sip/message/Message;)V
.end method
