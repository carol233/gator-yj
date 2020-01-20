.class public Lorg/zoolu/sdp/SessionDescriptor;
.super Ljava/lang/Object;
.source "SessionDescriptor.java"


# instance fields
.field av:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;"
        }
    .end annotation
.end field

.field c:Lorg/zoolu/sdp/ConnectionField;

.field media:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/MediaDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field o:Lorg/zoolu/sdp/OriginField;

.field s:Lorg/zoolu/sdp/SessionNameField;

.field t:Lorg/zoolu/sdp/TimeField;

.field v:Lorg/zoolu/sdp/SdpField;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    sget-object v0, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    .line 192
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "owner":Ljava/lang/String;
    new-instance v2, Lorg/zoolu/sdp/OriginField;

    const-string v3, "0"

    const-string v4, "0"

    invoke-direct {v2, v1, v3, v4, v0}, Lorg/zoolu/sdp/OriginField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/zoolu/sdp/SessionNameField;

    const-string v4, "Session SIP/SDP"

    invoke-direct {v3, v4}, Lorg/zoolu/sdp/SessionNameField;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/zoolu/sdp/ConnectionField;

    const-string v5, "IP4"

    invoke-direct {v4, v5, v0}, Lorg/zoolu/sdp/ConnectionField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/zoolu/sdp/TimeField;

    invoke-direct {v5}, Lorg/zoolu/sdp/TimeField;-><init>()V

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/zoolu/sdp/SessionDescriptor;->init(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "sdp"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x76

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v2, Lorg/zoolu/sdp/SdpParser;

    invoke-direct {v2, p1}, Lorg/zoolu/sdp/SdpParser;-><init>(Ljava/lang/String;)V

    .line 207
    .local v2, "par":Lorg/zoolu/sdp/SdpParser;
    invoke-virtual {v2, v5}, Lorg/zoolu/sdp/SdpParser;->parseSdpField(C)Lorg/zoolu/sdp/SdpField;

    move-result-object v3

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->v:Lorg/zoolu/sdp/SdpField;

    .line 208
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->v:Lorg/zoolu/sdp/SdpField;

    if-nez v3, :cond_0

    .line 209
    new-instance v3, Lorg/zoolu/sdp/SdpField;

    const-string v4, "0"

    invoke-direct {v3, v5, v4}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->v:Lorg/zoolu/sdp/SdpField;

    .line 210
    :cond_0
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->parseOriginField()Lorg/zoolu/sdp/OriginField;

    move-result-object v3

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    .line 211
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    if-nez v3, :cond_1

    .line 212
    new-instance v3, Lorg/zoolu/sdp/OriginField;

    const-string v4, "unknown"

    invoke-direct {v3, v4}, Lorg/zoolu/sdp/OriginField;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    .line 213
    :cond_1
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->parseSessionNameField()Lorg/zoolu/sdp/SessionNameField;

    move-result-object v3

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    .line 214
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    if-nez v3, :cond_2

    .line 215
    new-instance v3, Lorg/zoolu/sdp/SessionNameField;

    invoke-direct {v3}, Lorg/zoolu/sdp/SessionNameField;-><init>()V

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    .line 216
    :cond_2
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->parseConnectionField()Lorg/zoolu/sdp/ConnectionField;

    move-result-object v3

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 217
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    if-nez v3, :cond_3

    .line 218
    new-instance v3, Lorg/zoolu/sdp/ConnectionField;

    const-string v4, "IP4"

    const-string v5, "0.0.0.0"

    invoke-direct {v3, v4, v5}, Lorg/zoolu/sdp/ConnectionField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 219
    :cond_3
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->parseTimeField()Lorg/zoolu/sdp/TimeField;

    move-result-object v3

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    .line 220
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    if-nez v3, :cond_4

    .line 221
    new-instance v3, Lorg/zoolu/sdp/TimeField;

    invoke-direct {v3}, Lorg/zoolu/sdp/TimeField;-><init>()V

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    .line 223
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "a="

    invoke-virtual {v2, v3}, Lorg/zoolu/sdp/SdpParser;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "m="

    invoke-virtual {v2, v3}, Lorg/zoolu/sdp/SdpParser;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 226
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->goToNextLine()Lorg/zoolu/tools/Parser;

    goto :goto_0

    .line 229
    :cond_5
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    .line 230
    :goto_1
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "a="

    invoke-virtual {v2, v3}, Lorg/zoolu/sdp/SdpParser;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 231
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->parseAttributeField()Lorg/zoolu/sdp/AttributeField;

    move-result-object v0

    .line 232
    .local v0, "attribute":Lorg/zoolu/sdp/AttributeField;
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 235
    .end local v0    # "attribute":Lorg/zoolu/sdp/AttributeField;
    :cond_6
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    .line 237
    :goto_2
    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpParser;->parseMediaDescriptor()Lorg/zoolu/sdp/MediaDescriptor;

    move-result-object v1

    .local v1, "md":Lorg/zoolu/sdp/MediaDescriptor;
    if-eqz v1, :cond_7

    .line 238
    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptor(Lorg/zoolu/sdp/MediaDescriptor;)Lorg/zoolu/sdp/SessionDescriptor;

    goto :goto_2

    .line 240
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-nez p2, :cond_0

    .line 177
    sget-object p2, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    .line 178
    :cond_0
    if-nez p1, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_1
    new-instance v0, Lorg/zoolu/sdp/OriginField;

    const-string v1, "0"

    const-string v2, "0"

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/zoolu/sdp/OriginField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/zoolu/sdp/SessionNameField;

    const-string v2, "Session SIP/SDP"

    invoke-direct {v1, v2}, Lorg/zoolu/sdp/SessionNameField;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/zoolu/sdp/ConnectionField;

    const-string v3, "IP4"

    invoke-direct {v2, v3, p2}, Lorg/zoolu/sdp/ConnectionField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/zoolu/sdp/TimeField;

    invoke-direct {v3}, Lorg/zoolu/sdp/TimeField;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/zoolu/sdp/SessionDescriptor;->init(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "session"    # Ljava/lang/String;
    .param p3, "connection"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lorg/zoolu/sdp/OriginField;

    invoke-direct {v0, p1}, Lorg/zoolu/sdp/OriginField;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/zoolu/sdp/SessionNameField;

    invoke-direct {v1, p2}, Lorg/zoolu/sdp/SessionNameField;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/zoolu/sdp/ConnectionField;

    invoke-direct {v2, p3}, Lorg/zoolu/sdp/ConnectionField;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/zoolu/sdp/TimeField;

    invoke-direct {v3, p4}, Lorg/zoolu/sdp/TimeField;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/zoolu/sdp/SessionDescriptor;->init(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V
    .locals 0
    .param p1, "origin"    # Lorg/zoolu/sdp/OriginField;
    .param p2, "session"    # Lorg/zoolu/sdp/SessionNameField;
    .param p3, "connection"    # Lorg/zoolu/sdp/ConnectionField;
    .param p4, "time"    # Lorg/zoolu/sdp/TimeField;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/zoolu/sdp/SessionDescriptor;->init(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/SessionDescriptor;)V
    .locals 6
    .param p1, "sd"    # Lorg/zoolu/sdp/SessionDescriptor;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v1, Lorg/zoolu/sdp/OriginField;

    iget-object v2, p1, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    invoke-direct {v1, v2}, Lorg/zoolu/sdp/OriginField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    new-instance v2, Lorg/zoolu/sdp/SessionNameField;

    iget-object v3, p1, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    invoke-direct {v2, v3}, Lorg/zoolu/sdp/SessionNameField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    new-instance v3, Lorg/zoolu/sdp/ConnectionField;

    iget-object v4, p1, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    invoke-direct {v3, v4}, Lorg/zoolu/sdp/ConnectionField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    new-instance v4, Lorg/zoolu/sdp/TimeField;

    iget-object v5, p1, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    invoke-direct {v4, v5}, Lorg/zoolu/sdp/TimeField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/zoolu/sdp/SessionDescriptor;->init(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    new-instance v3, Lorg/zoolu/sdp/MediaDescriptor;

    iget-object v1, p1, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-direct {v3, v1}, Lorg/zoolu/sdp/MediaDescriptor;-><init>(Lorg/zoolu/sdp/MediaDescriptor;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method private init(Lorg/zoolu/sdp/OriginField;Lorg/zoolu/sdp/SessionNameField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/TimeField;)V
    .locals 3
    .param p1, "origin"    # Lorg/zoolu/sdp/OriginField;
    .param p2, "session"    # Lorg/zoolu/sdp/SessionNameField;
    .param p3, "connection"    # Lorg/zoolu/sdp/ConnectionField;
    .param p4, "time"    # Lorg/zoolu/sdp/TimeField;

    .prologue
    .line 91
    new-instance v0, Lorg/zoolu/sdp/SdpField;

    const/16 v1, 0x76

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    iput-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->v:Lorg/zoolu/sdp/SdpField;

    .line 92
    iput-object p1, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    .line 93
    iput-object p2, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    .line 94
    iput-object p3, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 95
    iput-object p4, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    .line 100
    return-void
.end method


# virtual methods
.method public IncrementOLine()V
    .locals 7

    .prologue
    .line 153
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    invoke-virtual {v2}, Lorg/zoolu/sdp/OriginField;->getSessionVersion()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    .local v0, "intObj2":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    new-instance v2, Lorg/zoolu/sdp/OriginField;

    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    invoke-virtual {v3}, Lorg/zoolu/sdp/OriginField;->getUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    invoke-virtual {v4}, Lorg/zoolu/sdp/OriginField;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    invoke-virtual {v6}, Lorg/zoolu/sdp/OriginField;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/zoolu/sdp/OriginField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    .line 157
    return-void
.end method

.method public addAttribute(Lorg/zoolu/sdp/AttributeField;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 2
    .param p1, "attribute"    # Lorg/zoolu/sdp/AttributeField;

    .prologue
    .line 435
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    new-instance v1, Lorg/zoolu/sdp/AttributeField;

    invoke-direct {v1, p1}, Lorg/zoolu/sdp/AttributeField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 436
    return-object p0
.end method

.method public addAttributes(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;)",
            "Lorg/zoolu/sdp/SessionDescriptor;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "attribute_fields":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {p0, v1}, Lorg/zoolu/sdp/SessionDescriptor;->addAttribute(Lorg/zoolu/sdp/AttributeField;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return-object p0
.end method

.method public addMedia(Lorg/zoolu/sdp/MediaField;Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 2
    .param p1, "media"    # Lorg/zoolu/sdp/MediaField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/zoolu/sdp/MediaField;",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;)",
            "Lorg/zoolu/sdp/SessionDescriptor;"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, "attributes":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    new-instance v0, Lorg/zoolu/sdp/MediaDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/zoolu/sdp/MediaDescriptor;-><init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Ljava/util/Vector;)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptor(Lorg/zoolu/sdp/MediaDescriptor;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 343
    return-object p0
.end method

.method public addMedia(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/AttributeField;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 2
    .param p1, "media"    # Lorg/zoolu/sdp/MediaField;
    .param p2, "attribute"    # Lorg/zoolu/sdp/AttributeField;

    .prologue
    .line 325
    new-instance v0, Lorg/zoolu/sdp/MediaDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/zoolu/sdp/MediaDescriptor;-><init>(Lorg/zoolu/sdp/MediaField;Lorg/zoolu/sdp/ConnectionField;Lorg/zoolu/sdp/AttributeField;)V

    invoke-virtual {p0, v0}, Lorg/zoolu/sdp/SessionDescriptor;->addMediaDescriptor(Lorg/zoolu/sdp/MediaDescriptor;)Lorg/zoolu/sdp/SessionDescriptor;

    .line 326
    return-object p0
.end method

.method public addMediaDescriptor(Lorg/zoolu/sdp/MediaDescriptor;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 1
    .param p1, "media_desc"    # Lorg/zoolu/sdp/MediaDescriptor;

    .prologue
    .line 357
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 358
    return-object p0
.end method

.method public addMediaDescriptors(Ljava/util/Vector;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/MediaDescriptor;",
            ">;)",
            "Lorg/zoolu/sdp/SessionDescriptor;"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "media_descs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/MediaDescriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/zoolu/sdp/AttributeField;
    .locals 3
    .param p1, "attribute_name"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 482
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sdp/AttributeField;

    .line 483
    .local v0, "af":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual {v0}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    .end local v0    # "af":Lorg/zoolu/sdp/AttributeField;
    :goto_1
    return-object v0

    .line 481
    .restart local v0    # "af":Lorg/zoolu/sdp/AttributeField;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "af":Lorg/zoolu/sdp/AttributeField;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAttributes()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 452
    .local v1, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 453
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-object v1
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "attribute_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/AttributeField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v2, Ljava/util/Vector;

    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 498
    .local v2, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 499
    iget-object v3, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sdp/AttributeField;

    .line 500
    .local v0, "a":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual {v0}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "a":Lorg/zoolu/sdp/AttributeField;
    :cond_1
    return-object v2
.end method

.method public getConnection()Lorg/zoolu/sdp/ConnectionField;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    return-object v0
.end method

.method public getMediaDescriptor(Ljava/lang/String;)Lorg/zoolu/sdp/MediaDescriptor;
    .locals 3
    .param p1, "media_type"    # Ljava/lang/String;

    .prologue
    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 406
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/MediaDescriptor;

    .line 407
    .local v1, "md":Lorg/zoolu/sdp/MediaDescriptor;
    invoke-virtual {v1}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sdp/MediaField;->getMedia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    .end local v1    # "md":Lorg/zoolu/sdp/MediaDescriptor;
    :goto_1
    return-object v1

    .line 405
    .restart local v1    # "md":Lorg/zoolu/sdp/MediaDescriptor;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v1    # "md":Lorg/zoolu/sdp/MediaDescriptor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMediaDescriptors()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sdp/MediaDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    return-object v0
.end method

.method public getOrigin()Lorg/zoolu/sdp/OriginField;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    return-object v0
.end method

.method public getSessionName()Lorg/zoolu/sdp/SessionNameField;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    return-object v0
.end method

.method public getTime()Lorg/zoolu/sdp/TimeField;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "attribute_name"    # Ljava/lang/String;

    .prologue
    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 466
    iget-object v1, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {v1}, Lorg/zoolu/sdp/AttributeField;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 470
    :goto_1
    return v1

    .line 465
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeAttributes()Lorg/zoolu/sdp/SessionDescriptor;
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 442
    return-object p0
.end method

.method public removeMediaDescriptor(Ljava/lang/String;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 2
    .param p1, "media_type"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v1, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 384
    iget-object v1, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-virtual {v1}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sdp/MediaField;->getMedia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 383
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 387
    :cond_1
    return-object p0
.end method

.method public removeMediaDescriptors()Lorg/zoolu/sdp/SessionDescriptor;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 394
    return-object p0
.end method

.method public setConnection(Lorg/zoolu/sdp/ConnectionField;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 0
    .param p1, "connection"    # Lorg/zoolu/sdp/ConnectionField;

    .prologue
    .line 286
    iput-object p1, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    .line 287
    return-object p0
.end method

.method public setOrigin(Lorg/zoolu/sdp/OriginField;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 0
    .param p1, "origin"    # Lorg/zoolu/sdp/OriginField;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    .line 251
    return-object p0
.end method

.method public setSessionName(Lorg/zoolu/sdp/SessionNameField;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 0
    .param p1, "session"    # Lorg/zoolu/sdp/SessionNameField;

    .prologue
    .line 269
    iput-object p1, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    .line 270
    return-object p0
.end method

.method public setTime(Lorg/zoolu/sdp/TimeField;)Lorg/zoolu/sdp/SessionDescriptor;
    .locals 0
    .param p1, "time"    # Lorg/zoolu/sdp/TimeField;

    .prologue
    .line 303
    iput-object p1, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    .line 304
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 508
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 509
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->v:Lorg/zoolu/sdp/SdpField;

    if-eqz v2, :cond_0

    .line 510
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->v:Lorg/zoolu/sdp/SdpField;

    invoke-virtual {v2}, Lorg/zoolu/sdp/SdpField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    if-eqz v2, :cond_1

    .line 512
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->o:Lorg/zoolu/sdp/OriginField;

    invoke-virtual {v2}, Lorg/zoolu/sdp/OriginField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    :cond_1
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->s:Lorg/zoolu/sdp/SessionNameField;

    invoke-virtual {v2}, Lorg/zoolu/sdp/SessionNameField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    :cond_2
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    if-eqz v2, :cond_3

    .line 516
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->c:Lorg/zoolu/sdp/ConnectionField;

    invoke-virtual {v2}, Lorg/zoolu/sdp/ConnectionField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    :cond_3
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    if-eqz v2, :cond_4

    .line 518
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->t:Lorg/zoolu/sdp/TimeField;

    invoke-virtual {v2}, Lorg/zoolu/sdp/TimeField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 520
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->av:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sdp/AttributeField;

    invoke-virtual {v2}, Lorg/zoolu/sdp/AttributeField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_5
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 522
    iget-object v2, p0, Lorg/zoolu/sdp/SessionDescriptor;->media:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sdp/MediaDescriptor;

    invoke-virtual {v2}, Lorg/zoolu/sdp/MediaDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
