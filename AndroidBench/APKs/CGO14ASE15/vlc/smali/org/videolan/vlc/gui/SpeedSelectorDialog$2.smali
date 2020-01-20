.class Lorg/videolan/vlc/gui/SpeedSelectorDialog$2;
.super Ljava/lang/Object;
.source "SpeedSelectorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/SpeedSelectorDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

.field final synthetic val$seekbar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/SpeedSelectorDialog;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/videolan/vlc/gui/SpeedSelectorDialog$2;->this$0:Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    iput-object p2, p0, Lorg/videolan/vlc/gui/SpeedSelectorDialog$2;->val$seekbar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/SpeedSelectorDialog$2;->val$seekbar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/LibVLC;->setRate(F)V

    .line 79
    return-void
.end method
