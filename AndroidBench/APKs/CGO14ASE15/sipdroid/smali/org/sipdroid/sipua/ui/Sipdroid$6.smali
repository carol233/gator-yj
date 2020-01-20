.class Lorg/sipdroid/sipua/ui/Sipdroid$6;
.super Ljava/lang/Object;
.source "Sipdroid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/Sipdroid;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Sipdroid;Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$6;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    iput-object p2, p0, Lorg/sipdroid/sipua/ui/Sipdroid$6;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/sipdroid/sipua/ui/Sipdroid$6;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    new-instance v0, Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$6;->val$mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/sipdroid/sipua/ui/CreateAccount;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, "createDialog":Lorg/sipdroid/sipua/ui/CreateAccount;
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$6;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/CreateAccount;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 243
    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/CreateAccount;->show()V

    .line 244
    return-void
.end method
