.class public Lorg/zoolu/sip/header/SipHeaders;
.super Lorg/zoolu/sip/header/BaseSipHeaders;
.source "SipHeaders.java"


# static fields
.field public static final Accept_Contact:Ljava/lang/String; = "Accept-Contact"

.field public static final Allow_Events:Ljava/lang/String; = "Allow-Events"

.field public static final Event:Ljava/lang/String; = "Event"

.field public static final Event_short:Ljava/lang/String; = "o"

.field public static final Refer_To:Ljava/lang/String; = "Refer-To"

.field public static final Referred_By:Ljava/lang/String; = "Referred-By"

.field public static final Subscription_State:Ljava/lang/String; = "Subscription-State"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/zoolu/sip/header/BaseSipHeaders;-><init>()V

    return-void
.end method

.method public static isAcceptContact(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "Accept-Contact"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/SipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAllowEvents(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "Allow-Events"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/SipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "Event"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/SipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "o"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/SipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReferTo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "Refer-To"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/SipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isReferredBy(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "Referred-By"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/SipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSubscriptionState(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "Subscription-State"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/SipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
