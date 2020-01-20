.class public Lorg/zoolu/sip/transaction/AckTransactionServer;
.super Lorg/zoolu/sip/transaction/Transaction;
.source "AckTransactionServer.java"


# instance fields
.field response:Lorg/zoolu/sip/message/Message;

.field retransmission_to:Lorg/zoolu/tools/Timer;

.field transaction_listener:Lorg/zoolu/sip/transaction/AckTransactionServerListener;

.field transaction_to:Lorg/zoolu/tools/Timer;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/AckTransactionServerListener;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/AckTransactionServerListener;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 62
    iput-object p2, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    .line 63
    new-instance v0, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v1, "ACK"

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lorg/zoolu/sip/transaction/AckTransactionServer;->init(Lorg/zoolu/sip/transaction/AckTransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/provider/ConnectionIdentifier;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/AckTransactionServerListener;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "connection_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .param p3, "resp"    # Lorg/zoolu/sip/message/Message;
    .param p4, "listener"    # Lorg/zoolu/sip/transaction/AckTransactionServerListener;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 75
    iput-object p3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    .line 76
    new-instance v0, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v1, "ACK"

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4, v0, p2}, Lorg/zoolu/sip/transaction/AckTransactionServer;->init(Lorg/zoolu/sip/transaction/AckTransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 77
    return-void
.end method


# virtual methods
.method init(Lorg/zoolu/sip/transaction/AckTransactionServerListener;Lorg/zoolu/sip/provider/TransactionIdentifier;Lorg/zoolu/sip/provider/ConnectionIdentifier;)V
    .locals 5
    .param p1, "listener"    # Lorg/zoolu/sip/transaction/AckTransactionServerListener;
    .param p2, "transaction_id"    # Lorg/zoolu/sip/provider/TransactionIdentifier;
    .param p3, "connection_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    const/4 v4, 0x1

    .line 83
    iput-object p1, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/AckTransactionServerListener;

    .line 84
    iput-object p2, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 85
    iput-object p3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 86
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    const-string v3, "Transaction"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_to:Lorg/zoolu/tools/Timer;

    .line 88
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->retransmission_timeout:J

    const-string v3, "Retransmission"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 93
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

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/AckTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 94
    const-string v0, "created"

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/AckTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public onTimeout(Lorg/zoolu/tools/Timer;)V
    .locals 8
    .param p1, "to"    # Lorg/zoolu/tools/Timer;

    .prologue
    const/4 v7, 0x1

    .line 117
    :try_start_0
    iget-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/AckTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    const-string v3, "Retransmission timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/AckTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 119
    const-wide/16 v3, 0x2

    iget-object v5, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v5}, Lorg/zoolu/tools/Timer;->getTime()J

    move-result-wide v5

    mul-long v1, v3, v5

    .line 120
    .local v1, "timeout":J
    sget-wide v3, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 121
    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    .line 122
    :cond_0
    new-instance v3, Lorg/zoolu/tools/Timer;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v4}, Lorg/zoolu/tools/Timer;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 124
    iget-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->start()V

    .line 125
    iget-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    iget-object v5, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v3, v4, v5}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 127
    .end local v1    # "timeout":J
    :cond_1
    iget-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/AckTransactionServer;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    const-string v3, "Transaction timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/AckTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 129
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/AckTransactionServer;->changeStatus(I)V

    .line 130
    iget-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/AckTransactionServerListener;

    if-eqz v3, :cond_2

    .line 131
    iget-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/AckTransactionServerListener;

    invoke-interface {v3, p0}, Lorg/zoolu/sip/transaction/AckTransactionServerListener;->onTransAckTimeout(Lorg/zoolu/sip/transaction/AckTransactionServer;)V

    .line 134
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/AckTransactionServerListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_3
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, v7}, Lorg/zoolu/sip/transaction/AckTransactionServer;->printException(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AckTransactionServer#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_sqn:I

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

    .line 164
    :cond_0
    return-void
.end method

.method public respond()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "start"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/AckTransactionServer;->printLog(Ljava/lang/String;I)V

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/AckTransactionServer;->changeStatus(I)V

    .line 104
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->start()V

    .line 106
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->start()V

    .line 108
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->response:Lorg/zoolu/sip/message/Message;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 109
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 146
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 147
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/AckTransactionServer;->changeStatus(I)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionServer;->transaction_listener:Lorg/zoolu/sip/transaction/AckTransactionServerListener;

    .line 155
    return-void
.end method
