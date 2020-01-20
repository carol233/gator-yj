.class public abstract Lorg/zoolu/sip/dialog/Dialog;
.super Lorg/zoolu/sip/dialog/DialogInfo;
.source "Dialog.java"

# interfaces
.implements Lorg/zoolu/sip/provider/SipProviderListener;


# static fields
.field public static final UAC:I = 0x0

.field public static final UAS:I = 0x1

.field private static dialog_counter:I


# instance fields
.field protected dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

.field protected dialog_sqn:I

.field protected log:Lorg/zoolu/tools/Log;

.field protected sip_provider:Lorg/zoolu/sip/provider/SipProvider;

.field protected status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lorg/zoolu/sip/dialog/Dialog;->dialog_counter:I

    return-void
.end method

.method protected constructor <init>(Lorg/zoolu/sip/provider/SipProvider;)V
    .locals 2
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/zoolu/sip/dialog/DialogInfo;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 111
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipProvider;->getLog()Lorg/zoolu/tools/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->log:Lorg/zoolu/tools/Log;

    .line 112
    sget v0, Lorg/zoolu/sip/dialog/Dialog;->dialog_counter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/zoolu/sip/dialog/Dialog;->dialog_counter:I

    iput v0, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_sqn:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/sip/dialog/Dialog;->status:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    .line 115
    return-void
.end method


