.class public Lcom/jstun/core/attribute/ResponseAddress;
.super Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;
.source "ResponseAddress.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.jstun.core.attribute.ResponseAddress"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jstun/core/attribute/ResponseAddress;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 21
    return-void
.end method

.method public static parse([B)Lcom/jstun/core/attribute/MessageAttribute;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/jstun/core/attribute/ResponseAddress;

    invoke-direct {v0}, Lcom/jstun/core/attribute/ResponseAddress;-><init>()V

    .line 25
    .local v0, "ra":Lcom/jstun/core/attribute/ResponseAddress;
    invoke-static {v0, p0}, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->parse(Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;[B)Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;

    .line 26
    sget-object v1, Lcom/jstun/core/attribute/ResponseAddress;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message Attribute: Response Address parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jstun/core/attribute/ResponseAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method
