.class public Lorg/zoolu/sip/transaction/InviteTransactionServer;
.super Lorg/zoolu/sip/transaction/TransactionServer;
.source "InviteTransactionServer.java"


# static fields
.field public static AUTO_TRYING:Z


# instance fields
.field auto_trying:Z

.field end_to:Lorg/zoolu/tools/Timer;

.field retransmission_to:Lorg/zoolu/tools/Timer;

.field transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->AUTO_TRYING:Z

    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/InviteTransactionServerListener;)V
    .locals 5
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "invite"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    .prologue
    const/16 v4, 0x64

    .line 78
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 79
    new-instance v1, Lorg/zoolu/sip/message/Message;

    invoke-direct {v1, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    .line 80
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v2}, Lorg/zoolu/sip/message/Message;->getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v2

    invoke-virtual {p0, p3, v1, v2}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->init(Lorg/zoolu/sip/transaction/InviteTransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 82
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 83
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {p1, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 85
    iget-boolean v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->auto_trying:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-static {v4}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v3}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 88
    .local v0, "trying100":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    .line 91
    .end local v0    # "trying100":Lorg/zoolu/sip/message/Message;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;ZLorg/zoolu/sip/transaction/InviteTransactionServerListener;)V
    .locals 5
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "invite"    # Lorg/zoolu/sip/message/Message;
    .param p3, "auto_trying"    # Z
    .param p4, "listener"    # Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    .prologue
    const/16 v4, 0x64

    .line 99
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 100
    new-instance v1, Lorg/zoolu/sip/message/Message;

    invoke-direct {v1, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    .line 101
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v2}, Lorg/zoolu/sip/message/Message;->getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v2

    invoke-virtual {p0, p4, v1, v2}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->init(Lorg/zoolu/sip/transaction/InviteTransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 102
    iput-boolean p3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->auto_trying:Z

    .line 104
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 105
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {p1, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 107
    if-eqz p3, :cond_0

    .line 108
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-static {v4}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v3}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 110
    .local v0, "trying100":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    .line 113
    .end local v0    # "trying100":Lorg/zoolu/sip/message/Message;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/transaction/InviteTransactionServerListener;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "listener"    # Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/TransactionServer;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 69
    new-instance v0, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v1, "INVITE"

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->init(Lorg/zoolu/sip/transaction/InviteTransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 70
    return-void
.end method


# virtual methods
.method init(Lorg/zoolu/sip/transaction/InviteTransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V
    .locals 5
    .param p1, "listener"    # Lorg/zoolu/sip/transaction/InviteTransactionServerListener;
    .param p2, "transaction_id"    # Lorg/zoolu/sip/provider/TransactionIdentifier;
    .param p3, "connection_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    const/4 v4, 0x1

    .line 119
    iput-object p1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    .line 120
    iput-object p2, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 121
    iput-object p3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 122
    sget-boolean v0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->AUTO_TRYING:Z

    iput-boolean v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->auto_trying:Z

    .line 123
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->retransmission_timeout:J

    const-string v3, "Retransmission"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 125
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    const-string v3, "End"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->end_to:Lorg/zoolu/tools/Timer;

    .line 126
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->clearing_timeout:J

    const-string v3, "Clearing"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 128
    const-string v0, "created"

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public listen()V
    .locals 3

    .prologue
    .line 138
    const-string v0, "start"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 141
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v1, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v2, "INVITE"

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 143
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v1, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v2, "OPTIONS"

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 8
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0xc8

    const/16 v6, 0x64

    const/4 v4, 0x4

    .line 187
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "req_method":Ljava/lang/String;
    const-string v3, "INVITE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    new-instance v3, Lorg/zoolu/sip/message/Message;

    invoke-direct {v3, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    .line 194
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v3}, Lorg/zoolu/sip/message/Message;->getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 195
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v3}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 196
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v3, v4, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 197
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v4, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v5, "INVITE"

    invoke-direct {v4, v5}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 200
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 203
    iget-boolean v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->auto_trying:Z

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-static {v6}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4, v7}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v2

    .line 206
    .local v2, "trying100":Lorg/zoolu/sip/message/Message;
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->respondWith(Lorg/zoolu/sip/message/Message;)V

    .line 210
    .end local v2    # "trying100":Lorg/zoolu/sip/message/Message;
    :cond_0
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    if-eqz v3, :cond_1

    .line 211
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    invoke-interface {v3, p0, p2}, Lorg/zoolu/sip/transaction/InviteTransactionServerListener;->onTransRequest(Lorg/zoolu/sip/transaction/TransactionServer;Lorg/zoolu/sip/message/Message;)V

    .line 243
    .end local v1    # "req_method":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 214
    .restart local v1    # "req_method":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    :cond_3
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    iget-object v5, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v3, v4, v5}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    goto :goto_0

    .line 224
    :cond_4
    const-string v3, "OPTIONS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    invoke-static {v5}, Lorg/zoolu/sip/message/SipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v5, v3, v7}, Lorg/zoolu/sip/message/MessageFactory;->createResponse(Lorg/zoolu/sip/message/Message;ILjava/lang/String;Lorg/zoolu/sip/address/NameAddress;)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 226
    .local v0, "ok200":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->removeServerHeader()V

    .line 227
    new-instance v3, Lorg/zoolu/sip/header/ContactHeader;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/header/ToHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/zoolu/sip/header/ContactHeader;-><init>(Lorg/zoolu/sip/address/NameAddress;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/zoolu/sip/message/Message;->addContactHeader(Lorg/zoolu/sip/header/ContactHeader;Z)V

    .line 228
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v3, v0, v4}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    goto :goto_0

    .line 233
    .end local v0    # "ok200":Lorg/zoolu/sip/message/Message;
    :cond_5
    const-string v3, "ACK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 235
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 236
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 237
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    if-eqz v3, :cond_6

    .line 238
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    invoke-interface {v3, p0, p2}, Lorg/zoolu/sip/transaction/InviteTransactionServerListener;->onTransFailureAck(Lorg/zoolu/sip/transaction/InviteTransactionServer;Lorg/zoolu/sip/message/Message;)V

    .line 239
    :cond_6
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->start()V

    goto :goto_0
.end method

.method public onTimeout(Lorg/zoolu/tools/Timer;)V
    .locals 8
    .param p1, "to"    # Lorg/zoolu/tools/Timer;

    .prologue
    const/4 v7, 0x1

    .line 251
    :try_start_0
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    const-string v3, "Retransmission timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 253
    const-wide/16 v3, 0x2

    iget-object v5, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v5}, Lorg/zoolu/tools/Timer;->getTime()J

    move-result-wide v5

    mul-long v1, v3, v5

    .line 254
    .local v1, "timeout":J
    sget-wide v3, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 255
    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    .line 256
    :cond_0
    new-instance v3, Lorg/zoolu/tools/Timer;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v4}, Lorg/zoolu/tools/Timer;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 258
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->start()V

    .line 259
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    iget-object v5, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v3, v4, v5}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 261
    .end local v1    # "timeout":J
    :cond_1
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    const-string v3, "End timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 263
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 264
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 265
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 266
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    .line 268
    :cond_2
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    const-string v3, "Clearing timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 270
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 271
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 272
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_3
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, v7}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->printException(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public respondWith(Lorg/zoolu/sip/message/Message;)V
    .locals 8
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v7, 0x12c

    const/16 v6, 0xc8

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 151
    iput-object p1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    .line 152
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 153
    .local v0, "code":I
    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v1, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 155
    :cond_1
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    if-ge v0, v6, :cond_3

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 179
    :cond_2
    :goto_0
    return-void

    .line 159
    :cond_3
    if-lt v0, v6, :cond_5

    if-ge v0, v7, :cond_5

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    :cond_4
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 162
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    goto :goto_0

    .line 166
    :cond_5
    if-lt v0, v7, :cond_2

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    :cond_6
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 171
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->start()V

    .line 172
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->start()V

    goto :goto_0
.end method

.method public setAutoTrying(Z)V
    .locals 0
    .param p1, "auto_trying"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->auto_trying:Z

    .line 134
    return-void
.end method

.method public terminate()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 282
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 283
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 284
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v1, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v2, "INVITE"

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 289
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/InviteTransactionServer;->changeStatus(I)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/InviteTransactionServerListener;

    .line 291
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    goto :goto_0
.end method
