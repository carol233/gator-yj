.class public Lorg/zoolu/sdp/OriginField;
.super Lorg/zoolu/sdp/SdpField;
.source "OriginField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 43
    const/16 v0, 0x6f

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "sess_id"    # Ljava/lang/String;
    .param p3, "sess_version"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 56
    const/16 v0, 0x6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN IP4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "sess_id"    # Ljava/lang/String;
    .param p3, "sess_version"    # Ljava/lang/String;
    .param p4, "addrtype"    # Ljava/lang/String;
    .param p5, "address"    # Ljava/lang/String;

    .prologue
    .line 49
    const/16 v0, 0x6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/SdpField;)V
    .locals 0
    .param p1, "sf"    # Lorg/zoolu/sdp/SdpField;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/OriginField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/OriginField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/OriginField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/OriginField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/OriginField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
