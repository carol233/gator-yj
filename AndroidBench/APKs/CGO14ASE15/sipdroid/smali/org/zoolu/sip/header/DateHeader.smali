.class public Lorg/zoolu/sip/header/DateHeader;
.super Lorg/zoolu/sip/header/SipDateHeader;
.source "DateHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "Date"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/SipDateHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 39
    const-string v0, "Date"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/SipDateHeader;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/SipDateHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 44
    return-void
.end method
