.class public abstract Lorg/zoolu/sip/header/BaseSipHeaders;
.super Ljava/lang/Object;
.source "BaseSipHeaders.java"


# static fields
.field public static final Accept:Ljava/lang/String; = "Accept"

.field public static final Alert_Info:Ljava/lang/String; = "Alert-Info"

.field public static final Allow:Ljava/lang/String; = "Allow"

.field public static final Authentication_Info:Ljava/lang/String; = "Authentication-Info"

.field public static final Authorization:Ljava/lang/String; = "Authorization"

.field public static final CSeq:Ljava/lang/String; = "CSeq"

.field public static final Call_ID:Ljava/lang/String; = "Call-ID"

.field public static final Call_ID_short:Ljava/lang/String; = "i"

.field public static final Contact:Ljava/lang/String; = "Contact"

.field public static final Contact_short:Ljava/lang/String; = "m"

.field public static final Content_Length:Ljava/lang/String; = "Content-Length"

.field public static final Content_Length_short:Ljava/lang/String; = "l"

.field public static final Content_Type:Ljava/lang/String; = "Content-Type"

.field public static final Content_Type_short:Ljava/lang/String; = "c"

.field public static final Date:Ljava/lang/String; = "Date"

.field public static final Expires:Ljava/lang/String; = "Expires"

.field public static final From:Ljava/lang/String; = "From"

.field public static final From_short:Ljava/lang/String; = "f"

.field public static final Max_Forwards:Ljava/lang/String; = "Max-Forwards"

.field public static final Proxy_Authenticate:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final Proxy_Authorization:Ljava/lang/String; = "Proxy-Authorization"

.field public static final Proxy_Require:Ljava/lang/String; = "Proxy-Require"

.field public static final Record_Route:Ljava/lang/String; = "Record-Route"

.field public static final Require:Ljava/lang/String; = "Require"

.field public static final Route:Ljava/lang/String; = "Route"

.field public static final Server:Ljava/lang/String; = "Server"

.field public static final Subject:Ljava/lang/String; = "Subject"

.field public static final Subject_short:Ljava/lang/String; = "s"

.field public static final Supported:Ljava/lang/String; = "Supported"

.field public static final Supported_short:Ljava/lang/String; = "k"

.field public static final To:Ljava/lang/String; = "To"

.field public static final To_short:Ljava/lang/String; = "t"

.field public static final Unsupported:Ljava/lang/String; = "Unsupported"

.field public static final User_Agent:Ljava/lang/String; = "User-Agent"

.field public static final Via:Ljava/lang/String; = "Via"

.field public static final Via_short:Ljava/lang/String; = "v"

.field public static final WWW_Authenticate:Ljava/lang/String; = "WWW-Authenticate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccept(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "Accept"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAlert_Info(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "Alert-Info"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAllow(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "Allow"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAuthentication_Info(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "Authentication-Info"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAuthorization(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "Authorization"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCSeq(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "CSeq"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCallId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, "Call-ID"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "i"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContact(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v0, "Contact"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "m"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContent_Length(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "Content-Length"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "l"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContent_Type(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "Content-Type"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "c"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "Date"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExpires(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "Expires"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFrom(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "From"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "f"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMax_Forwards(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "Max-Forwards"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isProxy_Authenticate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "Proxy-Authenticate"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isProxy_Authorization(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v0, "Proxy-Authorization"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isProxy_Require(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, "Proxy-Require"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRecord_Route(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "Record-Route"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRequire(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v0, "Require"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRoute(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "Route"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "Server"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSubject(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "Subject"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "s"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "Supported"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "k"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "To"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnsupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "Unsupported"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUser_Agent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "User-Agent"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVia(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "Via"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "v"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWWW_Authenticate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v0, "WWW-Authenticate"

    invoke-static {p0, v0}, Lorg/zoolu/sip/header/BaseSipHeaders;->same(Ljava/lang/String;Ljava/lang/String;)Z

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
