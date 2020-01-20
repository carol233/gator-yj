.class public interface abstract Lorg/zoolu/sip/transaction/TransactionClientListener;
.super Ljava/lang/Object;
.source "TransactionClientListener.java"


# virtual methods
.method public abstract onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onTransProvisionalResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V
.end method
