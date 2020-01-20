.class Lorg/videolan/vlc/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/AudioService;->changeAudioFocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/AudioService;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/AudioService;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lorg/videolan/vlc/AudioService$1;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 256
    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 262
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/LibVLC;->setVolume(I)I

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/LibVLC;->setVolume(I)I

    goto :goto_0
.end method
