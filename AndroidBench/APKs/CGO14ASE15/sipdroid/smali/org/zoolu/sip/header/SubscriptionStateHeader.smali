.class public Lorg/zoolu/sip/header/SubscriptionStateHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "SubscriptionStateHeader.java"


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final PENDING:Ljava/lang/String; = "pending"

.field public static final TERMINATED:Ljava/lang/String; = "terminated"

.field private static final delim:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/zoolu/sip/header/SubscriptionStateHeader;->delim:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
        0x20s
        0x9s
        0xas
        0xds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "Subscription-State"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getExpires()I
    .locals 2

    .prologue
    .line 85
    const-string v1, "expires"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "exp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "reason"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sip/header/SubscriptionStateHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/zoolu/sip/header/SubscriptionStateHeader;->delim:[C

    invoke-virtual {v0, v1}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExpires()Z
    .locals 1

    .prologue
    .line 80
    const-string v0, "expires"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 100
    const-string v0, "reason"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "terminated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setExpires(I)Lorg/zoolu/sip/header/SubscriptionStateHeader;
    .locals 2
    .param p1, "secs"    # I

    .prologue
    .line 74
    const-string v0, "expires"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lorg/zoolu/sip/header/SubscriptionStateHeader;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "reason"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/SubscriptionStateHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object p0
.end method
