.class public abstract Lorg/zoolu/sip/header/OptionHeader;
.super Lorg/zoolu/sip/header/Header;
.source "OptionHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/zoolu/sip/header/OptionHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 0
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/zoolu/sip/header/OptionHeader;->value:Ljava/lang/String;

    .line 44
    return-void
.end method
