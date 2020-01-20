.class Lorg/sipdroid/sipua/ui/CallScreen$1;
.super Ljava/lang/Object;
.source "CallScreen.java"

# interfaces
.implements Landroid/app/KeyguardManager$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/CallScreen;->disableKeyguard()V
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
    .line 198
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/CallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 200
    return-void
.end method
