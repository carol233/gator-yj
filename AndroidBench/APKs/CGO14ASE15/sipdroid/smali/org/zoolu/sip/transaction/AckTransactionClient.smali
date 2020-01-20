.class public Lorg/zoolu/sip/transaction/AckTransactionClient;
.super Lorg/zoolu/sip/transaction/Transaction;
.source "AckTransactionClient.java"


# instance fields
.field transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;)V
    .locals 3
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "ack"    # Lorg/zoolu/sip/message/Message;
    .param p3, "listener"    # Lorg/zoolu/sip/transaction/TransactionClientListener;

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1}, Lorg/zoolu/sip/transaction/Transaction;-><init>(Lorg/zoolu/sip/provider/SipProvider;)V

    .line 47
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    iput-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    .line 48
    iput-object p3, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 49
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/zoolu/sip/transaction/AckTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 51
    const-string v0, "created"

    invoke-virtual {p0, v0, v2}, Lorg/zoolu/sip/transaction/AckTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AckTransactionClient#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->transaction_sqn:I

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

    .line 79
    :cond_0
    return-void
.end method

.method public request()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "start"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/AckTransactionClient;->printLog(Ljava/lang/String;I)V

    .line 57
    iget-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 58
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/AckTransactionClient;->changeStatus(I)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 63
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/transaction/AckTransactionClient;->changeStatus(I)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/AckTransactionClient;->transaction_listener:Lorg/zoolu/sip/transaction/TransactionClientListener;

    .line 70
    return-void
.end method
