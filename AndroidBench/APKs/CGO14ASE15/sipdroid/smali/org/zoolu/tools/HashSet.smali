.class public Lorg/zoolu/tools/HashSet;
.super Ljava/lang/Object;
.source "HashSet.java"


# instance fields
.field set:Ljava/util/Vector;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/zoolu/tools/HashSet;->set:Ljava/util/Vector;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/zoolu/tools/HashSet;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/zoolu/tools/HashSet;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/zoolu/tools/HashSet;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lorg/zoolu/tools/Iterator;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/zoolu/tools/Iterator;

    iget-object v1, p0, Lorg/zoolu/tools/HashSet;->set:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/zoolu/tools/Iterator;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/zoolu/tools/HashSet;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/zoolu/tools/HashSet;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
