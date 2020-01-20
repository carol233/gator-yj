.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    .line 215
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 11
    .param p1, "elv"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    .line 219
    .local v0, "adapter":Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;
    invoke-virtual {v0, p3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0, p3, p4}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getChild(II)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "child":Ljava/lang/String;
    new-instance v1, Lorg/videolan/vlc/gui/audio/AudioListFragment;

    invoke-direct {v1}, Lorg/videolan/vlc/gui/audio/AudioListFragment;-><init>()V

    .line 223
    .local v1, "audioList":Lorg/videolan/vlc/gui/audio/AudioListFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v2, "b":Landroid/os/Bundle;
    const-string v7, "name"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v7, "name2"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v7, "mode"

    iget-object v8, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-static {v8}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$200(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/FlingViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lorg/videolan/vlc/widget/FlingViewGroup;->getPosition()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/audio/AudioListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 229
    iget-object v7, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    invoke-virtual {v7}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 230
    .local v4, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 231
    .local v5, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v7, 0x7f040001

    const v8, 0x7f040004

    const v9, 0x7f040001

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 232
    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 233
    const v7, 0x7f040002

    const v8, 0x7f040005

    const/4 v9, 0x0

    const v10, 0x7f040005

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 234
    const v7, 0x7f06007b

    const-string v8, "tracks"

    invoke-virtual {v5, v7, v1, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 235
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 236
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 238
    const/4 v7, 0x0

    return v7
.end method
