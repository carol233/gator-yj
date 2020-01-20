.class Lorg/videolan/vlc/gui/JumpToTimeDialog$3;
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
    .line 109
    iput-object p1, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$3;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v3, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$3;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v3}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$100(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "hour":Ljava/lang/String;
    iget-object v3, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$3;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v3}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$300(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "min":Ljava/lang/String;
    iget-object v3, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$3;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {v3}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->access$500(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "sec":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string v0, "0"

    .line 118
    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const-string v1, "0"

    .line 120
    :cond_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    const-string v2, "0"

    .line 122
    :cond_2
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getExistingInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/videolan/vlc/LibVLC;->setTime(J)J

    .line 128
    iget-object v3, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$3;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->dismiss()V

    .line 129
    return-void
.end method
