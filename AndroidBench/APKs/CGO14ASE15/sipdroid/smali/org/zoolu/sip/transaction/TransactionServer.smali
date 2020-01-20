.class public Lorg/zoolu/sip/transaction/TransactionServer;
.super Lorg/zoolu/sip/transaction/Transaction;
.source "TransactionServer.java"


# instance fields
.field clearing_to:Lorg/zoolu/tools/Timer;

.field response:Lorg/zoolu/sip/message/Message;

.field transaction_listener:Lorg/zoolu/sip/transaction/TransactionServerListener;


# direct methods
.method protected constructor <init>(Lorg/zoolu/sip/provider/SipProvider;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 59
    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionServerListener;

    .line 60
    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->response:Lorg/zoolu/sip/message/Message;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Lorg/zoolu/sip/transaction/TransactionServerListener;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/TransactionServerListener;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 67
    new-instance v0, Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lorg/zoolu/sip/transaction/TransactionServer;->init(Lorg/zoolu/sip/transaction/TransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionServerListener;)V
    .locals 2
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "req"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/TransactionServerListener;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 74
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->request:Lorg/zoolu/sip/message/Message;

    .line 75
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1}, Lorg/zoolu/sip/transaction/TransactionServer;->init(Lorg/zoolu/sip/transaction/TransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 77
    const-string v0, "start"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/TransactionServer;->printLog(Ljava/lang/String;I)V

    .line 78
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->changeStatus(I)V

    .line 79
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 80
    return-void
.end method


# virtual methods
.method init(Lorg/zoolu/sip/transaction/TransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V
    .locals 5
    .param p1, "listener"    # Lorg/zoolu/sip/transaction/TransactionServerListener;
    .param p2, "transaction_id"    # Lorg/zoolu/sip/provider/TransactionIdentifier;
    .param p3, "connection_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    const/4 v4, 0x1

    .line 86
    iput-object p1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionServerListener;

    .line 87
    iput-object p2, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 88
    iput-object p3, p0, Lorg/zoolu/sip/transaction/TransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->response:Lorg/zoolu/sip/message/Message;

    .line 90
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    const-string v3, "Clearing"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    .line 91
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

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/TransactionServer;->printLog(Ljava/lang/String;I)V

    .line 92
    const-string v0, "created"

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/TransactionServer;->printLog(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public listen()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "start"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/TransactionServer;->printLog(Ljava/lang/String;I)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->changeStatus(I)V

    .line 100
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 132
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->request:Lorg/zoolu/sip/message/Message;

    .line 135
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 136
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 137
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 138
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->changeStatus(I)V

    .line 140
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionServerListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionServerListener;

    invoke-interface {v0, p0, p2}, Lorg/zoolu/sip/transaction/TransactionServerListener;->onTransRequest(Lorg/zoolu/sip/transaction/TransactionServer;Lorg/zoolu/sip/message/Message;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :cond_2
    const-string v0, "response retransmission"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/TransactionServer;->printLog(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->response:Lorg/zoolu/sip/message/Message;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/TransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    goto :goto_0
.end method

.method public onTimeout(Lorg/zoolu/tools/Timer;)V
    .locals 4
    .param p1, "to"    # Lorg/zoolu/tools/Timer;

    .prologue
    const/4 v3, 0x1

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "Clearing timeout expired"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/zoolu/sip/transaction/TransactionServer;->printLog(Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 165
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/TransactionServer;->changeStatus(I)V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionServerListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, v3}, Lorg/zoolu/sip/transaction/TransactionServer;->printException(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionServer#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_sqn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_TRANSACTION:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 192
    :cond_0
    return-void
.end method

.method public respondWith(Lorg/zoolu/sip/message/Message;)V
    .locals 7
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v6, 0xc8

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 106
    iput-object p1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->response:Lorg/zoolu/sip/message/Message;

    .line 107
    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/TransactionServer;->response:Lorg/zoolu/sip/message/Message;

    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v1, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 109
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->response:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 110
    .local v0, "code":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    if-ge v0, v6, :cond_1

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0, v5}, Lorg/zoolu/sip/transaction/TransactionServer;->changeStatus(I)V

    .line 113
    :cond_1
    if-lt v0, v6, :cond_2

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_2

    .line 114
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/TransactionServer;->changeStatus(I)V

    .line 116
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->start()V

    .line 124
    .end local v0    # "code":I
    :cond_2
    return-void
.end method

.method public terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 176
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/TransactionServer;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 178
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 179
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/TransactionServer;->changeStatus(I)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionServerListener;

    .line 183
    :cond_0
    return-void
.end method
