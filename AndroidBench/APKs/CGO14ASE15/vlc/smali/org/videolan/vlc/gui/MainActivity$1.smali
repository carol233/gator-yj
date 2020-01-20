.class Lorg/videolan/vlc/gui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/MainActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 197
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    .line 198
    .local v2, "entry":Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f06007b

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 200
    .local v1, "current":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    :cond_0
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$000(Lorg/videolan/vlc/gui/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 241
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 211
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 222
    :cond_2
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    const-string v6, "audio"

    invoke-static {v5, v6}, Lorg/videolan/vlc/gui/MainActivity;->access$100(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 224
    .local v0, "audioFragment":Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 225
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 226
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iget-object v6, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/videolan/vlc/gui/MainActivity;->access$100(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 227
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 228
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iget-object v6, v2, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/videolan/vlc/gui/MainActivity;->access$202(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    invoke-virtual {v1, v7}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 235
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iget-object v6, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v6}, Lorg/videolan/vlc/gui/MainActivity;->access$200(Lorg/videolan/vlc/gui/MainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/videolan/vlc/gui/MainActivity;->access$100(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 237
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tracks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 240
    :cond_3
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity$1;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v5}, Lorg/videolan/vlc/gui/MainActivity;->access$000(Lorg/videolan/vlc/gui/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    goto :goto_0
.end method
