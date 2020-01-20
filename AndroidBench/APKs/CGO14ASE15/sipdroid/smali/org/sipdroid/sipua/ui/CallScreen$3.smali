.class Lorg/sipdroid/sipua/ui/CallScreen$3;
.super Landroid/os/Handler;
.source "CallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/ui/CallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/CallScreen;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/CallScreen;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/CallScreen$3;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen$3;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/CallScreen;->onResume()V

    .line 284
    return-void
.end method
