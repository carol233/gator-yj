.class Lorg/sipdroid/sipua/ui/CreateAccount$4;
.super Ljava/lang/Object;
.source "CreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/CreateAccount;->onCreate(Landroid/os/Bundle;)V
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
    .line 216
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/CreateAccount$4;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount$4;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/CreateAccount;->dismiss()V

    .line 219
    return-void
.end method
