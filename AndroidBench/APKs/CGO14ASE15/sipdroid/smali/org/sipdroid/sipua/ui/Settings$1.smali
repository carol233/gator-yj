.class Lorg/sipdroid/sipua/ui/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Settings;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Settings;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Settings$1;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichItem"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Settings$1;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v0, p2}, Lorg/sipdroid/sipua/ui/Settings;->access$002(Lorg/sipdroid/sipua/ui/Settings;I)I

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Settings$1;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Settings$1;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Settings$1;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    const v2, 0x7f060063

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/sipdroid/sipua/ui/Settings$1;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v5}, Lorg/sipdroid/sipua/ui/Settings;->access$200(Lorg/sipdroid/sipua/ui/Settings;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p2

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/sipdroid/sipua/ui/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings$1;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Settings;->access$100(Lorg/sipdroid/sipua/ui/Settings;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 378
    return-void
.end method
