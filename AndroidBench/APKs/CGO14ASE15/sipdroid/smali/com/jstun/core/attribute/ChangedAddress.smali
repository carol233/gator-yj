.class public Lcom/jstun/core/attribute/ChangedAddress;
.super Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;
.source "ChangedAddress.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.jstun.core.attribute.ChangedAddress"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jstun/core/attribute/ChangedAddress;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-direct {p0, v0}, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;-><init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 22
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
    .line 25
    new-instance v0, Lcom/jstun/core/attribute/ChangedAddress;

    invoke-direct {v0}, Lcom/jstun/core/attribute/ChangedAddress;-><init>()V

    .line 26
    .local v0, "ca":Lcom/jstun/core/attribute/ChangedAddress;
    invoke-static {v0, p0}, Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;->parse(Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;[B)Lcom/jstun/core/attribute/MappedResponseChangedSourceAddressReflectedFrom;

    .line 27
    sget-object v1, Lcom/jstun/core/attribute/ChangedAddress;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message Attribute: Changed Address parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jstun/core/attribute/ChangedAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 28
    return-object v0
.end method
