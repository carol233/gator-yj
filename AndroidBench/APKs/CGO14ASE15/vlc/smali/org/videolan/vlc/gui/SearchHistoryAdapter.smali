.class public Lorg/videolan/vlc/gui/SearchHistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    move-object v3, p2

    .line 42
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 43
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 44
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090003

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 45
    new-instance v0, Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;-><init>()V

    .line 46
    .local v0, "holder":Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "item":Ljava/lang/String;
    iget-object v4, v0, Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v4, p1}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 53
    iget-object v4, v0, Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object v3

    .line 49
    .end local v0    # "holder":Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;

    .restart local v0    # "holder":Lorg/videolan/vlc/gui/SearchHistoryAdapter$ViewHolder;
    goto :goto_0
.end method
