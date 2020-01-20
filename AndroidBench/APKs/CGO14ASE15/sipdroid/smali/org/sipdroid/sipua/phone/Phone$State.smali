.class public final enum Lorg/sipdroid/sipua/phone/Phone$State;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/sipdroid/sipua/phone/Phone$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sipdroid/sipua/phone/Phone$State;

.field public static final enum IDLE:Lorg/sipdroid/sipua/phone/Phone$State;

.field public static final enum OFFHOOK:Lorg/sipdroid/sipua/phone/Phone$State;

.field public static final enum RINGING:Lorg/sipdroid/sipua/phone/Phone$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Phone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$State;->IDLE:Lorg/sipdroid/sipua/phone/Phone$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$State;

    const-string v1, "RINGING"

    invoke-direct {v0, v1, v3}, Lorg/sipdroid/sipua/phone/Phone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$State;->RINGING:Lorg/sipdroid/sipua/phone/Phone$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Phone$State;

    const-string v1, "OFFHOOK"

    invoke-direct {v0, v1, v4}, Lorg/sipdroid/sipua/phone/Phone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$State;->OFFHOOK:Lorg/sipdroid/sipua/phone/Phone$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/sipdroid/sipua/phone/Phone$State;

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$State;->IDLE:Lorg/sipdroid/sipua/phone/Phone$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$State;->RINGING:Lorg/sipdroid/sipua/phone/Phone$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$State;->OFFHOOK:Lorg/sipdroid/sipua/phone/Phone$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/sipdroid/sipua/phone/Phone$State;->$VALUES:[Lorg/sipdroid/sipua/phone/Phone$State;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sipdroid/sipua/phone/Phone$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/sipdroid/sipua/phone/Phone$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/sipua/phone/Phone$State;

    return-object v0
.end method

.method public static values()[Lorg/sipdroid/sipua/phone/Phone$State;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/sipdroid/sipua/phone/Phone$State;->$VALUES:[Lorg/sipdroid/sipua/phone/Phone$State;

    invoke-virtual {v0}, [Lorg/sipdroid/sipua/phone/Phone$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sipdroid/sipua/phone/Phone$State;

    return-object v0
.end method
