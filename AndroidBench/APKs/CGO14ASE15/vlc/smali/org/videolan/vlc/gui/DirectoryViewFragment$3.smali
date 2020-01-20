.class Lorg/videolan/vlc/gui/DirectoryViewFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "DirectoryViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/DirectoryViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->refresh()V

    .line 207
    :cond_1
    return-void
.end method
