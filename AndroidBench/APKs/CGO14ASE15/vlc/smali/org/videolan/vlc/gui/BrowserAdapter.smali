.class public Lorg/videolan/vlc/gui/BrowserAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BrowserAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_ITEM_PATH:Ljava/lang/String; = "/add/a/path"

.field public static final TAG:Ljava/lang/String; = "VLC/BrowserAdapter"


# instance fields
.field private final onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 113
    new-instance v0, Lorg/videolan/vlc/gui/BrowserAdapter$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/BrowserAdapter$1;-><init>(Lorg/videolan/vlc/gui/BrowserAdapter;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/BrowserAdapter;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 52
    return-void
.end method

.method private getVisibleName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/io/File;)V
    .locals 1
    .param p1, "object"    # Ljava/io/File;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/BrowserAdapter;->add(Ljava/io/File;)V

    return-void
.end method

.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/add/a/path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/add/a/path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, -0x1

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/BrowserAdapter;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    move-object v7, p2

    .line 67
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_1

    .line 68
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/BrowserAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 69
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030024

    const/4 v9, 0x0

    invoke-virtual {v5, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 70
    new-instance v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;

    invoke-direct {v3}, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;-><init>()V

    .line 71
    .local v3, "holder":Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;
    const v8, 0x7f060053

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 72
    const v8, 0x7f060068

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 73
    const v8, 0x7f060069

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 74
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/BrowserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 79
    .local v6, "item":Ljava/io/File;
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 81
    .local v0, "dbManager":Lorg/videolan/vlc/DatabaseManager;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/add/a/path"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v9, 0x7f0b0083

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 110
    :cond_0
    :goto_1
    return-object v7

    .line 76
    .end local v0    # "dbManager":Lorg/videolan/vlc/DatabaseManager;
    .end local v3    # "holder":Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;
    .end local v6    # "item":Ljava/io/File;
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;

    .restart local v3    # "holder":Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;
    goto :goto_0

    .line 84
    .restart local v0    # "dbManager":Lorg/videolan/vlc/DatabaseManager;
    .restart local v6    # "item":Ljava/io/File;
    :cond_2
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 85
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->layout:Landroid/view/View;

    invoke-static {v8, p1}, Lorg/videolan/vlc/Util;->setItemBackground(Landroid/view/View;I)V

    .line 86
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lorg/videolan/vlc/gui/BrowserAdapter;->getVisibleName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 88
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 91
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    invoke-virtual {v0}, Lorg/videolan/vlc/DatabaseManager;->getMediaDirs()Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 95
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 96
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 97
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    .end local v1    # "dir":Ljava/io/File;
    :cond_4
    :goto_2
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v9, p0, Lorg/videolan/vlc/gui/BrowserAdapter;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 99
    .restart local v1    # "dir":Ljava/io/File;
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 100
    const-string v8, "VLC/BrowserAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " startWith "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 102
    iget-object v8, v3, Lorg/videolan/vlc/gui/BrowserAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public sort()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0, p0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 137
    return-void
.end method
