.class public Lorg/zoolu/sip/transaction/InviteTransactionClient;
.super Lorg/zoolu/sip/transaction/TransactionClient;
.source "InviteTransactionClient.java"


# instance fields
.field ack:Lorg/zoolu/sip/message/Message;

.field end_to:Lorg/zoolu/tools/Timer;

.field transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "req"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/TransactionClientListener;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 61
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    .line 62
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->init(Lorg/zoolu/sip/transaction/TransactionClientListener;Lorg/zoolu/sip/provider/TransactionIdentifier;)V

    .line 63
    return-void
.end method


# virtual methods
.method init(Lorg/zoolu/sip/transaction/TransactionClientListener;Lorg/zoolu/sip/provider/TransactionIdentifier;)V
    .locals 5
    .param p1, "listener"    # Lorg/zoolu/sip/transaction/TransactionClientListener;
    .param p2, "transaction_id"    # Lorg/zoolu/sip/provider/TransactionIdentifier;

    .prologue
    const/4 v4, 0x1

    .line 68
    iput-object p1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 69
    iput-object p2, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->ack:Lorg/zoolu/sip/message/Message;

    .line 71
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->retransmission_timeout:J

    const-string v3, "Retransmission"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 73
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    const-string v3, "Transaction"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    .line 75
    new-instance v0, Lorg/zoolu/tools/Timer;

    sget-wide v1, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    const-string v3, "End"

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->end_to:Lorg/zoolu/tools/Timer;

    .line 76
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

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 77
    const-string v0, "created"

    invoke-virtual {p0, v0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 7
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/16 v6, 0x12c

    const/16 v5, 0xc8

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 97
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 99
    .local v0, "code":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    if-ge v0, v5, :cond_3

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    :cond_0
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 103
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 104
    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->changeStatus(I)V

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransProvisionalResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    .line 150
    .end local v0    # "code":I
    :cond_2
    :goto_0
    return-void

    .line 110
    .restart local v0    # "code":I
    :cond_3
    if-lt v0, v6, :cond_8

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_8

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    :cond_4
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    :cond_5
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 115
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 116
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-static {v1, v2, p2}, Lorg/zoolu/sip/message/MessageFactory;->createNon2xxAckRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/message/Message;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->ack:Lorg/zoolu/sip/message/Message;

    .line 118
    invoke-virtual {p0, v4}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->changeStatus(I)V

    .line 119
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->ack:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 120
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v1, :cond_6

    .line 121
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    .line 122
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 124
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->start()V

    goto :goto_0

    .line 133
    :cond_7
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->ack:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    goto :goto_0

    .line 137
    :cond_8
    if-lt v0, v5, :cond_2

    if-ge v0, v6, :cond_2

    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    :cond_9
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 140
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 141
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v1}, Lorg/zoolu/tools/Timer;->halt()V

    .line 142
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->changeStatus(I)V

    .line 143
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v2, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 144
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v1, :cond_a

    .line 145
    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v1, p0, p2}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V

    .line 146
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    goto/16 :goto_0
.end method

.method public onTimeout(Lorg/zoolu/tools/Timer;)V
    .locals 8
    .param p1, "to"    # Lorg/zoolu/tools/Timer;

    .prologue
    const/4 v7, 0x1

    .line 158
    :try_start_0
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "Retransmission timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 162
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 163
    const-wide/16 v3, 0x2

    iget-object v5, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v5}, Lorg/zoolu/tools/Timer;->getTime()J

    move-result-wide v5

    mul-long v1, v3, v5

    .line 164
    .local v1, "timeout":J
    new-instance v3, Lorg/zoolu/tools/Timer;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v4}, Lorg/zoolu/tools/Timer;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, p0}, Lorg/zoolu/tools/Timer;-><init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    .line 166
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->start()V

    .line 171
    .end local v1    # "timeout":J
    :cond_0
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const-string v3, "Transaction timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 173
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 174
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 175
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 176
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->changeStatus(I)V

    .line 177
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    invoke-interface {v3, p0}, Lorg/zoolu/sip/transaction/TransactionClientListener;->onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V

    .line 179
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 181
    :cond_2
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    const-string v3, "End timeout expired"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 183
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 184
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v3}, Lorg/zoolu/tools/Timer;->halt()V

    .line 185
    iget-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v4, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v3, v4}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 186
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->changeStatus(I)V

    .line 187
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_3
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, v7}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->printException(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public request()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "start"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 83
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->changeStatus(I)V

    .line 84
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->start()V

    .line 85
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->start()V

    .line 87
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1, p0}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 88
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 89
    return-void
.end method

.method public terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 196
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->statusIs(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->retransmission_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 198
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 199
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->end_to:Lorg/zoolu/tools/Timer;

    invoke-virtual {v0}, Lorg/zoolu/tools/Timer;->halt()V

    .line 200
    iget-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 201
    invoke-virtual {p0, v2}, Lorg/zoolu/sip/transaction/InviteTransactionClient;->changeStatus(I)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/InviteTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 204
    :cond_0
    return-void
.end method
