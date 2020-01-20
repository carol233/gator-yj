.class Lorg/videolan/vlc/gui/BrowserAdapter$1;
.super Ljava/lang/Object;
.source "BrowserAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/BrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserAdapter;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/BrowserAdapter;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserAdapter$1;->this$0:Lorg/videolan/vlc/gui/BrowserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 117
    .local v0, "dbManager":Lorg/videolan/vlc/DatabaseManager;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 118
    .local v1, "item":Ljava/io/File;
    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/DatabaseManager;->addDir(Ljava/lang/String;)V

    .line 123
    move-object v2, v1

    .line 124
    .local v2, "tmpFile":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/DatabaseManager;->removeDir(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v2    # "tmpFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/DatabaseManager;->removeDir(Ljava/lang/String;)V

    goto :goto_0
.end method
