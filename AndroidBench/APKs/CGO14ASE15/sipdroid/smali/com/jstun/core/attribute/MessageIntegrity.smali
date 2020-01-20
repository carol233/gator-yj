.class public Lcom/jstun/core/attribute/MessageIntegrity;
.super Lcom/jstun/core/attribute/MessageAttribute;
.source "MessageIntegrity.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MessageAttribute;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 18
    return-void
.end method

.method public static parse([B)Lcom/jstun/core/attribute/MessageIntegrity;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 25
    new-instance v0, Lcom/jstun/core/attribute/MessageIntegrity;

    invoke-direct {v0}, Lcom/jstun/core/attribute/MessageIntegrity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
