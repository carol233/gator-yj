.class public final enum Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
.super Ljava/lang/Enum;
.source "MessageAttributeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jstun/core/attribute/MessageAttributeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageAttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ChangeRequest:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ChangedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum Dummy:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum MappedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum MessageIntegrity:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum Password:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ReflectedFrom:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ResponseAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum SourceAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum UnknownAttribute:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum Username:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "MappedAddress"

    invoke-direct {v0, v1, v3}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ResponseAddress"

    invoke-direct {v0, v1, v4}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ChangeRequest"

    invoke-direct {v0, v1, v5}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "SourceAddress"

    invoke-direct {v0, v1, v6}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->SourceAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ChangedAddress"

    invoke-direct {v0, v1, v7}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "Username"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "Password"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "MessageIntegrity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ErrorCode"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "UnknownAttribute"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ReflectedFrom"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ReflectedFrom:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "Dummy"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    sget-object v1, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->SourceAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ReflectedFrom:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->$VALUES:[Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    return-object v0
.end method

.method public static values()[Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->$VALUES:[Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v0}, [Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    return-object v0
.end method
