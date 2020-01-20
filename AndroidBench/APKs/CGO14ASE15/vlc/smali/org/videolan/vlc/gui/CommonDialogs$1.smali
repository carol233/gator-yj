.class final Lorg/videolan/vlc/gui/CommonDialogs$1;
.super Ljava/lang/Object;
.source "CommonDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/VlcRunnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileMedia:Ljava/io/File;

.field final synthetic val$runnable:Lorg/videolan/vlc/VlcRunnable;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/videolan/vlc/VlcRunnable;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$fileMedia:Ljava/io/File;

    iput-object p2, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$runnable:Lorg/videolan/vlc/VlcRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$fileMedia:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$runnable:Lorg/videolan/vlc/VlcRunnable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$runnable:Lorg/videolan/vlc/VlcRunnable;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcRunnable;->run()V

    .line 58
    :cond_0
    return-void
.end method
