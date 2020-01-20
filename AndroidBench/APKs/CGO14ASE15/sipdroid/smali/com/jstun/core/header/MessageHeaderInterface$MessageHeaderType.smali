.class public final enum Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;
.super Ljava/lang/Enum;
.source "MessageHeaderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jstun/core/header/MessageHeaderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageHeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum BindingErrorResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum BindingRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum BindingResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum SharedSecretErrorResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum SharedSecretRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum SharedSecretResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;


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
    new-instance v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "BindingRequest"

    invoke-direct {v0, v1, v3}, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "BindingResponse"

    invoke-direct {v0, v1, v4}, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "BindingErrorResponse"

    invoke-direct {v0, v1, v5}, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingErrorResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "SharedSecretRequest"

    invoke-direct {v0, v1, v6}, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "SharedSecretResponse"

    invoke-direct {v0, v1, v7}, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "SharedSecretErrorResponse"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretErrorResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    sget-object v1, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingErrorResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretErrorResponse:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->$VALUES:[Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    return-object v0
.end method

.method public static values()[Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->$VALUES:[Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    invoke-virtual {v0}, [Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    return-object v0
.end method
