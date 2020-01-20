.class public Lorg/zoolu/sip/authentication/DigestAuthentication;
.super Ljava/lang/Object;
.source "DigestAuthentication.java"


# instance fields
.field protected algorithm:Ljava/lang/String;

.field protected body:Ljava/lang/String;

.field protected cnonce:Ljava/lang/String;

.field protected method:Ljava/lang/String;

.field protected nc:Ljava/lang/String;

.field protected nonce:Ljava/lang/String;

.field protected opaque:Ljava/lang/String;

.field protected passwd:Ljava/lang/String;

.field protected qop:Ljava/lang/String;

.field protected realm:Ljava/lang/String;

.field protected response:Ljava/lang/String;

.field protected uri:Ljava/lang/String;

.field protected username:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ah"    # Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    .param p4, "qop"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "username"    # Ljava/lang/String;
    .param p7, "passwd"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1, p3, p5, p7}, Lorg/zoolu/sip/authentication/DigestAuthentication;->init(Ljava/lang/String;Lorg/zoolu/sip/header/AuthenticationHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->uri:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    .line 57
    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/zoolu/tools/Random;->nextHexString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    .line 63
    const-string v0, "00000001"

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    .line 65
    :cond_0
    iput-object p6, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->username:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/zoolu/sip/header/AuthorizationHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "ah"    # Lorg/zoolu/sip/header/AuthorizationHeader;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/zoolu/sip/authentication/DigestAuthentication;->init(Ljava/lang/String;Lorg/zoolu/sip/header/AuthenticationHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private A1()[B
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->username:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->realm:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    :cond_1
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->passwd:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_2
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->algorithm:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->algorithm:Ljava/lang/String;

    const-string v3, "MD5-sess"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 211
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 220
    :goto_0
    return-object v2

    .line 213
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v1, "sb2":Ljava/lang/StringBuffer;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 216
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_5
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 219
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/zoolu/sip/authentication/DigestAuthentication;->MD5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->cat([B[B)[B

    move-result-object v2

    goto :goto_0
.end method

.method private A2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    iget-object v1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    const-string v2, "auth-int"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    iget-object v1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->body:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 244
    const-string v1, ""

    invoke-static {v1}, Lorg/zoolu/sip/authentication/DigestAuthentication;->MD5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/zoolu/sip/authentication/DigestAuthentication;->HEX([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 246
    :cond_2
    iget-object v1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->body:Ljava/lang/String;

    invoke-static {v1}, Lorg/zoolu/sip/authentication/DigestAuthentication;->MD5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/zoolu/sip/authentication/DigestAuthentication;->HEX([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static HEX([B)Ljava/lang/String;
    .locals 1
    .param p0, "bb"    # [B

    .prologue
    .line 274
    invoke-static {p0}, Lorg/zoolu/tools/MD5;->asHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private KD(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/zoolu/sip/authentication/DigestAuthentication;->MD5(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private static MD5(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {p0}, Lorg/zoolu/tools/MD5;->digest(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static MD5([B)[B
    .locals 1
    .param p0, "bb"    # [B

    .prologue
    .line 269
    invoke-static {p0}, Lorg/zoolu/tools/MD5;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static cat([B[B)[B
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    .line 253
    array-length v3, p0

    array-length v4, p1

    add-int v2, v3, v4

    .line 254
    .local v2, "len":I
    new-array v0, v2, [B

    .line 255
    .local v0, "c":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 256
    aget-byte v3, p0, v1

    aput-byte v3, v0, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 258
    array-length v3, p0

    add-int/2addr v3, v1

    aget-byte v4, p1, v1

    aput-byte v4, v0, v3

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_1
    return-object v0
.end method

.method private init(Ljava/lang/String;Lorg/zoolu/sip/header/AuthenticationHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "ah"    # Lorg/zoolu/sip/header/AuthenticationHeader;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->method:Ljava/lang/String;

    .line 72
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getUsernameParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->username:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->passwd:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getRealmParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->realm:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getOpaqueParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->opaque:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getNonceParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getAlgorithParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->algorithm:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getQopParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getUriParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->uri:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getCnonceParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    .line 81
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getNcParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lorg/zoolu/sip/header/AuthenticationHeader;->getResponseParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->response:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->body:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Lorg/zoolu/sip/authentication/DigestAuthentication;

    invoke-direct {v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;-><init>()V

    .line 290
    .local v0, "a":Lorg/zoolu/sip/authentication/DigestAuthentication;
    const-string v5, "GET"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->method:Ljava/lang/String;

    .line 291
    const-string v5, "Circle Of Life"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->passwd:Ljava/lang/String;

    .line 292
    const-string v5, "testrealm@host.com"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->realm:Ljava/lang/String;

    .line 293
    const-string v5, "dcd98b7102dd2f0e8b11d0f600bfb0c093"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    .line 294
    const-string v5, "/dir/index.html"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->uri:Ljava/lang/String;

    .line 295
    const-string v5, "auth"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    .line 296
    const-string v5, "00000001"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    .line 297
    const-string v5, "0a4f113b"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    .line 298
    const-string v5, "Mufasa"

    iput-object v5, v0, Lorg/zoolu/sip/authentication/DigestAuthentication;->username:Ljava/lang/String;

    .line 300
    invoke-virtual {v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getResponse()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "response1":Ljava/lang/String;
    const-string v4, "6629fae49393a05397450978507c4ef1"

    .line 302
    .local v4, "response2":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    const-string v2, "Digest username=\"Mufasa\", realm=\"testrealm@host.com\", nonce=\"dcd98b7102dd2f0e8b11d0f600bfb0c093\", uri=\"/dir/index.html\", qop=auth, nc=00000001, cnonce=\"0a4f113b\", response=\"6629fae49393a05397450978507c4ef1\", opaque=\"5ccc069c403ebaf9f0171e9517f40e41\"\n"

    .line 309
    .local v2, "ah_str":Ljava/lang/String;
    new-instance v1, Lorg/zoolu/sip/header/AuthorizationHeader;

    invoke-direct {v1, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    new-instance v0, Lorg/zoolu/sip/authentication/DigestAuthentication;

    .end local v0    # "a":Lorg/zoolu/sip/authentication/DigestAuthentication;
    const-string v5, "GET"

    const/4 v6, 0x0

    const-string v7, "Circle Of Life"

    invoke-direct {v0, v5, v1, v6, v7}, Lorg/zoolu/sip/authentication/DigestAuthentication;-><init>(Ljava/lang/String;Lorg/zoolu/sip/header/AuthorizationHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .restart local v0    # "a":Lorg/zoolu/sip/authentication/DigestAuthentication;
    invoke-virtual {v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getResponse()Ljava/lang/String;

    move-result-object v3

    .line 312
    const-string v4, "6629fae49393a05397450978507c4ef1"

    .line 313
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->checkResponse()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Z)V

    .line 318
    return-void
.end method


# virtual methods
.method public checkResponse()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->response:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->response:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAuthorizationHeader()Lorg/zoolu/sip/header/AuthorizationHeader;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lorg/zoolu/sip/header/AuthorizationHeader;

    const-string v2, "Digest"

    invoke-direct {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addUsernameParam(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addRealmParam(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addNonceParam(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addUriParam(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->algorithm:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addAlgorithParam(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->opaque:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addOpaqueParam(Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addQopParam(Ljava/lang/String;)V

    .line 129
    :cond_2
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addNcParam(Ljava/lang/String;)V

    .line 131
    :cond_3
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/header/AuthorizationHeader;->addCnonceParam(Ljava/lang/String;)V

    .line 133
    :cond_4
    invoke-virtual {p0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getResponse()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/zoolu/sip/header/AuthorizationHeader;->addResponseParam(Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method public getProxyAuthorizationHeader()Lorg/zoolu/sip/header/ProxyAuthorizationHeader;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lorg/zoolu/sip/header/ProxyAuthorizationHeader;

    invoke-virtual {p0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getAuthorizationHeader()Lorg/zoolu/sip/header/AuthorizationHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/AuthorizationHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/ProxyAuthorizationHeader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->A1()[B

    move-result-object v3

    invoke-static {v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->MD5([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->HEX([B)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "secret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_0
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 163
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_1
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_2
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v3, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_3
    invoke-direct {p0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->A2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->MD5(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->HEX([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->KD(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;->HEX([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, "username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "passwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->opaque:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, "qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->qop:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, "cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->cnonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, "nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->nc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, "response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, "body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/zoolu/sip/authentication/DigestAuthentication;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
