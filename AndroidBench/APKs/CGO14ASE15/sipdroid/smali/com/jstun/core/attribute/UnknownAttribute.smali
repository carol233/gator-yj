.class public Lcom/jstun/core/attribute/UnknownAttribute;
.super Lcom/jstun/core/attribute/MessageAttribute;
.source "UnknownAttribute.java"


# instance fields
.field unkown:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MessageAttribute;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    .line 35
    return-void
.end method

.method public static parse([B)Lcom/jstun/core/attribute/UnknownAttribute;
    .locals 8
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    new-instance v3, Lcom/jstun/core/attribute/UnknownAttribute;

    invoke-direct {v3}, Lcom/jstun/core/attribute/UnknownAttribute;-><init>()V

    .line 71
    .local v3, "result":Lcom/jstun/core/attribute/UnknownAttribute;
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    new-instance v6, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v7, "Data array too short"

    invoke-direct {v6, v7}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v3    # "result":Lcom/jstun/core/attribute/UnknownAttribute;
    :catch_0
    move-exception v5

    .line 80
    .local v5, "ue":Lcom/jstun/core/util/UtilityException;
    new-instance v6, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v7, "Parsing error"

    invoke-direct {v6, v7}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 72
    .end local v5    # "ue":Lcom/jstun/core/util/UtilityException;
    .restart local v3    # "result":Lcom/jstun/core/attribute/UnknownAttribute;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v6, p0

    if-ge v2, v6, :cond_1

    .line 73
    const/4 v6, 0x4

    new-array v4, v6, [B

    .line 74
    .local v4, "temp":[B
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {p0, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-static {v4}, Lcom/jstun/core/util/Utility;->fourBytesToLong([B)J

    move-result-wide v0

    .line 76
    .local v0, "attri":J
    invoke-static {v0, v1}, Lcom/jstun/core/attribute/MessageAttribute;->intToType(J)Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/jstun/core/attribute/UnknownAttribute;->addAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V
    :try_end_1
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 78
    .end local v0    # "attri":J
    .end local v4    # "temp":[B
    :cond_1
    return-object v3
.end method


# virtual methods
.method public addAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 1
    .param p1, "attribute"    # Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public getBytes()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "length":I
    iget-object v4, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_0

    .line 44
    iget-object v4, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x4

    .line 48
    :goto_0
    new-array v3, v2, [B

    .line 51
    .local v3, "result":[B
    iget-object v4, p0, Lcom/jstun/core/attribute/UnknownAttribute;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v4}, Lcom/jstun/core/attribute/UnknownAttribute;->typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v4

    invoke-static {v4}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    add-int/lit8 v4, v2, -0x4

    invoke-static {v4}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v4, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 59
    .local v0, "attri":Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
    invoke-static {v0}, Lcom/jstun/core/attribute/UnknownAttribute;->typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v4

    invoke-static {v4}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 46
    .end local v0    # "attri":Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;>;"
    .end local v3    # "result":[B
    :cond_0
    iget-object v4, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x4

    goto :goto_0

    .line 62
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;>;"
    .restart local v3    # "result":[B
    :cond_1
    iget-object v4, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_2

    .line 63
    iget-object v4, p0, Lcom/jstun/core/attribute/UnknownAttribute;->unkown:Ljava/util/Vector;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v4}, Lcom/jstun/core/attribute/UnknownAttribute;->typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v4

    invoke-static {v4}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v4

    invoke-static {v4, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :cond_2
    return-object v3
.end method
