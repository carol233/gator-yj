.class public Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;
.super Lcom/jstun/core/attribute/MessageAttribute;
.source "MappedResponseChangedSourceAddressReflectedFrom.java"


# instance fields
.field address:Lcom/jstun/core/util/Address;

.field port:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/jstun/core/attribute/MessageAttribute;-><init>()V

    .line 34
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    .line 35
    new-instance v1, Lcom/jstun/core/util/Address;

    const-string v2, "0.0.0.0"

    invoke-direct {v1, v2}, Lcom/jstun/core/util/Address;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lcom/jstun/core/util/Address;
    :try_end_0
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ue":Lcom/jstun/core/util/UtilityException;
    invoke-virtual {v0}, Lcom/jstun/core/util/UtilityException;->getMessage()Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/jstun/core/util/UtilityException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 0
    .param p1, "type"    # Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/jstun/core/attribute/MessageAttribute;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 44
    return-void
.end method

.method protected static parse(Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;[B)Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;
    .locals 11
    .param p0, "ma"    # Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 85
    :try_start_0
    array-length v8, p1

    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    .line 86
    new-instance v8, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v9, "Data array too short"

    invoke-direct {v8, v9}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/jstun/core/attribute/MessageAttributeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :catch_0
    move-exception v7

    .line 100
    .local v7, "ue":Lcom/jstun/core/util/UtilityException;
    new-instance v8, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v9, "Parsing error"

    invoke-direct {v8, v9}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 88
    .end local v7    # "ue":Lcom/jstun/core/util/UtilityException;
    :cond_0
    const/4 v8, 0x1

    :try_start_1
    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/jstun/core/util/Utility;->oneByteToInteger(B)I

    move-result v0

    .line 89
    .local v0, "family":I
    if-eq v0, v10, :cond_1

    new-instance v8, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Family "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/jstun/core/attribute/MessageAttributeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .end local v0    # "family":I
    :catch_1
    move-exception v3

    .line 102
    .local v3, "mae":Lcom/jstun/core/attribute/MessageAttributeException;
    new-instance v8, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v9, "Port parsing error"

    invoke-direct {v8, v9}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 90
    .end local v3    # "mae":Lcom/jstun/core/attribute/MessageAttributeException;
    .restart local v0    # "family":I
    :cond_1
    const/4 v8, 0x2

    :try_start_2
    new-array v4, v8, [B

    .line 91
    .local v4, "portArray":[B
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {p1, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v4}, Lcom/jstun/core/util/Utility;->twoBytesToInteger([B)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->setPort(I)V

    .line 93
    const/4 v8, 0x4

    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/jstun/core/util/Utility;->oneByteToInteger(B)I

    move-result v1

    .line 94
    .local v1, "firstOctet":I
    const/4 v8, 0x5

    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/jstun/core/util/Utility;->oneByteToInteger(B)I

    move-result v5

    .line 95
    .local v5, "secondOctet":I
    const/4 v8, 0x6

    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/jstun/core/util/Utility;->oneByteToInteger(B)I

    move-result v6

    .line 96
    .local v6, "thirdOctet":I
    const/4 v8, 0x7

    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/jstun/core/util/Utility;->oneByteToInteger(B)I

    move-result v2

    .line 97
    .local v2, "fourthOctet":I
    new-instance v8, Lcom/jstun/core/util/Address;

    invoke-direct {v8, v1, v5, v6, v2}, Lcom/jstun/core/util/Address;-><init>(IIII)V

    invoke-virtual {p0, v8}, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->setAddress(Lcom/jstun/core/util/Address;)V
    :try_end_2
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/jstun/core/attribute/MessageAttributeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    return-object p0
.end method


# virtual methods
.method public getAddress()Lcom/jstun/core/util/Address;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lcom/jstun/core/util/Address;

    return-object v0
.end method

.method public getBytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 66
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 69
    .local v0, "result":[B
    iget-object v1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v1}, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v1

    invoke-static {v1}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-static {v5}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/jstun/core/util/Utility;->integerToOneByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 77
    iget v1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    invoke-static {v1}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lcom/jstun/core/util/Address;

    invoke-virtual {v1}, Lcom/jstun/core/util/Address;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    return v0
.end method

.method public setAddress(Lcom/jstun/core/util/Address;)V
    .locals 0
    .param p1, "address"    # Lcom/jstun/core/util/Address;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lcom/jstun/core/util/Address;

    .line 63
    return-void
.end method

.method public setPort(I)V
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/attribute/MessageAttributeException;
        }
    .end annotation

    .prologue
    .line 55
    const/high16 v0, 0x10000

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 56
    :cond_0
    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jstun/core/attribute/MessageAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput p1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->address:Lcom/jstun/core/util/Address;

    invoke-virtual {v1}, Lcom/jstun/core/util/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
