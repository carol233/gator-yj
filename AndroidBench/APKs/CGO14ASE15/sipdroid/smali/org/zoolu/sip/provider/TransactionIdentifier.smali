.class public Lorg/zoolu/sip/provider/TransactionIdentifier;
.super Lorg/zoolu/sip/provider/Identifier;
.source "TransactionIdentifier.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/zoolu/sip/provider/Identifier;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/zoolu/sip/provider/TransactionIdentifier;->id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "seqn"    # J
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "sent_by"    # Ljava/lang/String;
    .param p6, "branch"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/zoolu/sip/provider/Identifier;-><init>()V

    .line 49
    if-nez p6, :cond_0

    .line 50
    const-string p6, ""

    .line 51
    :cond_0
    const-string v0, "ACK"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string p4, "INVITE"

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/provider/TransactionIdentifier;->id:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/TransactionIdentifier;)V
    .locals 0
    .param p1, "i"    # Lorg/zoolu/sip/provider/TransactionIdentifier;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Lorg/zoolu/sip/provider/Identifier;)V

    .line 36
    return-void
.end method
