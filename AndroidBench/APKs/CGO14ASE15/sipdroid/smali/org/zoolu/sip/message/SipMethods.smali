.class public Lorg/zoolu/sip/message/SipMethods;
.super Lorg/zoolu/sip/message/BaseSipMethods;
.source "SipMethods.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final PUBLISH:Ljava/lang/String; = "PUBLISH"

.field public static final REFER:Ljava/lang/String; = "REFER"

.field public static final SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final dialog_methods:[Ljava/lang/String;

.field public static final methods:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "INVITE"

    aput-object v1, v0, v3

    const-string v1, "ACK"

    aput-object v1, v0, v4

    const-string v1, "CANCEL"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "BYE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "OPTION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REGISTER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SUBSCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NOTIFY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MESSAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "REFER"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PUBLISH"

    aput-object v2, v0, v1

    sput-object v0, Lorg/zoolu/sip/message/SipMethods;->methods:[Ljava/lang/String;

    .line 81
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "INVITE"

    aput-object v1, v0, v3

    const-string v1, "SUBSCRIBE"

    aput-object v1, v0, v4

    sput-object v0, Lorg/zoolu/sip/message/SipMethods;->dialog_methods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseSipMethods;-><init>()V

    return-void
.end method

.method public static isMessage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "MESSAGE"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/SipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNotify(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "NOTIFY"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/SipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPublish(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "PUBLISH"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/SipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRefer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "REFER"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/SipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSubscribe(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "SUBSCRIBE"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/SipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
