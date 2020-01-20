.class Lorg/sipdroid/sipua/ui/InCallScreen$4;
.super Ljava/lang/Thread;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/InCallScreen;->answer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/InCallScreen;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/InCallScreen;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$4;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen$4;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->answercall()V

    .line 423
    return-void
.end method
