.class public Lorg/zoolu/sip/transaction/TransactionClient;
.super Lorg/zoolu/sip/transaction/Transaction;
.source "TransactionClient.java"


# instance fields
.field clearing_to:Lorg/zoolu/tools/Timer;

.field retransmission_to:Lorg/zoolu/tools/Timer;

.field transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

.field transaction_to:Lorg/zoolu/tools/Timer;


# direct methods
.method protected constructor <init>(Lorg/zoolu/sip/provider/SipProvider;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "req"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/TransactionClientListener;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 65
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->request:Lorg/zoolu/sip/message/Message;

    .line 66
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/zoolu/sip/transaction/TransactionClient;->init(Lorg/zoolu/sip/transaction/TransactionClientListener;Lorg/zoolu/sip/provider/TransactionIdentifier;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;I)V
    .locals 4
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "req"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/TransactionClientListener;
    .param p4, "timeout"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 72
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->request:Lorg/zoolu/sip/message/Message;

    .line 73
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/zoolu/sip/transaction/TransactionClient;->init(Lorg/zoolu/sip/transaction/TransactionClientListener;Lorg/zoolu/sip/provider/TransactionIdentifier;)V

    .line 74
    new-instance v0, Lorg/zoolu/tools/Timer;

    int-to-long v1, p4

    const-string v3, "Transaction"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    .line 75
    return-void
.end method


# virtual methods
.method init(Lorg/zoolu/sip/transaction/TransactionClientListener;Lorg/zoolu/sip/provider/TransactionIdentifier;)V
    .locals 5
    .param p1, "listener"    # Lorg/zoolu/sip/transaction/TransactionClientListener;
    .param p2, "transaction_id"    # Lorg/zoolu/sip/provider/TransactionIdentifier;

    .prologue
    const/4 v4, 0x1

    .line 80
    iput-object p1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 81
    iput-object p2, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 82
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->retransmission_timeout:J

    const-string v3, "Retransmission"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 84
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    const-string v3, "Transaction"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    .line 86
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->clearing_timeout:J

    const-string v3, "Clearing"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->clearing_to:Lorg/zoolu/tools/Timer;

    .line 87
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

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/TransactionClient;->printLog(Ljava/lang/String;I)V

    .line 88
    const-string v0, "created"

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/TransactionClient;->printLog(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 5
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 108
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 111
    .local v0, "code":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    if-ge v0, v4, :cond_3

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->changeStatus(I)V

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransProvisionalResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    .line 142
    .end local v0    # "code":I
    :cond_2
    :goto_0
    return-void

    .line 119
    .restart local v0    # "code":I
    :cond_3
    if-lt v0, v4, :cond_2

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    :cond_4
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 122
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 123
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/TransactionClient;->changeStatus(I)V

    .line 124
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_6

    .line 125
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v1, :cond_5

    .line 126
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    .line 131
    :cond_5
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 133
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->start()V

    goto :goto_0

    .line 128
    :cond_6
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v1, :cond_5

    .line 129
    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    goto :goto_1
.end method

.method public onTimeout(Lorg/zoolu/tools/Timer;)V
    .locals 8
    .param p1, "to"    # Lorg/zoolu/tools/Timer;

    .prologue
    const/4 v7, 0x1

    .line 150
    :try_start_0
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    :cond_0
    const-string v3, "Retransmission timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/TransactionClient;->printLog(Ljava/lang/String;I)V

    .line 155
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/TransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 156
    const-wide/16 v3, 0x2

    iget-object v5, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v5}, Lorg/zoolu/tools/Timer;->getTime()J

    move-result-wide v5

    mul-long v1, v3, v5

    .line 157
    .local v1, "timeout":J
    sget-wide v3, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    :cond_1
    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    .line 160
    :cond_2
    new-instance v3, Lorg/zoolu/tools/Timer;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v4}, Lorg/zoolu/tools/Timer;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 162
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->start()V

    .line 167
    .end local v1    # "timeout":J
    :cond_3
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    const-string v3, "Transaction timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/TransactionClient;->printLog(Ljava/lang/String;I)V

    .line 169
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 170
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 171
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 172
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->changeStatus(I)V

    .line 173
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v3, p0}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V

    .line 175
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 177
    :cond_5
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 178
    const-string v3, "Clearing timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/TransactionClient;->printLog(Ljava/lang/String;I)V

    .line 179
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 180
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 181
    iget-object v3, p0, Lorg/zoolu/sip/transaction/TransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 182
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/TransactionClient;->changeStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_6
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, v7}, Lorg/zoolu/sip/transaction/TransactionClient;->printException(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionClient#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_sqn:I

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

    .line 208
    :cond_0
    return-void
.end method

.method public request()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "start"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/TransactionClient;->printLog(Ljava/lang/String;I)V

    .line 94
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/TransactionClient;->changeStatus(I)V

    .line 95
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->start()V

    .line 96
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->start()V

    .line 98
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 99
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 100
    return-void
.end method

.method public terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 191
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/TransactionClient;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 193
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 194
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->clearing_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 195
    iget-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 196
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/TransactionClient;->changeStatus(I)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/TransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 199
    :cond_0
    return-void
.end method
