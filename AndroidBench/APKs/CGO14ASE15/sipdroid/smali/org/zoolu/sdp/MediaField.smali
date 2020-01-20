.class public Lorg/zoolu/sdp/MediaField;
.super Lorg/zoolu/sdp/SdpField;
.source "MediaField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "media_field"    # Ljava/lang/String;

    .prologue
    .line 44
    const/16 v0, 0x6d

    invoke-direct {p0, v0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "num"    # I
    .param p4, "transport"    # Ljava/lang/String;
    .param p5, "formats"    # Ljava/lang/String;

    .prologue
    .line 50
    const/16 v0, 0x6d

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    .line 52
    if-lez p3, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Vector;)V
    .locals 3
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "num"    # I
    .param p4, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p5, "formatlist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/16 v1, 0x6d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/zoolu/sdp/SdpField;-><init>(CLjava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    .line 69
    if-lez p3, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sdp/SdpField;)V
    .locals 0
    .param p1, "sf"    # Lorg/zoolu/sdp/SdpField;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/zoolu/sdp/SdpField;-><init>(Lorg/zoolu/sdp/SdpField;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getFormatList()Ljava/util/Vector;
    .locals 4
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
    .line 110
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 112
    .local v1, "formatlist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Lorg/zoolu/tools/Parser;

    iget-object v3, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "par":Lorg/zoolu/tools/Parser;
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    .line 114
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "fmt":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 117
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    .end local v0    # "fmt":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getFormats()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 88
    new-instance v2, Lorg/zoolu/tools/Parser;

    iget-object v3, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "port":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 93
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/zoolu/tools/Parser;

    iget-object v1, p0, Lorg/zoolu/sdp/MediaField;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->skipString()Lorg/zoolu/tools/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
