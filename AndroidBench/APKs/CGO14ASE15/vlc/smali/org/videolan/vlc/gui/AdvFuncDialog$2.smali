.class Lorg/videolan/vlc/gui/AdvFuncDialog$2;
.super Ljava/lang/Object;
.source "AdvFuncDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/AdvFuncDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/AdvFuncDialog;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    new-instance v1, Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    iget-object v2, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/AdvFuncDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/AdvFuncDialog;->access$102(Lorg/videolan/vlc/gui/AdvFuncDialog;Lorg/videolan/vlc/gui/SpeedSelectorDialog;)Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    .line 90
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->access$100(Lorg/videolan/vlc/gui/AdvFuncDialog;)Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    move-result-object v0

    new-instance v1, Lorg/videolan/vlc/gui/AdvFuncDialog$2$1;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/AdvFuncDialog$2$1;-><init>(Lorg/videolan/vlc/gui/AdvFuncDialog$2;)V

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 96
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->access$100(Lorg/videolan/vlc/gui/AdvFuncDialog;)Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->show()V

    .line 97
    return-void
.end method
