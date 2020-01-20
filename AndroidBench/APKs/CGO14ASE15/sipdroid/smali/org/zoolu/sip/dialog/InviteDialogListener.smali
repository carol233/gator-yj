.class public interface abstract Lorg/zoolu/sip/dialog/InviteDialogListener;
.super Ljava/lang/Object;
.source "InviteDialogListener.java"


# virtual methods
.method public abstract onDlgAck(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgBye(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgByeFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgByeSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgCall(Lorg/zoolu/sip/dialog/InviteDialog;)V
.end method

.method public abstract onDlgCancel(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgClose(Lorg/zoolu/sip/dialog/InviteDialog;)V
.end method

.method public abstract onDlgInvite(Lorg/zoolu/sip/dialog/InviteDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgInviteFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgInviteProvisionalResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgInviteRedirectResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/header/MultipleHeader;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgInviteSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgReInvite(Lorg/zoolu/sip/dialog/InviteDialog;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgReInviteFailureResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgReInviteProvisionalResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgReInviteSuccessResponse(Lorg/zoolu/sip/dialog/InviteDialog;ILjava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end method

.method public abstract onDlgReInviteTimeout(Lorg/zoolu/sip/dialog/InviteDialog;)V
.end method

.method public abstract onDlgTimeout(Lorg/zoolu/sip/dialog/InviteDialog;)V
.end method
