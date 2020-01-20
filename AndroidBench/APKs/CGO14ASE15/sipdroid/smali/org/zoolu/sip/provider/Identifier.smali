.class public Lorg/zoolu/sip/provider/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/zoolu/sip/provider/Identifier;->id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method constructor <init>(Lorg/zoolu/sip/provider/Identifier;)V
    .locals 1
    .param p1, "i"    # Lorg/zoolu/sip/provider/Identifier;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lorg/zoolu/sip/provider/Identifier;->id:Ljava/lang/String;

    iput-object v0, p0, Lorg/zoolu/sip/provider/Identifier;->id:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sip/provider/Identifier;

    move-object v2, v0

    .line 51
    .local v2, "i":Lorg/zoolu/sip/provider/Identifier;
    iget-object v3, p0, Lorg/zoolu/sip/provider/Identifier;->id:Ljava/lang/String;

    iget-object v4, v2, Lorg/zoolu/sip/provider/Identifier;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 53
    .end local v2    # "i":Lorg/zoolu/sip/provider/Identifier;
    :goto_0
    return v3

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/zoolu/sip/provider/Identifier;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/zoolu/sip/provider/Identifier;->id:Ljava/lang/String;

    return-object v0
.end method
