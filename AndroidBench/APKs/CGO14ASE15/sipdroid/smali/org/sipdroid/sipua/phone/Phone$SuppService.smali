.class public final enum Lorg/sipdroid/sipua/phone/Phone$SuppService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuppService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/sipdroid/sipua/phone/Phone$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sipdroid/sipua/phone/Phone$SuppService;

.field public static final enum CONFERENCE:Lorg/sipdroid/sipua/phone/Phone$SuppService;

.field public static final enum HANGUP:Lorg/sipdroid/sipua/phone/Phone$SuppService;

.field public static final enum REJECT:Lorg/sipdroid/sipua/phone/Phone$SuppService;

.field public static final enum SEPARATE:Lorg/sipdroid/sipua/phone/Phone$SuppService;

.field public static final enum SWITCH:Lorg/sipdroid/sipua/phone/Phone$SuppService;

.field public static final enum TRANSFER:Lorg/sipdroid/sipua/phone/Phone$SuppService;

.field public static final enum UNKNOWN:Lorg/sipdroid/sipua/phone/Phone$SuppService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lorg/sipdroid/sipua/phone/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->UNKNOWN:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const-string v1, "SWITCH"

    invoke-direct {v0, v1, v4}, Lorg/sipdroid/sipua/phone/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->SWITCH:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const-string v1, "SEPARATE"

    invoke-direct {v0, v1, v5}, Lorg/sipdroid/sipua/phone/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->SEPARATE:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v6}, Lorg/sipdroid/sipua/phone/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->TRANSFER:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const-string v1, "CONFERENCE"

    invoke-direct {v0, v1, v7}, Lorg/sipdroid/sipua/phone/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->CONFERENCE:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const-string v1, "REJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->REJECT:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const-string v1, "HANGUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->HANGUP:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/sipdroid/sipua/phone/Phone$SuppService;

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$SuppService;->UNKNOWN:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$SuppService;->SWITCH:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$SuppService;->SEPARATE:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$SuppService;->TRANSFER:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$SuppService;->CONFERENCE:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/sipdroid/sipua/phone/Phone$SuppService;->REJECT:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/sipdroid/sipua/phone/Phone$SuppService;->HANGUP:Lorg/sipdroid/sipua/phone/Phone$SuppService;

    aput-object v2, v0, v1

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->$VALUES:[Lorg/sipdroid/sipua/phone/Phone$SuppService;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sipdroid/sipua/phone/Phone$SuppService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;

    return-object v0
.end method

.method public static values()[Lorg/sipdroid/sipua/phone/Phone$SuppService;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/sipdroid/sipua/phone/Phone$SuppService;->$VALUES:[Lorg/sipdroid/sipua/phone/Phone$SuppService;

    invoke-virtual {v0}, [Lorg/sipdroid/sipua/phone/Phone$SuppService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sipdroid/sipua/phone/Phone$SuppService;

    return-object v0
.end method
