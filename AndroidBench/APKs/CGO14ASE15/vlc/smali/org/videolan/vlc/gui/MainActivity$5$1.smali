.class Lorg/videolan/vlc/gui/MainActivity$5$1;
.super Lorg/videolan/vlc/VLCCallbackTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/MainActivity$5;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity$5;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 641
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$5$1;->this$1:Lorg/videolan/vlc/gui/MainActivity$5;

    invoke-direct {p0, p2}, Lorg/videolan/vlc/VLCCallbackTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 644
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    .line 645
    .local v0, "c":Lorg/videolan/vlc/AudioServiceController;
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$5$1;->this$1:Lorg/videolan/vlc/gui/MainActivity$5;

    iget-object v2, v2, Lorg/videolan/vlc/gui/MainActivity$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/videolan/vlc/AudioServiceController;->append(Ljava/lang/String;)V

    .line 654
    return-void
.end method
