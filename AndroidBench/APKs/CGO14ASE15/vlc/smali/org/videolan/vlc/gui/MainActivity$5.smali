.class Lorg/videolan/vlc/gui/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->onOpenMRL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$5;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/MainActivity$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 640
    new-instance v0, Lorg/videolan/vlc/gui/MainActivity$5$1;

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity$5;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {v0, p0, v1}, Lorg/videolan/vlc/gui/MainActivity$5$1;-><init>(Lorg/videolan/vlc/gui/MainActivity$5;Landroid/content/Context;)V

    .line 656
    .local v0, "task":Lorg/videolan/vlc/VLCCallbackTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VLCCallbackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 657
    return-void
.end method
