.class public Lorg/zoolu/sdp/ConnectionField;
.super Lorg/zoolu/sdp/SdpField;
.source "ConnectionField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "connection_field"    # Ljava/lang/String;

    .prologue
    .line 45
    const/16 v0, 0x63

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "address_type"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 60
    const/16 v0, 0x63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "address_type"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "ttl"    # I
    .param p4, "num"    # I

    .prologue
    .line 50
    const/16 v0, 0x63

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    .line 52
    if-lez p3, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    .line 54
    :cond_0
    if-lez p4, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    .line 56
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/SdpField;)V
    .locals 0
    .param p1, "sf"    # Lorg/zoolu/sdp/SdpField;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    new-instance v2, Lorg/zoolu/tools/Parser;

    iget-object v3, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "address":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "i":I
    if-gez v1, :cond_0

    .line 82
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "address":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAddressType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v1, Lorg/zoolu/tools/Parser;

    iget-object v2, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "type":Ljava/lang/String;
    return-object v0
.end method

.method public getNum()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v4, Lorg/zoolu/tools/Parser;

    iget-object v5, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "address":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "i":I
    if-gez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v3

    .line 106
    :cond_1
    const-string v4, "/"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, "j":I
    if-ltz v2, :cond_0

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public getTTL()I
    .locals 5

    .prologue
    .line 87
    new-instance v3, Lorg/zoolu/tools/Parser;

    iget-object v4, p0, Lorg/zoolu/sdp/ConnectionField;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "address":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "i":I
    if-gez v1, :cond_0

    .line 91
    const/4 v3, 0x0

    .line 96
    :goto_0
    return v3

    .line 92
    :cond_0
    const-string v3, "/"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, "j":I
    if-gez v2, :cond_1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method
