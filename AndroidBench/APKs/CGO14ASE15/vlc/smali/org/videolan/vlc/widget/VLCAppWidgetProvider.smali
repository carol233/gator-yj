.class public Lorg/videolan/vlc/widget/VLCAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "VLCAppWidgetProvider.java"


# static fields
.field public static final ACTION_REMOTE_BACKWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Backward"

.field public static final ACTION_REMOTE_FORWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Forward"

.field public static final ACTION_REMOTE_PLAYPAUSE:Ljava/lang/String; = "org.videolan.vlc.remote.PlayPause"

.field public static final ACTION_REMOTE_STOP:Ljava/lang/String; = "org.videolan.vlc.remote.Stop"

.field public static final ACTION_WIDGET_UPDATE:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE"

.field public static final ACTION_WIDGET_UPDATE_POSITION:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE_POSITION"

.field public static final START_FROM_NOTIFICATION:Ljava/lang/String; = "from_notification"

.field public static final TAG:Ljava/lang/String; = "VLC/VLCAppWidgetProvider"

.field public static final VLC_MAIN:Ljava/lang/String; = "org.videolan.vlc.gui.MainActivity"

.field public static final VLC_PACKAGE:Ljava/lang/String; = "org.videolan.vlc"

.field public static final VLC_PLAYER:Ljava/lang/String; = "org.videolan.vlc.gui.audio.AudioPlayerActivity"

