.class public Lorg/zoolu/sdp/AttributeField;
.super Lorg/zoolu/sdp/SdpField;
.source "AttributeField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 45
    const/16 v0, 0x61

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "a_value"    # Ljava/lang/String;

    .prologue
    .line 50
    const/16 v0, 0x61

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 55
    invoke-direct {p0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lorg/zoolu/sdp/AttributeField;->value:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 62
    iget-object v1, p0, Lorg/zoolu/sdp/AttributeField;->value:Ljava/lang/String;

    .line 64
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/zoolu/sdp/AttributeField;->value:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lorg/zoolu/sdp/AttributeField;->value:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/zoolu/sdp/AttributeField;->value:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
