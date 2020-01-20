.class public Lorg/zoolu/sip/provider/SipInterface;
.super Ljava/lang/Object;
.source "SipInterface.java"

# interfaces
.implements Lorg/zoolu/sip/provider/SipProviderListener;


# instance fields
.field id:Lorg/zoolu/sip/provider/Identifier;

.field listener:Lorg/zoolu/sip/provider/SipInterfaceListener;

.field sip_provider:Lorg/zoolu/sip/provider/SipProvider;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipInterfaceListener;)V
    .locals 0
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "id"    # Lorg/zoolu/sip/provider/Identifier;
    .param p3, "listener"    # Lorg/zoolu/sip/provider/SipInterfaceListener;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/zoolu/sip/provider/SipInterface;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 82
    iput-object p3, p0, Lorg/zoolu/sip/provider/SipInterface;->listener:Lorg/zoolu/sip/provider/SipInterfaceListener;

    .line 83
    iput-object p2, p0, Lorg/zoolu/sip/provider/SipInterface;->id:Lorg/zoolu/sip/provider/Identifier;

    .line 84
    invoke-virtual {p1, p2, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/provider/SipInterfaceListener;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "listener"    # Lorg/zoolu/sip/provider/SipInterfaceListener;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/zoolu/sip/provider/SipInterface;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 73
    iput-object p2, p0, Lorg/zoolu/sip/provider/SipInterface;->listener:Lorg/zoolu/sip/provider/SipInterfaceListener;

    .line 74
    sget-object v0, Lorg/zoolu/sip/provider/SipProvider;->ANY:Lorg/zoolu/sip/provider/Identifier;

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->id:Lorg/zoolu/sip/provider/Identifier;

    .line 75
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->id:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {p1, v0, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 76
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/provider/SipInterface;->id:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 92
    return-void
.end method

.method public getSipProvider()Lorg/zoolu/sip/provider/SipProvider;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    return-object v0
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "message"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->listener:Lorg/zoolu/sip/provider/SipInterfaceListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->listener:Lorg/zoolu/sip/provider/SipInterfaceListener;

    invoke-interface {v0, p0, p2}, Lorg/zoolu/sip/provider/SipInterfaceListener;->onReceivedMessage(Lorg/zoolu/sip/provider/SipInterface;Lorg/zoolu/sip/message/Message;)V

    .line 159
    :cond_0
    return-void
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 1
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v0, p1}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;Ljava/lang/String;Ljava/lang/String;II)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 6
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "dest_addr"    # Ljava/lang/String;
    .param p4, "dest_port"    # I
    .param p5, "ttl"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Ljava/lang/String;Ljava/lang/String;II)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 1
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p2, "conn_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipInterface;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    invoke-virtual {v0, p1, p2}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v0

    return-object v0
.end method