.field public static final VLC_SERVICE:Ljava/lang/String; = "org.videolan.vlc.AudioService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "action":Ljava/lang/String;
    const-string v24, "org.videolan.vlc.widget.UPDATE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 64
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f03003f

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 66
    .local v22, "views":Landroid/widget/RemoteViews;
    const-string v24, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 67
    .local v21, "title":Ljava/lang/String;
    const-string v24, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "artist":Ljava/lang/String;
    const-string v24, "isplaying"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 69
    .local v13, "isplaying":Z
    const-string v24, "cover"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 71
    .local v7, "cover":Landroid/graphics/Bitmap;
    const v24, 0x7f0600ab

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 72
    const v24, 0x7f060056

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    const v25, 0x7f060061

    if-eqz v13, :cond_0

    const v24, 0x7f02009b

    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 74
    if-eqz v7, :cond_1

    .line 75
    const v24, 0x7f060054

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 79
    :goto_1
    const v25, 0x7f0600ac

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    new-instance v8, Landroid/content/Intent;

    const-string v24, "org.videolan.vlc.remote.Backward"

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v8, "iBackward":Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    const-string v24, "org.videolan.vlc.remote.PlayPause"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v10, "iPlay":Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    const-string v24, "org.videolan.vlc.remote.Stop"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v11, "iStop":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    const-string v24, "org.videolan.vlc.remote.Forward"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v9, "iForward":Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v12, "iVlc":Landroid/content/Intent;
    const-string v25, "org.videolan.vlc"

    if-eqz v13, :cond_3

    const-string v24, "org.videolan.vlc.gui.audio.AudioPlayerActivity"

    :goto_3
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v24, "from_notification"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const/16 v24, 0x0

    const/high16 v25, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 91
    .local v15, "piBackward":Landroid/app/PendingIntent;
    const/16 v24, 0x0

    const/high16 v25, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 92
    .local v17, "piPlay":Landroid/app/PendingIntent;
    const/16 v24, 0x0

    const/high16 v25, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 93
    .local v18, "piStop":Landroid/app/PendingIntent;
    const/16 v24, 0x0

    const/high16 v25, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 94
    .local v16, "piForward":Landroid/app/PendingIntent;
    const/16 v24, 0x0

    const/high16 v25, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 96
    .local v19, "piVlc":Landroid/app/PendingIntent;
    const v24, 0x7f060066

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 97
    const v24, 0x7f060061

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 98
    const v24, 0x7f060062

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 99
    const v24, 0x7f060067

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 100
    const v24, 0x7f060054

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    new-instance v23, Landroid/content/ComponentName;

    const-class v24, Lorg/videolan/vlc/widget/VLCAppWidgetProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v23, "widget":Landroid/content/ComponentName;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 104
    .local v14, "manager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 118
    .end local v6    # "artist":Ljava/lang/String;
    .end local v7    # "cover":Landroid/graphics/Bitmap;
    .end local v8    # "iBackward":Landroid/content/Intent;
    .end local v9    # "iForward":Landroid/content/Intent;
    .end local v10    # "iPlay":Landroid/content/Intent;
    .end local v11    # "iStop":Landroid/content/Intent;
    .end local v12    # "iVlc":Landroid/content/Intent;
    .end local v13    # "isplaying":Z
    .end local v14    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v15    # "piBackward":Landroid/app/PendingIntent;
    .end local v16    # "piForward":Landroid/app/PendingIntent;
    .end local v17    # "piPlay":Landroid/app/PendingIntent;
    .end local v18    # "piStop":Landroid/app/PendingIntent;
    .end local v19    # "piVlc":Landroid/app/PendingIntent;
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "views":Landroid/widget/RemoteViews;
    .end local v23    # "widget":Landroid/content/ComponentName;
    :goto_4
    return-void

    .line 73
    .restart local v6    # "artist":Ljava/lang/String;
    .restart local v7    # "cover":Landroid/graphics/Bitmap;
    .restart local v13    # "isplaying":Z
    .restart local v21    # "title":Ljava/lang/String;
    .restart local v22    # "views":Landroid/widget/RemoteViews;
    :cond_0
    const v24, 0x7f02009e

    goto/16 :goto_0

    .line 77
    :cond_1
    const v24, 0x7f060054

    const v25, 0x7f020079

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 79
    :cond_2
    const/16 v24, 0x4

    goto/16 :goto_2

    .line 87
    .restart local v8    # "iBackward":Landroid/content/Intent;
    .restart local v9    # "iForward":Landroid/content/Intent;
    .restart local v10    # "iPlay":Landroid/content/Intent;
    .restart local v11    # "iStop":Landroid/content/Intent;
    .restart local v12    # "iVlc":Landroid/content/Intent;
    :cond_3
    const-string v24, "org.videolan.vlc.gui.MainActivity"

    goto/16 :goto_3

    .line 106
    .end local v6    # "artist":Ljava/lang/String;
    .end local v7    # "cover":Landroid/graphics/Bitmap;
    .end local v8    # "iBackward":Landroid/content/Intent;
    .end local v9    # "iForward":Landroid/content/Intent;
    .end local v10    # "iPlay":Landroid/content/Intent;
    .end local v11    # "iStop":Landroid/content/Intent;
    .end local v12    # "iVlc":Landroid/content/Intent;
    .end local v13    # "isplaying":Z
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "views":Landroid/widget/RemoteViews;
    :cond_4
    const-string v24, "org.videolan.vlc.widget.UPDATE_POSITION"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 107
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f03003f

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 109
    .restart local v22    # "views":Landroid/widget/RemoteViews;
    const-string v24, "position"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v20

    .line 110
    .local v20, "pos":F
    const v24, 0x7f06005e

    const/16 v25, 0x64

    const/high16 v26, 0x42c80000    # 100.0f

    mul-float v26, v26, v20

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 112
    new-instance v23, Landroid/content/ComponentName;

    const-class v24, Lorg/videolan/vlc/widget/VLCAppWidgetProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .restart local v23    # "widget":Landroid/content/ComponentName;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 114
    .restart local v14    # "manager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_4

    .line 117
    .end local v14    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v20    # "pos":F
    .end local v22    # "views":Landroid/widget/RemoteViews;
    .end local v23    # "widget":Landroid/content/ComponentName;
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_4
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc"

    const-string v2, "org.videolan.vlc.AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    return-void
.end method
