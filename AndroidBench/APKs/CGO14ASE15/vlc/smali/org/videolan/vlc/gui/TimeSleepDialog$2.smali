.class Lorg/videolan/vlc/gui/TimeSleepDialog$2;
.super Ljava/lang/Object;
.source "TimeSleepDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/TimeSleepDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/TimeSleepDialog;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/TimeSleepDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/videolan/vlc/gui/TimeSleepDialog$2;->this$0:Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 90
    const-string v3, "VLC/TimeSleepDialog"

    const-string v4, "Sleep cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v3, p0, Lorg/videolan/vlc/gui/TimeSleepDialog$2;->this$0:Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/TimeSleepDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 92
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.videolan.vlc.SleepIntent"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 94
    .local v2, "sleepPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 95
    return-void
.end method
