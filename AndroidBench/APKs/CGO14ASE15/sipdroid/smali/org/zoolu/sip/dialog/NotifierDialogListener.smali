.class public interface abstract Lorg/zoolu/sip/dialog/NotifierDialogListener;
.super Ljava/lang/Object;
.source "NotifierDialogListener.java"


# virtual methods
.method public abstract onDlgNotificationFailure(Lorg/zoolu/sip/dialog/NotifierDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgNotificationSuccess(Lorg/zoolu/sip/dialog/NotifierDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgNotifyTimeout(Lorg/zoolu/sip/dialog/NotifierDialog;)V
.end method

.method public abstract onDlgSubscribe(Lorg/zoolu/sip/dialog/NotifierDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method
