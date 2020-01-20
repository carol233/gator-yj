.class Lorg/videolan/vlc/gui/JumpToTimeDialog$4;
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
    .line 132
    iput-object p1, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$4;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$4;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->dismiss()V

    return-void
.end method
