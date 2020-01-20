.class public interface abstract Lorg/zoolu/sip/dialog/ExtendedInviteDialogListener;
.super Ljava/lang/Object;
.source "ExtendedInviteDialogListener.java"

# interfaces
.implements Lorg/zoolu/sip/dialog/InviteDialogListener;


# virtual methods
.method public abstract onDlgAltRequest(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgAltResponse(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgNotify(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgRefer(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgReferResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method
