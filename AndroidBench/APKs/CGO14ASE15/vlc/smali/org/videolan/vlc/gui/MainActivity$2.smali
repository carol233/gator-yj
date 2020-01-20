.class Lorg/videolan/vlc/gui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$000(Lorg/videolan/vlc/gui/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    .line 268
    return-void
.end method
