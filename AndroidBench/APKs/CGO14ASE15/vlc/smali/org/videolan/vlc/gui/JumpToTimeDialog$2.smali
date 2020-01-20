.class Lorg/videolan/vlc/gui/JumpToTimeDialog$2;
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
    .line 95
    iput-object p1, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$100(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$700(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$300(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$800(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$500(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$900(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    goto :goto_0
.end method
