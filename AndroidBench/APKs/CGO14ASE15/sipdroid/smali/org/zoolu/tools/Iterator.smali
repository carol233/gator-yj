.class public Lorg/zoolu/tools/Iterator;
.super Ljava/lang/Object;
.source "Iterator.java"


# instance fields
.field i:I

.field v:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "vector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/zoolu/tools/Iterator;->v:Ljava/util/Vector;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/zoolu/tools/Iterator;->i:I

    .line 38
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lorg/zoolu/tools/Iterator;->i:I

    iget-object v1, p0, Lorg/zoolu/tools/Iterator;->v:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lorg/zoolu/tools/Iterator;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/zoolu/tools/Iterator;->i:I

    iget-object v1, p0, Lorg/zoolu/tools/Iterator;->v:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/zoolu/tools/Iterator;->v:Ljava/util/Vector;

    iget v1, p0, Lorg/zoolu/tools/Iterator;->i:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/zoolu/tools/Iterator;->v:Ljava/util/Vector;

    iget v1, p0, Lorg/zoolu/tools/Iterator;->i:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 53
    iget v0, p0, Lorg/zoolu/tools/Iterator;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/zoolu/tools/Iterator;->i:I

    .line 54
    return-void
.end method
