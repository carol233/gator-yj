.class public Lorg/zoolu/sip/message/SipResponses;
.super Lorg/zoolu/sip/message/BaseSipResponses;
.source "SipResponses.java"


# static fields
.field private static is_init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lorg/zoolu/sip/message/SipResponses;->is_init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseSipResponses;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 34
    sget-boolean v0, Lorg/zoolu/sip/message/SipResponses;->is_init:Z

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lorg/zoolu/sip/message/BaseSipResponses;->init()V

    .line 46
    sget-object v0, Lorg/zoolu/sip/message/SipResponses;->reasons:[Ljava/lang/String;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    aput-object v2, v0, v1

    .line 49
    sget-object v0, Lorg/zoolu/sip/message/SipResponses;->reasons:[Ljava/lang/String;

    const/16 v1, 0x1e9

    const-string v2, "Bad Event"

    aput-object v2, v0, v1

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lorg/zoolu/sip/message/SipResponses;->is_init:Z

    goto :goto_0
.end method

.method public static reasonOf(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 56
    sget-boolean v0, Lorg/zoolu/sip/message/SipResponses;->is_init:Z

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lorg/zoolu/sip/message/SipResponses;->init()V

    .line 58
    :cond_0
    invoke-static {p0}, Lorg/zoolu/sip/message/BaseSipResponses;->reasonOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
