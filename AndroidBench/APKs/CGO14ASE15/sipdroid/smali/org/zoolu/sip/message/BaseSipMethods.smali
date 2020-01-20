.class public abstract Lorg/zoolu/sip/message/BaseSipMethods;
.super Ljava/lang/Object;
.source "BaseSipMethods.java"


# static fields
.field public static final ACK:Ljava/lang/String; = "ACK"

.field public static final BYE:Ljava/lang/String; = "BYE"

.field public static final CANCEL:Ljava/lang/String; = "CANCEL"

.field public static final INFO:Ljava/lang/String; = "INFO"

.field public static final INVITE:Ljava/lang/String; = "INVITE"

.field public static final OPTION:Ljava/lang/String; = "OPTION"

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final REGISTER:Ljava/lang/String; = "REGISTER"

.field public static final UPDATE:Ljava/lang/String; = "UPDATE"

.field public static final dialog_methods:[Ljava/lang/String;

.field public static final methods:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "INVITE"

    aput-object v1, v0, v3

    const-string v1, "ACK"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "CANCEL"

    aput-object v2, v0, v1

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

    sput-object v0, Lorg/zoolu/sip/message/BaseSipMethods;->methods:[Ljava/lang/String;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "INVITE"

    aput-object v1, v0, v3

    sput-object v0, Lorg/zoolu/sip/message/BaseSipMethods;->dialog_methods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAck(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "ACK"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBye(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "BYE"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCancel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "CANCEL"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInfo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "INFO"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInvite(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "INVITE"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOption(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "OPTION"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOptions(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "OPTIONS"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRegister(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "REGISTER"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "UPDATE"

    invoke-static {p0, v0}, Lorg/zoolu/sip/message/BaseSipMethods;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static same(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
