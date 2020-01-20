.class public Lorg/zoolu/sip/address/SipURL;
.super Ljava/lang/Object;
.source "SipURL.java"


# static fields
.field protected static final lr_param:Ljava/lang/String; = "lr"

.field protected static final maddr_param:Ljava/lang/String; = "maddr"

.field protected static final transport_param:Ljava/lang/String; = "transport"

.field protected static final ttl_param:Ljava/lang/String; = "ttl"


# instance fields
.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "sipurl"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "portnumber"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/zoolu/sip/address/SipURL;->init(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/zoolu/sip/address/SipURL;->init(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "portnumber"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lorg/zoolu/sip/address/SipURL;->init(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "portnumber"    # I

    .prologue
    const/16 v2, 0x40

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "sip:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 94
    if-eqz p1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    .line 98
    return-void

    .line 91
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public addLr()V
    .locals 1

    .prologue
    .line 324
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/address/SipURL;->addParameter(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public addMaddr(Ljava/lang/String;)V
    .locals 1
    .param p1, "maddr"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "maddr"

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/address/SipURL;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public addParameter(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p2, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

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

    iput-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public addTransport(Ljava/lang/String;)V
    .locals 2
    .param p1, "proto"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v0, "transport"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/address/SipURL;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public addTtl(I)V
    .locals 2
    .param p1, "ttl"    # I

    .prologue
    .line 314
    const-string v0, "ttl"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/zoolu/sip/address/SipURL;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lorg/zoolu/sip/address/SipURL;

    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 107
    move-object v0, p1

    check-cast v0, Lorg/zoolu/sip/address/SipURL;

    .line 108
    .local v0, "newurl":Lorg/zoolu/sip/address/SipURL;
    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/zoolu/sip/address/SipURL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public equals(Lorg/zoolu/sip/address/SipURL;)Z
    .locals 2
    .param p1, "sip_url"    # Lorg/zoolu/sip/address/SipURL;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    iget-object v1, p1, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    const/4 v4, 0x3

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    .line 124
    .local v2, "host_terminators":[C
    new-instance v3, Lorg/zoolu/tools/Parser;

    iget-object v4, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "par":Lorg/zoolu/tools/Parser;
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lorg/zoolu/tools/Parser;->indexOf(C)I

    move-result v0

    .line 126
    .local v0, "begin":I
    if-gez v0, :cond_0

    .line 127
    const/4 v0, 0x4

    .line 130
    :goto_0
    invoke-virtual {v3, v0}, Lorg/zoolu/tools/Parser;->setPos(I)Lorg/zoolu/tools/Parser;

    .line 131
    invoke-virtual {v3, v2}, Lorg/zoolu/tools/Parser;->indexOf([C)I

    move-result v1

    .line 132
    .local v1, "end":I
    if-gez v1, :cond_1

    .line 133
    iget-object v4, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    :goto_1
    return-object v4

    .line 129
    .end local v1    # "end":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .restart local v1    # "end":I
    :cond_1
    iget-object v4, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 123
    :array_0
    .array-data 2
        0x3as
        0x3bs
        0x3fs
    .end array-data
.end method

.method public getMaddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "maddr"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/address/SipURL;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {v1, p1}, Lorg/zoolu/sip/provider/SipParser;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParameters()Ljava/util/Vector;
    .locals 3
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
    .line 193
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v2, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {v2}, Lorg/zoolu/sip/provider/SipParser;->getParameters()Ljava/util/Vector;

    move-result-object v1

    .line 197
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    return-object v1
.end method

.method public getPort()I
    .locals 6

    .prologue
    .line 140
    const/4 v4, 0x2

    new-array v3, v4, [C

    fill-array-data v3, :array_0

    .line 141
    .local v3, "port_terminators":[C
    new-instance v2, Lorg/zoolu/tools/Parser;

    iget-object v4, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-direct {v2, v4, v5}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v2, "par":Lorg/zoolu/tools/Parser;
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Lorg/zoolu/tools/Parser;->indexOf(C)I

    move-result v0

    .line 143
    .local v0, "begin":I
    if-gez v0, :cond_0

    .line 144
    const/4 v4, -0x1

    .line 152
    :goto_0
    return v4

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 147
    invoke-virtual {v2, v0}, Lorg/zoolu/tools/Parser;->setPos(I)Lorg/zoolu/tools/Parser;

    .line 148
    invoke-virtual {v2, v3}, Lorg/zoolu/tools/Parser;->indexOf([C)I

    move-result v1

    .line 149
    .local v1, "end":I
    if-gez v1, :cond_1

    .line 150
    iget-object v4, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 152
    :cond_1
    iget-object v4, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 140
    nop

    :array_0
    .array-data 2
        0x3bs
        0x3fs
    .end array-data
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/address/SipURL;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()I
    .locals 2

    .prologue
    .line 301
    :try_start_0
    const-string v1, "ttl"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/address/SipURL;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 303
    :goto_0
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x4

    .line 114
    .local v0, "begin":I
    iget-object v2, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 115
    .local v1, "end":I
    if-gez v1, :cond_0

    .line 116
    const/4 v2, 0x0

    .line 118
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public hasLr()Z
    .locals 1

    .prologue
    .line 319
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/address/SipURL;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMaddr()Z
    .locals 1

    .prologue
    .line 286
    const-string v0, "maddr"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/address/SipURL;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipParser;->goTo(C)Lorg/zoolu/tools/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/provider/SipParser;

    invoke-virtual {v1, p1}, Lorg/zoolu/sip/provider/SipParser;->hasParameter(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public hasParameters()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/zoolu/sip/address/SipURL;->getPort()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransport()Z
    .locals 1

    .prologue
    .line 267
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/address/SipURL;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasTtl()Z
    .locals 1

    .prologue
    .line 309
    const-string v0, "ttl"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/address/SipURL;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasUserName()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/zoolu/sip/address/SipURL;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3b

    .line 236
    iget-object v5, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 237
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    new-instance v3, Lorg/zoolu/tools/Parser;

    iget-object v5, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 240
    .local v3, "par":Lorg/zoolu/tools/Parser;
    :goto_1
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v0

    .line 242
    .local v0, "begin_param":I
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 243
    sget-object v5, Lorg/zoolu/sip/provider/SipParser;->param_separators:[C

    invoke-virtual {v3, v5}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    iget-object v5, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "top":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lorg/zoolu/tools/Parser;->goToSkippingQuoted(C)Lorg/zoolu/tools/Parser;

    .line 246
    const-string v1, ""

    .line 247
    .local v1, "bottom":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    iget-object v5, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getPos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    goto :goto_0

    .line 252
    .end local v1    # "bottom":Ljava/lang/String;
    .end local v4    # "top":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v7}, Lorg/zoolu/tools/Parser;->goTo(C)Lorg/zoolu/tools/Parser;

    goto :goto_1
.end method

.method public removeParameters()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 230
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 231
    iget-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    .line 232
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/zoolu/sip/address/SipURL;->url:Ljava/lang/String;

    return-object v0
.end method
