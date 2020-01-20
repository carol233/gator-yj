.class Lorg/sipdroid/sipua/ui/CreateAccount$1;
.super Landroid/os/Handler;
.source "CreateAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/ui/CreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/CreateAccount;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/CreateAccount;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/CreateAccount$1;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount$1;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/CreateAccount;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/CreateAccount$1;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/CreateAccount;->line:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount$1;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount$1;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonOK:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount$1;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-virtual {v0, v2}, Lorg/sipdroid/sipua/ui/CreateAccount;->setCancelable(Z)V

    .line 115
    return-void
.end method