# virtual methods
.method protected changeStatus(I)V
    .locals 2
    .param p1, "newstatus"    # I

    .prologue
    .line 121
    iput p1, p0, Lorg/zoolu/sip/dialog/Dialog;->status:I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed dialog state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/Dialog;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/Dialog;->printLog(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/Dialog;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipProvider;->getListeners()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/Dialog;->isEarly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/Dialog;->isConfirmed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :cond_2
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipProvider;->getListeners()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    goto :goto_0
.end method

.method public getDialogID()Lorg/zoolu/sip/provider/DialogIdentifier;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    return-object v0
.end method

.method public getSipProvider()Lorg/zoolu/sip/provider/SipProvider;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    return-object v0
.end method

.method protected abstract getStatus()I
.end method

.method protected abstract getStatusDescription()Ljava/lang/String;
.end method

.method public abstract isConfirmed()Z
.end method

.method public abstract isEarly()Z
.end method

.method public abstract isTerminated()Z
.end method

.method public abstract onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
.end method

.method protected final printException(Ljava/lang/Exception;I)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->log:Lorg/zoolu/tools/Log;

    sget v1, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_DIALOG:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/zoolu/tools/Log;->printException(Ljava/lang/Exception;I)Lorg/zoolu/tools/Log;

    .line 304
    :cond_0
    return-void
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/zoolu/sip/dialog/Dialog;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_sqn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_DIALOG:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 293
    :cond_0
    return-void
.end method

.method protected final printWarning(Ljava/lang/String;I)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/dialog/Dialog;->printLog(Ljava/lang/String;I)V

    .line 298
    return-void
.end method

.method protected statusIs(I)Z
    .locals 1
    .param p1, "st"    # I

    .prologue
    .line 140
    iget v0, p0, Lorg/zoolu/sip/dialog/Dialog;->status:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(ILorg/zoolu/sip/message/Message;)V
    .locals 13
    .param p1, "side"    # I
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v12, 0x1

    .line 167
    invoke-virtual {p0}, Lorg/zoolu/sip/dialog/Dialog;->isTerminated()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 168
    const-string v8, "trying to update a terminated dialog: do nothing."

    invoke-virtual {p0, v8, v12}, Lorg/zoolu/sip/dialog/Dialog;->printWarning(Ljava/lang/String;I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->call_id:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 176
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->call_id:Ljava/lang/String;

    .line 179
    :cond_2
    if-nez p1, :cond_d

    .line 180
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_tag:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 181
    :cond_3
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v7

    .line 182
    .local v7, "to":Lorg/zoolu/sip/header/ToHeader;
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    if-nez v8, :cond_4

    .line 183
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    .line 184
    :cond_4
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_tag:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 185
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_tag:Ljava/lang/String;

    .line 187
    .end local v7    # "to":Lorg/zoolu/sip/header/ToHeader;
    :cond_5
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_name:Lorg/zoolu/sip/address/NameAddress;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_tag:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 188
    :cond_6
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v0

    .line 189
    .local v0, "from":Lorg/zoolu/sip/header/FromHeader;
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_name:Lorg/zoolu/sip/address/NameAddress;

    if-nez v8, :cond_7

    .line 190
    invoke-virtual {v0}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_name:Lorg/zoolu/sip/address/NameAddress;

    .line 191
    :cond_7
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_tag:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 192
    invoke-virtual {v0}, Lorg/zoolu/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_tag:Ljava/lang/String;

    .line 194
    .end local v0    # "from":Lorg/zoolu/sip/header/FromHeader;
    :cond_8
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/CSeqHeader;->getSequenceNumber()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_cseq:J

    .line 216
    :cond_9
    :goto_1
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasContactHeader()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 217
    if-nez p1, :cond_a

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    if-ne p1, v12, :cond_14

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 219
    :cond_b
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getContactHeader()Lorg/zoolu/sip/header/ContactHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/ContactHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_contact:Lorg/zoolu/sip/address/NameAddress;

    .line 224
    :cond_c
    :goto_2
    if-nez p1, :cond_16

    .line 225
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasRouteHeader()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    if-nez v8, :cond_15

    .line 227
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/MultipleHeader;->getValues()Ljava/util/Vector;

    move-result-object v4

    .line 228
    .local v4, "route_s":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    .line 229
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    .line 230
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v6, :cond_15

    .line 231
    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    new-instance v10, Lorg/zoolu/sip/address/NameAddress;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v8}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 197
    .end local v1    # "i":I
    .end local v4    # "route_s":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v6    # "size":I
    :cond_d
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_name:Lorg/zoolu/sip/address/NameAddress;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_tag:Ljava/lang/String;

    if-nez v8, :cond_10

    .line 198
    :cond_e
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v7

    .line 199
    .restart local v7    # "to":Lorg/zoolu/sip/header/ToHeader;
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_name:Lorg/zoolu/sip/address/NameAddress;

    if-nez v8, :cond_f

    .line 200
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_name:Lorg/zoolu/sip/address/NameAddress;

    .line 201
    :cond_f
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_tag:Ljava/lang/String;

    if-nez v8, :cond_10

    .line 202
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_tag:Ljava/lang/String;

    .line 204
    .end local v7    # "to":Lorg/zoolu/sip/header/ToHeader;
    :cond_10
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_tag:Ljava/lang/String;

    if-nez v8, :cond_13

    .line 205
    :cond_11
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v0

    .line 206
    .restart local v0    # "from":Lorg/zoolu/sip/header/FromHeader;
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    if-nez v8, :cond_12

    .line 207
    invoke-virtual {v0}, Lorg/zoolu/sip/header/FromHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    .line 208
    :cond_12
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_tag:Ljava/lang/String;

    if-nez v8, :cond_13

    .line 209
    invoke-virtual {v0}, Lorg/zoolu/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_tag:Ljava/lang/String;

    .line 211
    .end local v0    # "from":Lorg/zoolu/sip/header/FromHeader;
    :cond_13
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/CSeqHeader;->getSequenceNumber()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_cseq:J

    .line 212
    iget-wide v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_cseq:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 213
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickInitialCSeq()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    iput-wide v8, p0, Lorg/zoolu/sip/dialog/Dialog;->local_cseq:J

    goto/16 :goto_1

    .line 221
    :cond_14
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getContactHeader()Lorg/zoolu/sip/header/ContactHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/ContactHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_contact:Lorg/zoolu/sip/address/NameAddress;

    goto/16 :goto_2

    .line 236
    :cond_15
    if-nez p1, :cond_18

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasRecordRouteHeader()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 238
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRecordRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/MultipleHeader;->getHeaders()Ljava/util/Vector;

    move-result-object v5

    .line 239
    .local v5, "rr":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    .line 240
    .restart local v6    # "size":I
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    .line 242
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_18

    .line 243
    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    new-instance v10, Lorg/zoolu/sip/header/RecordRouteHeader;

    add-int/lit8 v8, v6, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/zoolu/sip/header/Header;

    invoke-direct {v10, v8}, Lorg/zoolu/sip/header/RecordRouteHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    invoke-virtual {v10}, Lorg/zoolu/sip/header/RecordRouteHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    invoke-virtual {v9, v8, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 248
    .end local v1    # "i":I
    .end local v5    # "rr":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    .end local v6    # "size":I
    :cond_16
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasRouteHeader()Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    if-nez v8, :cond_17

    .line 250
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/MultipleHeader;->getValues()Ljava/util/Vector;

    move-result-object v3

    .line 251
    .local v3, "reverse_route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    .line 252
    .restart local v6    # "size":I
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    .line 253
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v6, :cond_17

    .line 254
    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    new-instance v10, Lorg/zoolu/sip/address/NameAddress;

    add-int/lit8 v8, v6, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v3, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v8}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 259
    .end local v1    # "i":I
    .end local v3    # "reverse_route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v6    # "size":I
    :cond_17
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasRecordRouteHeader()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 261
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRecordRoutes()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/zoolu/sip/header/MultipleHeader;->getHeaders()Ljava/util/Vector;

    move-result-object v5

    .line 262
    .restart local v5    # "rr":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    .line 263
    .restart local v6    # "size":I
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    .line 264
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v6, :cond_18

    .line 265
    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->route:Ljava/util/Vector;

    new-instance v10, Lorg/zoolu/sip/header/RecordRouteHeader;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/zoolu/sip/header/Header;

    invoke-direct {v10, v8}, Lorg/zoolu/sip/header/RecordRouteHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    invoke-virtual {v10}, Lorg/zoolu/sip/header/RecordRouteHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v8

    invoke-virtual {v9, v8, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 273
    .end local v1    # "i":I
    .end local v5    # "rr":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    .end local v6    # "size":I
    :cond_18
    new-instance v2, Lorg/zoolu/sip/provider/DialogIdentifier;

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->call_id:Ljava/lang/String;

    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->local_tag:Ljava/lang/String;

    iget-object v10, p0, Lorg/zoolu/sip/dialog/Dialog;->remote_tag:Ljava/lang/String;

    invoke-direct {v2, v8, v9, v10}, Lorg/zoolu/sip/provider/DialogIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v2, "new_id":Lorg/zoolu/sip/provider/DialogIdentifier;
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v8, v2}, Lorg/zoolu/sip/provider/DialogIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 276
    :cond_19
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v8}, Lorg/zoolu/sip/provider/SipProvider;->getListeners()Ljava/util/Hashtable;

    move-result-object v8

    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 278
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v8, v9}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 279
    :cond_1a
    iput-object v2, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    .line 280
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new dialog id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v12}, Lorg/zoolu/sip/dialog/Dialog;->printLog(Ljava/lang/String;I)V

    .line 281
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    if-eqz v8, :cond_0

    .line 282
    iget-object v8, p0, Lorg/zoolu/sip/dialog/Dialog;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v9, p0, Lorg/zoolu/sip/dialog/Dialog;->dialog_id:Lorg/zoolu/sip/provider/DialogIdentifier;

    invoke-virtual {v8, v9, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    goto/16 :goto_0
.end method

.method protected final verifyStatus(Z)Z
    .locals 1
    .param p1, "expression"    # Z

    .prologue
    .line 308
    const-string v0, "dialog state mismatching"

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/sip/dialog/Dialog;->verifyThat(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final verifyThat(ZLjava/lang/String;)Z
    .locals 2
    .param p1, "expression"    # Z
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 313
    if-nez p1, :cond_1

    .line 314
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 315
    :cond_0
    const-string v0, "expression check failed. "

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/dialog/Dialog;->printWarning(Ljava/lang/String;I)V

    .line 319
    :cond_1
    :goto_0
    return p1

    .line 317
    :cond_2
    invoke-virtual {p0, p2, v1}, Lorg/zoolu/sip/dialog/Dialog;->printWarning(Ljava/lang/String;I)V

    goto :goto_0
.end method
