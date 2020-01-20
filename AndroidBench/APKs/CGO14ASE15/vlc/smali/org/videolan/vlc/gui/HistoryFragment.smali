.class public Lorg/videolan/vlc/gui/HistoryFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "HistoryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/HistoryFragment"


# instance fields
.field private mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/HistoryAdapter;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    .line 49
    const-string v0, "VLC/HistoryFragment"

    const-string v1, "HistoryFragment()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/HistoryFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    .line 64
    .local v0, "audioController":Lorg/videolan/vlc/AudioServiceController;
    iget-object v2, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/HistoryAdapter;->getAllURIs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p3, v3, v3}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;IZZ)V

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/HistoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "VLC/HistoryFragment"

    const-string v1, "Refreshing view!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/HistoryAdapter;->refresh()V

    .line 74
    :cond_0
    return-void
.end method
