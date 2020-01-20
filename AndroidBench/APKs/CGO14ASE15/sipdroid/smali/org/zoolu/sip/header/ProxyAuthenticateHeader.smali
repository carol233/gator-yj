.class public Lorg/zoolu/sip/header/ProxyAuthenticateHeader;
.super Lorg/zoolu/sip/header/WwwAuthenticateHeader;
.source "ProxyAuthenticateHeader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, "Proxy-Authenticate"

    iput-object v0, p0, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1
    .param p1, "auth_scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "auth_params":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    .line 51
    const-string v0, "Proxy-Authenticate"

    iput-object v0, p0, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 39
    return-void
.end method
