.class public Lorg/zoolu/sdp/TimeField;
.super Lorg/zoolu/sdp/SdpField;
.source "TimeField.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x74

    const-string v1, "0 0"

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "time_field"    # Ljava/lang/String;

    .prologue
    .line 42
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "stop"    # Ljava/lang/String;

    .prologue
    .line 47
    const/16 v0, 0x74

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/SdpField;)V
    .locals 0
    .param p1, "sf"    # Lorg/zoolu/sdp/SdpField;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getStartTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/TimeField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStopTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/TimeField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
