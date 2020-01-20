.class public abstract Lorg/zoolu/sip/header/AuthenticationHeader;
.super Lorg/zoolu/sip/header/Header;
.source "AuthenticationHeader.java"


# static fields
.field public static LWS_SEPARATOR:Ljava/lang/String;

.field public static QUOTED_PARAMETERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-string v0, " "

    sput-object v0, Lorg/zoolu/sip/header/AuthenticationHeader;->LWS_SEPARATOR:Ljava/lang/String;

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cnonce"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nextnonce"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nonce"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "opaque"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "realm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "response"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rspauth"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lorg/zoolu/sip/header/AuthenticationHeader;->QUOTED_PARAMETERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 3
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "auth_scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "auth_params":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    .line 78
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/zoolu/sip/header/AuthenticationHeader;->LWS_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 0
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/zoolu/sip/header/Header;-><init>(Lorg/zoolu/sip/header/Header;)V

    .line 62
    return-void
.end method

.method private static isQuotedParameter(Ljava/lang/String;)Z
    .locals 2
    .param p0, "param_name"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/zoolu/sip/header/AuthenticationHeader;->QUOTED_PARAMETERS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 49
    sget-object v1, Lorg/zoolu/sip/header/AuthenticationHeader;->QUOTED_PARAMETERS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 51
    :goto_1
    return v1

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAlgorithParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v0, "algorithm"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addUnquotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public addAutsParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_auts"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v0, "auts"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public addCnonceParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_cnonce"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v0, "cnonce"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public addNcParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "nc"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string v0, "nc"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addUnquotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public addNextnonceParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_nextnonce"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "nextnonce"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public addNonceParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_nonce"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v0, "nonce"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public addOpaqueParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_opaque"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "opaque"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "param_name"    # Ljava/lang/String;
    .param p2, "param_value"    # Ljava/lang/String;

    .prologue
    .line 87
    const/16 v0, 0x22

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->isQuotedParameter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->addUnquotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addQopOptionsParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_qop_options"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "qop"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public addQopParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "qop"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "qop"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addUnquotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "param_name"    # Ljava/lang/String;
    .param p2, "param_value"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    .line 108
    :goto_0
    const/16 v0, 0x22

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    .line 112
    :goto_1
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/zoolu/sip/header/AuthenticationHeader;->LWS_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    goto :goto_1
.end method

.method public addRealmParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_realm"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v0, "realm"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public addResponseParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_response"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v0, "response"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public addRspauthParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_rspauth"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "rspauth"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public addUnquotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "param_name"    # Ljava/lang/String;
    .param p2, "param_value"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    .line 99
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/zoolu/sip/header/AuthenticationHeader;->LWS_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public addUriParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_uri"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string v0, "uri"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public addUsernameParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "unquoted_username"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/header/AuthenticationHeader;->addQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public getAlgorithParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string v0, "algorithm"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAutsParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "auts"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCnonceParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "cnonce"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNcParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextnonceParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const-string v0, "nextnonce"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonceParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpaqueParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "opaque"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "param_name"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v5, 0x3

    new-array v2, v5, [C

    fill-array-data v2, :array_0

    .line 132
    .local v2, "name_separators":[C
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    iget-object v5, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipString()Lorg/zoolu/tools/Parser;

    .line 134
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    .line 135
    :goto_0
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-virtual {v3, v2}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 139
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->indexOfCommaHeaderSeparator()I

    move-result v0

    .line 140
    .local v0, "comma":I
    if-ltz v0, :cond_0

    .line 141
    new-instance v4, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getPos()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v3, v5}, Lorg/zoolu/sip/provider/SipParser;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .end local v3    # "par":Lorg/zoolu/sip/provider/SipParser;
    .local v4, "par":Lorg/zoolu/sip/provider/SipParser;
    move-object v3, v4

    .line 142
    .end local v4    # "par":Lorg/zoolu/sip/provider/SipParser;
    .restart local v3    # "par":Lorg/zoolu/sip/provider/SipParser;
    :cond_0
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->getStringUnquoted()Ljava/lang/String;

    move-result-object v5

    .line 146
    .end local v0    # "comma":I
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 144
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->goToCommaHeaderSeparator()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v5

    invoke-virtual {v5}, Lorg/zoolu/tools/Parser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 146
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 131
    nop

    :array_0
    .array-data 2
        0x3ds
        0x20s
        0x9s
    .end array-data
.end method

.method public getParameters()Ljava/util/Vector;
    .locals 5
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
    .line 156
    const/4 v4, 0x3

    new-array v1, v4, [C

    fill-array-data v1, :array_0

    .line 157
    .local v1, "name_separators":[C
    new-instance v3, Lorg/zoolu/sip/provider/SipParser;

    iget-object v4, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipString()Lorg/zoolu/tools/Parser;

    .line 159
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    .line 160
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 161
    .local v2, "names":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {v3, v1}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->goToCommaHeaderSeparator()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v4

    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 166
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 156
    :array_0
    .array-data 2
        0x3ds
        0x20s
        0x9s
    .end array-data
.end method

.method public getQopOptionsParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQopParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "response"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRspauthParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string v0, "rspauth"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsernameParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAlgorithmParam()Z
    .locals 1

    .prologue
    .line 394
    const-string v0, "algorithm"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAutsParam()Z
    .locals 1

    .prologue
    .line 301
    const-string v0, "auts"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCnonceParam()Z
    .locals 1

    .prologue
    .line 271
    const-string v0, "cnonce"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasNcParam()Z
    .locals 1

    .prologue
    .line 379
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasNextnonceParam()Z
    .locals 1

    .prologue
    .line 316
    const-string v0, "nextnonce"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasNonceParam()Z
    .locals 1

    .prologue
    .line 196
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasOpaqueParam()Z
    .locals 1

    .prologue
    .line 211
    const-string v0, "opaque"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 4
    .param p1, "param_name"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v3, 0x5

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 117
    .local v1, "name_separators":[C
    new-instance v2, Lorg/zoolu/sip/provider/SipParser;

    iget-object v3, p0, Lorg/zoolu/sip/header/AuthenticationHeader;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->skipString()Lorg/zoolu/tools/Parser;

    .line 119
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    .line 120
    :goto_0
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual {v2, v1}, Lorg/zoolu/sip/provider/SipParser;->getWord([C)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const/4 v3, 0x1

    .line 126
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return v3

    .line 124
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->goToCommaHeaderSeparator()Lorg/zoolu/sip/provider/SipParser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/provider/SipParser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipWSPCRLF()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 126
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 116
    nop

    :array_0
    .array-data 2
        0x3ds
        0x20s
        0x9s
        0xds
        0xas
    .end array-data
.end method

.method public hasQopOptionsParam()Z
    .locals 1

    .prologue
    .line 331
    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasQopParam()Z
    .locals 1

    .prologue
    .line 364
    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRealmParam()Z
    .locals 1

    .prologue
    .line 181
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasResponseParam()Z
    .locals 1

    .prologue
    .line 256
    const-string v0, "response"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRspauthParam()Z
    .locals 1

    .prologue
    .line 286
    const-string v0, "rspauth"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasUriParam()Z
    .locals 1

    .prologue
    .line 241
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasUsernameParam()Z
    .locals 1

    .prologue
    .line 226
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/header/AuthenticationHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
