.class public Lorg/sipdroid/sipua/phone/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/Call$State;
    }
.end annotation


# instance fields
.field public base:J

.field earliest:Lorg/sipdroid/sipua/phone/Connection;

.field mState:Lorg/sipdroid/sipua/phone/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lorg/sipdroid/sipua/phone/Call$State;->IDLE:Lorg/sipdroid/sipua/phone/Call$State;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/Call;->mState:Lorg/sipdroid/sipua/phone/Call$State;

    return-void
.end method


# virtual methods
.method public getEarliestConnection()Lorg/sipdroid/sipua/phone/Connection;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/Call;->earliest:Lorg/sipdroid/sipua/phone/Connection;

    return-object v0
.end method

.method public getState()Lorg/sipdroid/sipua/phone/Call$State;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/Call;->mState:Lorg/sipdroid/sipua/phone/Call$State;

    return-object v0
.end method

.method public hasConnections()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public setConn(Lorg/sipdroid/sipua/phone/Connection;)V
    .locals 0
    .param p1, "conn"    # Lorg/sipdroid/sipua/phone/Connection;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/Call;->earliest:Lorg/sipdroid/sipua/phone/Connection;

    .line 60
    return-void
.end method

.method public setState(Lorg/sipdroid/sipua/phone/Call$State;)V
    .locals 0
    .param p1, "state"    # Lorg/sipdroid/sipua/phone/Call$State;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/Call;->mState:Lorg/sipdroid/sipua/phone/Call$State;

    .line 57
    return-void
.end method
