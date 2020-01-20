.class public Lorg/sipdroid/codecs/Codecs$Map;
.super Ljava/lang/Object;
.source "Codecs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/codecs/Codecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map"
.end annotation


# instance fields
.field public codec:Lorg/sipdroid/codecs/Codec;

.field codecs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/sipdroid/codecs/Codec;",
            ">;"
        }
    .end annotation
.end field

.field public number:I

.field numbers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILorg/sipdroid/codecs/Codec;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "c"    # Lorg/sipdroid/codecs/Codec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/sipdroid/codecs/Codec;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lorg/sipdroid/codecs/Codec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "ns":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local p4, "cs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/sipdroid/codecs/Codec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    .line 195
    iput-object p2, p0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    .line 196
    iput-object p3, p0, Lorg/sipdroid/codecs/Codecs$Map;->numbers:Ljava/util/Vector;

    .line 197
    iput-object p4, p0, Lorg/sipdroid/codecs/Codecs$Map;->codecs:Ljava/util/Vector;

    .line 198
    return-void
.end method


# virtual methods
.method public change(I)Z
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lorg/sipdroid/codecs/Codecs$Map;->numbers:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/sipdroid/codecs/Codecs$Map;->codecs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-interface {v1}, Lorg/sipdroid/codecs/Codec;->close()V

    .line 205
    iput p1, p0, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    .line 206
    iget-object v1, p0, Lorg/sipdroid/codecs/Codecs$Map;->codecs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sipdroid/codecs/Codec;

    iput-object v1, p0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    .line 207
    const/4 v1, 0x1

    .line 209
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Codecs.Map { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/sipdroid/codecs/Codecs$Map;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/codecs/Codecs$Map;->codec:Lorg/sipdroid/codecs/Codec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
