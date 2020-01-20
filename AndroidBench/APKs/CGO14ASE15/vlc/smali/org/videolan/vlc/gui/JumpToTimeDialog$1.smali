.class Lorg/videolan/vlc/gui/JumpToTimeDialog$1;
.super Ljava/lang/Object;
.source "JumpToTimeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/JumpToTimeDialog;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$100(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$200(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$300(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$400(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$500(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$600(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    goto :goto_0
.end method
