.class Lorg/videolan/vlc/gui/DebugLogActivity$2;
.super Ljava/lang/Object;
.source "DebugLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/DebugLogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/DebugLogActivity;

.field final synthetic val$instance:Lorg/videolan/vlc/LibVLC;

.field final synthetic val$startLog:Landroid/widget/Button;

.field final synthetic val$stopLog:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/vlc/LibVLC;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/videolan/vlc/gui/DebugLogActivity$2;->this$0:Lorg/videolan/vlc/gui/DebugLogActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/DebugLogActivity$2;->val$instance:Lorg/videolan/vlc/LibVLC;

    iput-object p3, p0, Lorg/videolan/vlc/gui/DebugLogActivity$2;->val$stopLog:Landroid/widget/Button;

    iput-object p4, p0, Lorg/videolan/vlc/gui/DebugLogActivity$2;->val$startLog:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/videolan/vlc/gui/DebugLogActivity$2;->val$instance:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->stopDebugBuffer()V

    .line 66
    iget-object v0, p0, Lorg/videolan/vlc/gui/DebugLogActivity$2;->val$stopLog:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lorg/videolan/vlc/gui/DebugLogActivity$2;->val$startLog:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    return-void
.end method
