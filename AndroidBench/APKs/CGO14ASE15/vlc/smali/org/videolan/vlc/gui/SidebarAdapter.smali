.class public Lorg/videolan/vlc/gui/SidebarAdapter;
.super Landroid/widget/BaseAdapter;
.source "SidebarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SidebarAdapter"

.field static final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFragmentAdded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 71
    const/4 v1, 0x4

    new-array v0, v1, [Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const/4 v1, 0x0

    new-instance v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v3, "video"

    const v4, 0x7f0b0034

    const v5, 0x7f020088

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v3, "audio"

    const v4, 0x7f0b0033

    const v5, 0x7f020085

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v3, "directories"

    const v4, 0x7f0b003d

    const v5, 0x7f02008f

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    const-string v3, "history"

    const v4, 0x7f0b0018

    const v5, 0x108004a

    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 79
    .local v0, "entries2":[Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 83
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragmentAdded:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 87
    return-void
.end method


# virtual methods
.method public fetchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 142
    :goto_0
    return-object v1

    .line 128
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;-><init>()V

    .line 139
    .local v0, "f":Landroid/support/v4/app/Fragment;
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 140
    iget-object v1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragmentAdded:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 142
    goto :goto_0

    .line 130
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    const-string v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;-><init>()V

    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 132
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    const-string v1, "directories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryViewFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;-><init>()V

    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 134
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    const-string v1, "history"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    new-instance v0, Lorg/videolan/vlc/gui/HistoryFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/HistoryFragment;-><init>()V

    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 137
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    new-instance v0, Lorg/videolan/vlc/gui/AboutLicenceFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/AboutLicenceFragment;-><init>()V

    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    sget-object v0, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 107
    sget-object v4, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    .line 110
    .local v2, "sidebarEntry":Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    if-nez p2, :cond_0

    .line 111
    iget-object v4, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030037

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 113
    check-cast v3, Landroid/widget/TextView;

    .line 114
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->drawableID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    .local v1, "img":Landroid/graphics/drawable/Drawable;
    const/16 v4, 0x20

    invoke-static {v4}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v0

    .line 117
    .local v0, "dp_32":I
    invoke-virtual {v1, v6, v6, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    invoke-virtual {v3, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-object p2
.end method

.method public isFragmentAdded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragmentAdded:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public lockSemaphore()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 172
    return-void
.end method

.method public restoreFragment(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 191
    const-string v0, "VLC/SidebarAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set null fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragmentAdded:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFragmentAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mFragmentAdded:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public unlockSemaphore()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 179
    return-void
.end method
