.class public Lorg/zoolu/sip/header/AllowHeader;
.super Lorg/zoolu/sip/header/ListHeader;
.source "AllowHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "Allow"

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sip/header/ListHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/ListHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 37
    return-void
.end method


# virtual methods
.method public addMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lorg/zoolu/sip/header/ListHeader;->addElement(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public getMethods()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lorg/zoolu/sip/header/ListHeader;->getElements()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "methods":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/zoolu/sip/header/ListHeader;->setElements(Ljava/util/Vector;)V

    .line 48
    return-void
.end method
