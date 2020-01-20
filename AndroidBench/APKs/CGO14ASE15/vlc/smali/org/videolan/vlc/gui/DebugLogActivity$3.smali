.class Lorg/videolan/vlc/gui/DebugLogActivity$3;
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


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/vlc/LibVLC;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/videolan/vlc/gui/DebugLogActivity$3;->this$0:Lorg/videolan/vlc/gui/DebugLogActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/DebugLogActivity$3;->val$instance:Lorg/videolan/vlc/LibVLC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/videolan/vlc/gui/DebugLogActivity$3;->val$instance:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/vlc/LibVLC;->clearBuffer()V

    .line 76
    iget-object v0, p0, Lorg/videolan/vlc/gui/DebugLogActivity$3;->this$0:Lorg/videolan/vlc/gui/DebugLogActivity;

    iget-object v1, p0, Lorg/videolan/vlc/gui/DebugLogActivity$3;->val$instance:Lorg/videolan/vlc/LibVLC;

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/DebugLogActivity;->access$000(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/vlc/LibVLC;)V

    .line 77
    return-void
.end method
