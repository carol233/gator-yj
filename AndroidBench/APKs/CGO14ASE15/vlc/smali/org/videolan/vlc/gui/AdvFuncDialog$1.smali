.class Lorg/videolan/vlc/gui/AdvFuncDialog$1;
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
    .line 76
    iput-object p1, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$1;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    .local v0, "c":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 81
    .local v1, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 82
    .local v2, "minute":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$1;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    new-instance v4, Lorg/videolan/vlc/gui/TimeSleepDialog;

    iget-object v5, p0, Lorg/videolan/vlc/gui/AdvFuncDialog$1;->this$0:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/AdvFuncDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lorg/videolan/vlc/gui/TimeSleepDialog;-><init>(Landroid/content/Context;II)V

    invoke-static {v3, v4}, Lorg/videolan/vlc/gui/AdvFuncDialog;->access$002(Lorg/videolan/vlc/gui/AdvFuncDialog;Lorg/videolan/vlc/gui/TimeSleepDialog;)Lorg/videolan/vlc/gui/TimeSleepDialog;

    .line 83
    return-void
.end method
