.class public Lcom/jstun/core/attribute/Username;
.super Lcom/jstun/core/attribute/MessageAttribute;
.source "Username.java"


# instance fields
.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MessageAttribute;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MessageAttribute;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/jstun/core/attribute/Username;->setUsername(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static parse([B)Lcom/jstun/core/attribute/Username;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 59
    new-instance v0, Lcom/jstun/core/attribute/Username;

    invoke-direct {v0}, Lcom/jstun/core/attribute/Username;-><init>()V

    .line 60
    .local v0, "result":Lcom/jstun/core/attribute/Username;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 61
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/jstun/core/attribute/Username;->setUsername(Ljava/lang/String;)V

    .line 62
    return-object v0
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
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 38
    iget-object v3, p0, Lcom/jstun/core/attribute/Username;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 40
    .local v0, "length":I
    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_0

    .line 41
    rem-int/lit8 v3, v0, 0x4

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 45
    new-array v1, v0, [B

    .line 48
    .local v1, "result":[B
    iget-object v3, p0, Lcom/jstun/core/attribute/Username;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v3}, Lcom/jstun/core/attribute/Username;->typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I

    move-result v3

    invoke-static {v3}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    add-int/lit8 v3, v0, -0x4

    invoke-static {v3}, Lcom/jstun/core/util/Utility;->integerToTwoBytes(I)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v3, p0, Lcom/jstun/core/attribute/Username;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 54
    .local v2, "temp":[B
    const/4 v3, 0x4

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-object v1
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jstun/core/attribute/Username;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jstun/core/attribute/Username;->username:Ljava/lang/String;

    .line 35
    return-void
.end method
