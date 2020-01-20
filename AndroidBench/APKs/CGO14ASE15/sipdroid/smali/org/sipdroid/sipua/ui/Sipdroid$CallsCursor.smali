.class public Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;
.super Landroid/database/CursorWrapper;
.source "Sipdroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/ui/Sipdroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallsCursor"
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->list:Ljava/util/List;

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 112
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->moveToPosition(I)Z

    .line 113
    const/4 v3, 0x1

    invoke-super {p0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-super {p0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "cachedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_0
    iget-object v3, p0, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v3, p0, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v0    # "cachedName":Ljava/lang/String;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->moveToFirst()Z

    .line 121
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->list:Ljava/util/List;

    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
