.class public Lorg/zoolu/sip/header/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lorg/zoolu/sip/header/Header;->name:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/zoolu/sip/header/Header;->value:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;
    .param p2, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/zoolu/sip/header/Header;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/zoolu/sip/header/Header;->value:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/header/Header;)V
    .locals 1
    .param p1, "hd"    # Lorg/zoolu/sip/header/Header;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/Header;->name:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/header/Header;->value:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lorg/zoolu/sip/header/Header;

    invoke-virtual {p0}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sip/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 61
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sip/header/Header;

    move-object v2, v0

    .line 62
    .local v2, "hd":Lorg/zoolu/sip/header/Header;
    invoke-virtual {v2}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/zoolu/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/zoolu/sip/header/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const/4 v3, 0x1

    .line 68
    .end local v2    # "hd":Lorg/zoolu/sip/header/Header;
    :cond_0
    :goto_0
    return v3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/zoolu/sip/header/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/zoolu/sip/header/Header;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "hvalue"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/zoolu/sip/header/Header;->value:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/header/Header;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/header/Header;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
