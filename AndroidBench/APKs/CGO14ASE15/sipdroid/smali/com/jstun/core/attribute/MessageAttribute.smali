.class public abstract Lcom/jstun/core/attribute/MessageAttribute;
.super Ljava/lang/Object;
.source "MessageAttribute.java"

# interfaces
.implements Lcom/jstun/core/attribute/MessageAttributeInterface;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.jstun.core.util.MessageAttribute"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jstun/core/attribute/MessageAttribute;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 0
    .param p1, "type"    # Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/jstun/core/attribute/MessageAttribute;->setType(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    .line 29
    return-void
.end method

.method public static intToType(J)Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 2
    .param p0, "type"    # J

    .prologue
    .line 56
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 68
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 58
    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 59
    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->SourceAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 60
    :cond_3
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 61
    :cond_4
    const-wide/16 v0, 0x6

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 62
    :cond_5
    const-wide/16 v0, 0x7

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 63
    :cond_6
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 64
    :cond_7
    const-wide/16 v0, 0x9

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 65
    :cond_8
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 66
    :cond_9
    const-wide/16 v0, 0xb

    cmp-long v0, p0, v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ReflectedFrom:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 67
    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    goto :goto_0

    .line 68
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseCommonHeader([B)Lcom/jstun/core/attribute/MessageAttribute;
    .locals 11
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/attribute/MessageAttributeParsingException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v7, 0x2

    :try_start_0
    new-array v4, v7, [B

    .line 82
    .local v4, "typeArray":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {p0, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    invoke-static {v4}, Lcom/jstun/core/util/Utility;->twoBytesToInteger([B)I

    move-result v3

    .line 84
    .local v3, "type":I
    const/4 v7, 0x2

    new-array v0, v7, [B

    .line 85
    .local v0, "lengthArray":[B
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {p0, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {v0}, Lcom/jstun/core/util/Utility;->twoBytesToInteger([B)I

    move-result v1

    .line 87
    .local v1, "lengthValue":I
    new-array v6, v1, [B

    .line 88
    .local v6, "valueArray":[B
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {p0, v7, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    packed-switch v3, :pswitch_data_0

    .line 103
    const/16 v7, 0x7fff

    if-gt v3, v7, :cond_0

    .line 104
    new-instance v7, Lcom/jstun/core/attribute/UnknownMessageAttributeException;

    const-string v8, "Unkown mandatory message attribute"

    int-to-long v9, v3

    invoke-static {v9, v10}, Lcom/jstun/core/attribute/MessageAttribute;->intToType(J)Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/jstun/core/attribute/UnknownMessageAttributeException;-><init>(Ljava/lang/String;Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V

    throw v7
    :try_end_0
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "lengthArray":[B
    .end local v1    # "lengthValue":I
    .end local v3    # "type":I
    .end local v4    # "typeArray":[B
    .end local v6    # "valueArray":[B
    :catch_0
    move-exception v5

    .line 113
    .local v5, "ue":Lcom/jstun/core/util/UtilityException;
    new-instance v7, Lcom/jstun/core/attribute/MessageAttributeParsingException;

    const-string v8, "Parsing error"

    invoke-direct {v7, v8}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 91
    .end local v5    # "ue":Lcom/jstun/core/util/UtilityException;
    .restart local v0    # "lengthArray":[B
    .restart local v1    # "lengthValue":I
    .restart local v3    # "type":I
    .restart local v4    # "typeArray":[B
    .restart local v6    # "valueArray":[B
    :pswitch_0
    :try_start_1
    invoke-static {v6}, Lcom/jstun/core/attribute/MappedAddress;->parse([B)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v2

    .line 111
    .local v2, "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :goto_0
    return-object v2

    .line 92
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_1
    invoke-static {v6}, Lcom/jstun/core/attribute/ResponseAddress;->parse([B)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 93
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_2
    invoke-static {v6}, Lcom/jstun/core/attribute/ChangeRequest;->parse([B)Lcom/jstun/core/attribute/ChangeRequest;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 94
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_3
    invoke-static {v6}, Lcom/jstun/core/attribute/SourceAddress;->parse([B)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 95
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_4
    invoke-static {v6}, Lcom/jstun/core/attribute/ChangedAddress;->parse([B)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 96
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_5
    invoke-static {v6}, Lcom/jstun/core/attribute/Username;->parse([B)Lcom/jstun/core/attribute/Username;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 97
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_6
    invoke-static {v6}, Lcom/jstun/core/attribute/Password;->parse([B)Lcom/jstun/core/attribute/Password;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 98
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_7
    invoke-static {v6}, Lcom/jstun/core/attribute/MessageIntegrity;->parse([B)Lcom/jstun/core/attribute/MessageIntegrity;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 99
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_8
    invoke-static {v6}, Lcom/jstun/core/attribute/ErrorCode;->parse([B)Lcom/jstun/core/attribute/ErrorCode;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 100
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_9
    invoke-static {v6}, Lcom/jstun/core/attribute/UnknownAttribute;->parse([B)Lcom/jstun/core/attribute/UnknownAttribute;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 101
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :pswitch_a
    invoke-static {v6}, Lcom/jstun/core/attribute/ReflectedFrom;->parse([B)Lcom/jstun/core/attribute/ReflectedFrom;

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 106
    .end local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    :cond_0
    sget-object v7, Lcom/jstun/core/attribute/MessageAttribute;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessageAttribute with type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unkown."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 107
    invoke-static {v6}, Lcom/jstun/core/attribute/Dummy;->parse([B)Lcom/jstun/core/attribute/Dummy;
    :try_end_1
    .catch Lcom/jstun/core/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "ma":Lcom/jstun/core/attribute/MessageAttribute;
    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static typeToInteger(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)I
    .locals 1
    .param p0, "type"    # Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .prologue
    .line 40
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 41
    :cond_0
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->SourceAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 44
    :cond_3
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 45
    :cond_4
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 46
    :cond_5
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 47
    :cond_6
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 48
    :cond_7
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 49
    :cond_8
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_9

    const/16 v0, 0xa

    goto :goto_0

    .line 50
    :cond_9
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ReflectedFrom:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_a

    const/16 v0, 0xb

    goto :goto_0

    .line 51
    :cond_a
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    if-ne p0, v0, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract getBytes()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;
        }
    .end annotation
.end method

.method public getLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/jstun/core/attribute/MessageAttribute;->getBytes()[B

    move-result-object v1

    array-length v0, v1

    .line 76
    .local v0, "length":I
    return v0
.end method

.method public getType()Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jstun/core/attribute/MessageAttribute;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    return-object v0
.end method

.method public setType(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 0
    .param p1, "type"    # Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jstun/core/attribute/MessageAttribute;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 33
    return-void
.end method
