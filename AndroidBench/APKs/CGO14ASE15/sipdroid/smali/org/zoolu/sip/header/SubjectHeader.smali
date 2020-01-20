.class public Lorg/zoolu/sip/header/SubjectHeader;
.super Lorg/zoolu/sip/header/Header;
.source "SubjectHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "Subject"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/zoolu/sip/header/SubjectHeader;->value:Ljava/lang/String;

    return-object v0
.end method
