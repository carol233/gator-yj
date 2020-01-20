.class public Lorg/zoolu/sdp/SdpField;
.super Ljava/lang/Object;
.source "SdpField.java"


# instance fields
.field type:C

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(CLjava/lang/String;)V
    .locals 0
    .param p1, "s_type"    # C
    .param p2, "s_value"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-char p1, p0, Lorg/zoolu/sdp/SdpField;->type:C

    .line 46
    iput-object p2, p0, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/zoolu/sdp/SdpParser;

    invoke-direct {v0, p1}, Lorg/zoolu/sdp/SdpParser;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "par":Lorg/zoolu/sdp/SdpParser;
    invoke-virtual {v0}, Lorg/zoolu/sdp/SdpParser;->parseSdpField()Lorg/zoolu/sdp/SdpField;

    move-result-object v1

    .line 71
    .local v1, "sf":Lorg/zoolu/sdp/SdpField;
    iget-char v2, v1, Lorg/zoolu/sdp/SdpField;->type:C

    iput-char v2, p0, Lorg/zoolu/sdp/SdpField;->type:C

    .line 72
    iget-object v2, v1, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    iput-object v2, p0, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/SdpField;)V
    .locals 1
    .param p1, "sf"    # Lorg/zoolu/sdp/SdpField;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-char v0, p1, Lorg/zoolu/sdp/SdpField;->type:C

    iput-char v0, p0, Lorg/zoolu/sdp/SdpField;->type:C

    .line 57
    iget-object v0, p1, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    iput-object v0, p0, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lorg/zoolu/sdp/SdpField;

    invoke-direct {v0, p0}, Lorg/zoolu/sdp/SdpField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 91
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sdp/SdpField;

    move-object v2, v0

    .line 92
    .local v2, "sf":Lorg/zoolu/sdp/SdpField;
    iget-char v4, p0, Lorg/zoolu/sdp/SdpField;->type:C

    iget-char v5, v2, Lorg/zoolu/sdp/SdpField;->type:C

    if-eq v4, v5, :cond_1

    .line 98
    .end local v2    # "sf":Lorg/zoolu/sdp/SdpField;
    :cond_0
    :goto_0
    return v3

    .line 94
    .restart local v2    # "sf":Lorg/zoolu/sdp/SdpField;
    :cond_1
    iget-object v4, p0, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    iget-object v5, v2, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 96
    const/4 v3, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "sf":Lorg/zoolu/sdp/SdpField;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getType()C
    .locals 1

    .prologue
    .line 108
    iget-char v0, p0, Lorg/zoolu/sdp/SdpField;->type:C

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lorg/zoolu/sdp/SdpField;->type:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sdp/SdpField;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
