.class Lorg/videolan/vlc/gui/AdvFuncDialog$2$1;
.super Ljava/lang/Object;
.source "AdvFuncDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/AdvFuncDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/AdvFuncDialog$2;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/AdvFuncDialog$2;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2$1;->this$1:Lorg/videolan/vlc/gui/AdvFuncDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2$1;->this$1:Lorg/videolan/vlc/gui/AdvFuncDialog$2;

    iget-object v0, v0, Lorg/videolan/vlc/gui/AdvFuncDialog$2;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->access$300(Lorg/videolan/vlc/gui/AdvFuncDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$2$1;->this$1:Lorg/videolan/vlc/gui/AdvFuncDialog$2;

    iget-object v1, v1, Lorg/videolan/vlc/gui/AdvFuncDialog$2;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-static {v1}, Lorg/videolan/vlc/gui/AdvFuncDialog;->access$200(Lorg/videolan/vlc/gui/AdvFuncDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
