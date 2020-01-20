.class public Lorg/videolan/vlc/gui/SearchResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchResultAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/videolan/vlc/Media;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/videolan/vlc/Media;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/videolan/vlc/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/SearchResultAdapter;->compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/vlc/Media;Lorg/videolan/vlc/Media;)I
    .locals 2
    .param p1, "object1"    # Lorg/videolan/vlc/Media;
    .param p2, "object2"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    move-object v3, p2

    .line 46
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchResultAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 48
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090003

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 49
    new-instance v0, Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;-><init>()V

    .line 50
    .local v0, "holder":Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/Media;

    .line 56
    .local v2, "item":Lorg/videolan/vlc/Media;
    iget-object v4, v0, Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v4, p1}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 57
    iget-object v4, v0, Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-object v3

    .line 53
    .end local v0    # "holder":Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;
    .end local v2    # "item":Lorg/videolan/vlc/Media;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;

    .restart local v0    # "holder":Lorg/videolan/vlc/gui/SearchResultAdapter$ViewHolder;
    goto :goto_0
.end method

.method public sort()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 69
    return-void
.end method
