.class public interface abstract Lorg/zoolu/sip/dialog/SubscriberDialogListener;
.super Ljava/lang/Object;
.source "SubscriberDialogListener.java"


# virtual methods
.method public abstract onDlgNotify(Lorg/zoolu/sip/dialog/SubscriberDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgSubscribeTimeout(Lorg/zoolu/sip/dialog/SubscriberDialog;)V
.end method

.method public abstract onDlgSubscriptionFailure(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgSubscriptionSuccess(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgSubscriptionTerminated(Lorg/zoolu/sip/dialog/SubscriberDialog;)V
.end method
