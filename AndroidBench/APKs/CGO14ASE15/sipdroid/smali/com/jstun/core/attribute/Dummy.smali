.class public Lcom/jstun/core/attribute/Dummy;
.super Lcom/jstun/core/attribute/MessageAttribute;
.source "Dummy.java"


# instance fields
.field lengthValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MessageAttribute;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 21
    return-void
.end method

.method public static parse([B)Lcom/jstun/core/attribute/Dummy;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 38
    new-instance v0, Lcom/jstun/core/attribute/Dummy;

    invoke-direct {v0}, Lcom/jstun/core/attribute/Dummy;-><init>()V

    .line 39
    .local v0, "dummy":Lcom/jstun/core/attribute/Dummy;
    array-length v1, p0

    invoke-virtual {v0, v1}, Lcom/jstun/core/attribute/Dummy;->setLengthValue(I)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 28
    iget v1, p0, Lcom/jstun/core/attribute/Dummy;->lengthValue:I

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    .line 31
    .local v0, "result":[B
    iget-object v1, p0, Lcom/jstun/core/attribute/Dummy;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v1}, Lcom/jstun/core/attribute/Dummy;->typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v1

    invoke-static {v1}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget v1, p0, Lcom/jstun/core/attribute/Dummy;->lengthValue:I

    invoke-static {v1}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-object v0
.end method

.method public setLengthValue(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/jstun/core/attribute/Dummy;->lengthValue:I

    .line 25
    return-void
.end method
