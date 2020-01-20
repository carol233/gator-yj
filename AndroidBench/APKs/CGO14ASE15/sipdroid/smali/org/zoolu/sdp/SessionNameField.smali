.class public Lorg/zoolu/sdp/SessionNameField;
.super Lorg/zoolu/sdp/SdpField;
.source "SessionNameField.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    const/16 v0, 0x73

    const-string v1, " "

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "session_name"    # Ljava/lang/String;

    .prologue
    .line 45
    const/16 v0, 0x73

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/SdpField;)V
    .locals 0
    .param p1, "sf"    # Lorg/zoolu/sdp/SdpField;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/zoolu/sdp/SessionNameField;->value:Ljava/lang/String;

    return-object v0
.end method
