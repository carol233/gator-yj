.class Lorg/videolan/vlc/gui/DirectoryViewFragment$2;
.super Lorg/videolan/vlc/VlcRunnable;
.source "DirectoryViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/DirectoryViewFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
    .line 136
    iput-object p1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    invoke-direct {p0}, Lorg/videolan/vlc/VlcRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->refresh()V

    .line 140
    return-void
.end method
