.class public final enum Lorg/sipdroid/sipua/phone/Call$State;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/sipdroid/sipua/phone/Call$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum ACTIVE:Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum ALERTING:Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum DIALING:Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum HOLDING:Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum IDLE:Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum INCOMING:Lorg/sipdroid/sipua/phone/Call$State;

.field public static final enum WAITING:Lorg/sipdroid/sipua/phone/Call$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->IDLE:Lorg/sipdroid/sipua/phone/Call$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->ACTIVE:Lorg/sipdroid/sipua/phone/Call$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "HOLDING"

    invoke-direct {v0, v1, v5}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->HOLDING:Lorg/sipdroid/sipua/phone/Call$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v6}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->DIALING:Lorg/sipdroid/sipua/phone/Call$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v7}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->ALERTING:Lorg/sipdroid/sipua/phone/Call$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "INCOMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->INCOMING:Lorg/sipdroid/sipua/phone/Call$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "WAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->WAITING:Lorg/sipdroid/sipua/phone/Call$State;

    new-instance v0, Lorg/sipdroid/sipua/phone/Call$State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/phone/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/sipdroid/sipua/phone/Call$State;

    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->IDLE:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->ACTIVE:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->HOLDING:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->DIALING:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->ALERTING:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/sipdroid/sipua/phone/Call$State;->INCOMING:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/sipdroid/sipua/phone/Call$State;->WAITING:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/sipdroid/sipua/phone/Call$State;->DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/sipdroid/sipua/phone/Call$State;->$VALUES:[Lorg/sipdroid/sipua/phone/Call$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/sipdroid/sipua/phone/Call$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/sipdroid/sipua/phone/Call$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/sipua/phone/Call$State;

    return-object v0
.end method

.method public static values()[Lorg/sipdroid/sipua/phone/Call$State;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->$VALUES:[Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v0}, [Lorg/sipdroid/sipua/phone/Call$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sipdroid/sipua/phone/Call$State;

    return-object v0
.end method


# virtual methods
.method public isAlive()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->IDLE:Lorg/sipdroid/sipua/phone/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialing()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->DIALING:Lorg/sipdroid/sipua/phone/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->ALERTING:Lorg/sipdroid/sipua/phone/Call$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->INCOMING:Lorg/sipdroid/sipua/phone/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->WAITING:Lorg/sipdroid/sipua/phone/Call$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
