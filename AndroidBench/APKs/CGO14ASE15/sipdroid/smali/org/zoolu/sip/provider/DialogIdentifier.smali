.class public Lorg/zoolu/sip/provider/DialogIdentifier;
.super Lorg/zoolu/sip/provider/Identifier;
.source "DialogIdentifier.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "call_id"    # Ljava/lang/String;
    .param p2, "local_tag"    # Ljava/lang/String;
    .param p3, "remote_tag"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/zoolu/sip/provider/Identifier;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/provider/DialogIdentifier;->id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/DialogIdentifier;)V
    .locals 0
    .param p1, "i"    # Lorg/zoolu/sip/provider/DialogIdentifier;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Lorg/zoolu/sip/provider/Identifier;)V

    .line 38
    return-void
.end method
