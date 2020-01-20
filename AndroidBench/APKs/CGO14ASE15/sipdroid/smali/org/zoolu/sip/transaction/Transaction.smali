.class public abstract Lorg/zoolu/sip/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Lorg/zoolu/sip/provider/SipProviderListener;
.implements Lorg/zoolu/tools/TimerListener;


# static fields
.field static final STATE_COMPLETED:I = 0x4

.field static final STATE_CONFIRMED:I = 0x5

.field static final STATE_IDLE:I = 0x0

.field static final STATE_PROCEEDING:I = 0x3

.field static final STATE_TERMINATED:I = 0x7

.field static final STATE_TRYING:I = 0x2

.field static final STATE_WAITING:I = 0x1

.field protected static transaction_counter:I


# instance fields
.field connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

.field log:Lorg/zoolu/tools/Log;

.field request:Lorg/zoolu/sip/message/Message;

.field sip_provider:Lorg/zoolu/sip/provider/SipProvider;

.field status:I

.field transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

.field transaction_sqn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lorg/zoolu/sip/transaction/Transaction;->transaction_counter:I

    return-void
.end method

.method protected constructor <init>(Lorg/zoolu/sip/provider/SipProvider;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/zoolu/sip/transaction/Transaction;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 110
    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getLog()Lorg/zoolu/tools/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->log:Lorg/zoolu/tools/Log;

    .line 111
    iput-object v1, p0, Lorg/zoolu/sip/transaction/Transaction;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    .line 112
    iput-object v1, p0, Lorg/zoolu/sip/transaction/Transaction;->request:Lorg/zoolu/sip/message/Message;

    .line 113
    iput-object v1, p0, Lorg/zoolu/sip/transaction/Transaction;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 114
    sget v0, Lorg/zoolu/sip/transaction/Transaction;->transaction_counter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/zoolu/sip/transaction/Transaction;->transaction_counter:I

    iput v0, p0, Lorg/zoolu/sip/transaction/Transaction;->transaction_sqn:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/sip/transaction/Transaction;->status:I

    .line 116
    return-void
.end method

.method static getStatus(I)Ljava/lang/String;
    .locals 1
    .param p0, "st"    # I

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 78
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 64
    :pswitch_1
    const-string v0, "T_Idle"

    goto :goto_0

    .line 66
    :pswitch_2
    const-string v0, "T_Waiting"

    goto :goto_0

    .line 68
    :pswitch_3
    const-string v0, "T_Trying"

    goto :goto_0

    .line 70
    :pswitch_4
    const-string v0, "T_Proceeding"

    goto :goto_0

    .line 72
    :pswitch_5
    const-string v0, "T_Completed"

    goto :goto_0

    .line 74
    :pswitch_6
    const-string v0, "T_Confirmed"

    goto :goto_0

    .line 76
    :pswitch_7
    const-string v0, "T_Terminated"

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method changeStatus(I)V
    .locals 2
    .param p1, "newstatus"    # I

    .prologue
    .line 120
    iput p1, p0, Lorg/zoolu/sip/transaction/Transaction;->status:I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed transaction state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/zoolu/sip/transaction/Transaction;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/transaction/Transaction;->printLog(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public getConnectionId()Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->connection_id:Lorg/zoolu/sip/provider/ConnectionIdentifier;

    return-object v0
.end method

.method public getRequestMessage()Lorg/zoolu/sip/message/Message;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->request:Lorg/zoolu/sip/message/Message;

    return-object v0
.end method

.method public getSipProvider()Lorg/zoolu/sip/provider/SipProvider;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    return-object v0
.end method

.method getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/zoolu/sip/transaction/Transaction;->status:I

    invoke-static {v0}, Lorg/zoolu/sip/transaction/Transaction;->getStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->transaction_id:Lorg/zoolu/sip/provider/TransactionIdentifier;

    return-object v0
.end method

.method public getTransactionMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->request:Lorg/zoolu/sip/message/Message;

    invoke-virtual {v0}, Lorg/zoolu/sip/message/Message;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 167
    return-void
.end method

.method public onTimeout(Lorg/zoolu/tools/Timer;)V
    .locals 0
    .param p1, "to"    # Lorg/zoolu/tools/Timer;

    .prologue
    .line 174
    return-void
.end method

.method protected printException(Ljava/lang/Exception;I)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->log:Lorg/zoolu/tools/Log;

    sget v1, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_TRANSACTION:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/zoolu/tools/Log;->printException(Ljava/lang/Exception;I)Lorg/zoolu/tools/Log;

    .line 197
    :cond_0
    return-void
.end method

.method protected printLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/zoolu/sip/transaction/Transaction;->log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/zoolu/sip/transaction/Transaction;->transaction_sqn:I

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

    .line 186
    :cond_0
    return-void
.end method

.method protected printWarning(Ljava/lang/String;I)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/transaction/Transaction;->printLog(Ljava/lang/String;I)V

    .line 191
    return-void
.end method

.method statusIs(I)Z
    .locals 1
    .param p1, "st"    # I

    .prologue
    .line 127
    iget v0, p0, Lorg/zoolu/sip/transaction/Transaction;->status:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract terminate()V
.end method
