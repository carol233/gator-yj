.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 10
    .param p1, "elv"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    .line 190
    .local v0, "adapter":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;
    invoke-virtual {v0, p3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getChildrenCount(I)I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    .line 191
    const/4 v6, 0x0

    .line 211
    :goto_0
    return v6

    .line 193
    :cond_0
    invoke-virtual {v0, p3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "name":Ljava/lang/String;
    new-instance v1, Lorg/videolan/vlc/gui/audio/AudioListFragment;

    invoke-direct {v1}, Lorg/videolan/vlc/gui/audio/AudioListFragment;-><init>()V

    .line 196
    .local v1, "audioList":Lorg/videolan/vlc/gui/audio/AudioListFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v2, "b":Landroid/os/Bundle;
    const-string v6, "name"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v6, "name2"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v6, "mode"

    iget-object v7, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v7}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$200(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/FlingViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/vlc/widget/FlingViewGroup;->getPosition()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 202
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 203
    .local v3, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 204
    .local v4, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v6, 0x7f040001

    const v7, 0x7f040004

    const v8, 0x7f040001

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 205
    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 206
    const v6, 0x7f040002

    const v7, 0x7f040005

    const/4 v8, 0x0

    const v9, 0x7f040005

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 207
    const v6, 0x7f06007b

    const-string v7, "tracks"

    invoke-virtual {v4, v6, v1, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 208
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 209
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 211
    const/4 v6, 0x1

    goto :goto_0
.end method
