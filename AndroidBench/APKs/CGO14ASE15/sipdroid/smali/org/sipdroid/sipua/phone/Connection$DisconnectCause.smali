.class public final enum Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisconnectCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum BUSY:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum CALL_BARRED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum CONGESTION:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum FDN_BLOCKED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum INCOMING_MISSED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum INCOMING_REJECTED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum INVALID_NUMBER:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum LIMIT_EXCEEDED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum LOCAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum LOST_SIGNAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum MMI:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum NORMAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum NOT_DISCONNECTED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum OUT_OF_SERVICE:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum POWER_OFF:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

.field public static final enum SIM_ERROR:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "NOT_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->NOT_DISCONNECTED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 45
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "INCOMING_MISSED"

    invoke-direct {v0, v1, v4}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->INCOMING_MISSED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 46
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->NORMAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 47
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v6}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->LOCAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 48
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v7}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->BUSY:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 49
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "CONGESTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->CONGESTION:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 50
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "MMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->MMI:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 51
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "INVALID_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->INVALID_NUMBER:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 52
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "LOST_SIGNAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->LOST_SIGNAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 53
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "LIMIT_EXCEEDED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 54
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "INCOMING_REJECTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->INCOMING_REJECTED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 55
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "POWER_OFF"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->POWER_OFF:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 56
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "OUT_OF_SERVICE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->OUT_OF_SERVICE:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 57
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "SIM_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->SIM_ERROR:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 58
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "CALL_BARRED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->CALL_BARRED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 59
    new-instance v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    const-string v1, "FDN_BLOCKED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->FDN_BLOCKED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    sget-object v1, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->NOT_DISCONNECTED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->INCOMING_MISSED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->NORMAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->LOCAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->BUSY:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->CONGESTION:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->MMI:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->INVALID_NUMBER:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->LOST_SIGNAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->INCOMING_REJECTED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->POWER_OFF:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->OUT_OF_SERVICE:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->SIM_ERROR:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->CALL_BARRED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->FDN_BLOCKED:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    aput-object v2, v0, v1

    sput-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->$VALUES:[Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    return-object v0
.end method

.method public static values()[Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->$VALUES:[Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    invoke-virtual {v0}, [Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    return-object v0
.end method
