.class public Lorg/zoolu/sip/header/EventHeader;
.super Lorg/zoolu/sip/header/ParametricHeader;
.source "EventHeader.java"


# static fields
.field private static final delim:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/zoolu/sip/header/EventHeader;->delim:[C

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
    .param p1, "event_package"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "Event"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event_package"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "Event"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p2, :cond_0

    .line 47
    const-string v0, "id"

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/sip/header/EventHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ParametricHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sip/header/EventHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/zoolu/sip/header/EventHeader;->delim:[C

    invoke-virtual {v0, v1}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/EventHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 67
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/EventHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
