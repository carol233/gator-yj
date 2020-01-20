.class public Lcom/jstun/core/attribute/ChangeRequest;
.super Lcom/jstun/core/attribute/MessageAttribute;
.source "ChangeRequest.java"


# instance fields
.field changeIP:Z

.field changePort:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MessageAttribute;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 25
    iput-boolean v1, p0, Lcom/jstun/core/attribute/ChangeRequest;->changeIP:Z

    .line 26
    iput-boolean v1, p0, Lcom/jstun/core/attribute/ChangeRequest;->changePort:Z

    .line 30
    return-void
.end method

.method public static parse([B)Lcom/jstun/core/attribute/ChangeRequest;
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    array-length v3, p0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 66
    new-instance v3, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v4, "Data array too short"

    invoke-direct {v3, v4}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "ue":Lcom/jstun/core/util/UtilityException;
    new-instance v3, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v4, "Parsing error"

    invoke-direct {v3, v4}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    .end local v2    # "ue":Lcom/jstun/core/util/UtilityException;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/jstun/core/attribute/ChangeRequest;

    invoke-direct {v0}, Lcom/jstun/core/attribute/ChangeRequest;-><init>()V

    .line 69
    .local v0, "cr":Lcom/jstun/core/attribute/ChangeRequest;
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/jstun/core/util/Utility;->oneByteToInteger(B)I

    move-result v1

    .line 70
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 75
    :pswitch_0
    new-instance v3, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v4, "Status parsing error"

    invoke-direct {v3, v4}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :pswitch_1
    invoke-virtual {v0}, Lcom/jstun/core/attribute/ChangeRequest;->setChangePort()V

    .line 77
    :goto_0
    :pswitch_2
    return-object v0

    .line 73
    :pswitch_3
    invoke-virtual {v0}, Lcom/jstun/core/attribute/ChangeRequest;->setChangeIP()V

    goto :goto_0

    .line 74
    :pswitch_4
    invoke-virtual {v0}, Lcom/jstun/core/attribute/ChangeRequest;->setChangeIP()V

    invoke-virtual {v0}, Lcom/jstun/core/attribute/ChangeRequest;->setChangePort()V
    :try_end_1
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getBytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 49
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 52
    .local v0, "result":[B
    iget-object v1, p0, Lcom/jstun/core/attribute/ChangeRequest;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v1}, Lcom/jstun/core/attribute/ChangeRequest;->typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v1

    invoke-static {v1}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    invoke-static {v5}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget-boolean v1, p0, Lcom/jstun/core/attribute/ChangeRequest;->changeIP:Z

    if-eqz v1, :cond_0

    invoke-static {v5}, Lcom/jstun/core/util/Utility;->integerToOneByte(I)B

    move-result v1

    aput-byte v1, v0, v4

    .line 58
    :cond_0
    iget-boolean v1, p0, Lcom/jstun/core/attribute/ChangeRequest;->changePort:Z

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/jstun/core/util/Utility;->integerToOneByte(I)B

    move-result v1

    aput-byte v1, v0, v4

    .line 59
    :cond_1
    iget-boolean v1, p0, Lcom/jstun/core/attribute/ChangeRequest;->changeIP:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jstun/core/attribute/ChangeRequest;->changePort:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/jstun/core/util/Utility;->integerToOneByte(I)B

    move-result v1

    aput-byte v1, v0, v4

    .line 60
    :cond_2
    return-object v0
.end method

.method public isChangeIP()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/jstun/core/attribute/ChangeRequest;->changeIP:Z

    return v0
.end method

.method public isChangePort()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/jstun/core/attribute/ChangeRequest;->changePort:Z

    return v0
.end method

.method public setChangeIP()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/core/attribute/ChangeRequest;->changeIP:Z

    .line 42
    return-void
.end method

.method public setChangePort()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/core/attribute/ChangeRequest;->changePort:Z

    .line 46
    return-void
.end method
