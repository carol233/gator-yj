.class Lorg/videolan/vlc/gui/TimeSleepDialog$1;
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
    .line 65
    iput-object p1, p0, Lorg/videolan/vlc/gui/TimeSleepDialog$1;->this$0:Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x0

    .line 68
    iget-object v5, p0, Lorg/videolan/vlc/gui/TimeSleepDialog$1;->this$0:Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/TimeSleepDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "org.videolan.vlc.SleepIntent"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v5, v8, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 72
    .local v3, "sleepPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 73
    .local v1, "currentTime":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 75
    .local v4, "sleepTime":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    const/16 v5, 0xb

    iget-object v6, p0, Lorg/videolan/vlc/gui/TimeSleepDialog$1;->this$0:Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-static {v6}, Lorg/videolan/vlc/gui/TimeSleepDialog;->access$000(Lorg/videolan/vlc/gui/TimeSleepDialog;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 77
    const/16 v5, 0xc

    iget-object v6, p0, Lorg/videolan/vlc/gui/TimeSleepDialog$1;->this$0:Lorg/videolan/vlc/gui/TimeSleepDialog;

    iget v6, v6, Lorg/videolan/vlc/gui/TimeSleepDialog;->minute:I

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v5, 0xd

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 79
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->roll(IZ)V

    .line 82
    :cond_0
    const-string v5, "VLC/TimeSleepDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VLC will sleep at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v8, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 84
    return-void
.end method
