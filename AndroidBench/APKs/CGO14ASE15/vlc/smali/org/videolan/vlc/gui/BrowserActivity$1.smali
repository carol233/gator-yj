.class Lorg/videolan/vlc/gui/BrowserActivity$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/BrowserActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserActivity;

.field final synthetic val$item:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$1;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/BrowserActivity$1;->val$item:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 127
    iget-object v3, p0, Lorg/videolan/vlc/gui/BrowserActivity$1;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-static {v3}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 128
    .local v0, "dbManager":Lorg/videolan/vlc/DatabaseManager;
    invoke-virtual {v0}, Lorg/videolan/vlc/DatabaseManager;->getMediaDirs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 129
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/BrowserActivity$1;->val$item:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/DatabaseManager;->removeDir(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lorg/videolan/vlc/gui/BrowserActivity$1;->val$item:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/videolan/vlc/Util;->removeCustomDirectory(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lorg/videolan/vlc/gui/BrowserActivity$1;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/BrowserActivity;->refresh()V

    .line 134
    const/4 v3, 0x1

    return v3
.end method
