.class public Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
.super Ljava/lang/Object;
.source "DirectoryAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/DirectoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/videolan/vlc/gui/DirectoryAdapter$Node;",
        ">;"
    }
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/gui/DirectoryAdapter$Node;",
            ">;"
        }
    .end annotation
.end field

.field public isFile:Ljava/lang/Boolean;

.field name:Ljava/lang/String;

.field public parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

.field final synthetic this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

.field visibleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V
    .locals 1
    .param p2, "_name"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_visibleName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->visibleName:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 76
    return-void
.end method


# virtual methods
.method public addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V
    .locals 1
    .param p1, "n"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .prologue
    .line 79
    iput-object p0, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 80
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->compareTo(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)I
    .locals 3
    .param p1, "arg0"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, -0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public ensureExists(Ljava/lang/String;)Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .locals 4
    .param p1, "_n"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 110
    .local v1, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v3, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    if-ne v3, p1, :cond_0

    .line 114
    .end local v1    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :goto_0
    return-object v1

    .line 112
    :cond_1
    new-instance v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-direct {v2, v3, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 113
    .local v2, "nn":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 114
    goto :goto_0
.end method

.method public existsChild(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "_n"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 103
    .local v1, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v2, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 105
    .end local v1    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public getChildNode(Ljava/lang/String;)Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .locals 3
    .param p1, "directoryName"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 85
    .local v1, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v2, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    :goto_0
    return-object v1

    .line 88
    .end local v1    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :cond_1
    new-instance v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->this$0:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-direct {v1, v2, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 89
    .restart local v1    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V

    goto :goto_0
.end method

.method public getVisibleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->visibleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->visibleName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public isFile()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIsFile()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 99
    return-void
.end method

.method public subfilesCount()I
    .locals 5

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "c":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 128
    .local v2, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v2}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :cond_1
    return v0
.end method

.method public subfolderCount()I
    .locals 5

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "c":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 120
    .local v2, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v2}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    const-string v4, ".."

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    :cond_1
    return v0
.end method
