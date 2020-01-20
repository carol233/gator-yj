.class Lorg/videolan/vlc/gui/DebugLogActivity$4;
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


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/DebugLogActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/videolan/vlc/gui/DebugLogActivity$4;->this$0:Lorg/videolan/vlc/gui/DebugLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/videolan/vlc/gui/DebugLogActivity$4;->this$0:Lorg/videolan/vlc/gui/DebugLogActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/DebugLogActivity;->access$100(Lorg/videolan/vlc/gui/DebugLogActivity;)V

    .line 89
    iget-object v0, p0, Lorg/videolan/vlc/gui/DebugLogActivity$4;->this$0:Lorg/videolan/vlc/gui/DebugLogActivity;

    const v1, 0x7f0b00a7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method
