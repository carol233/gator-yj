.class public Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;
.super Landroid/app/Activity;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IAudioPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$4;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/AudioPlayerActivity"


# instance fields
.field private lastTitle:Ljava/lang/String;

.field private mAdvFunc:Landroid/widget/ImageButton;

.field private mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

.field private mAlbum:Landroid/widget/TextView;

.field private mArtist:Landroid/widget/TextView;

.field private mAudioController:Lorg/videolan/vlc/AudioServiceController;

.field private mCover:Landroid/widget/ImageView;

.field private mLength:Landroid/widget/TextView;

.field private mNext:Landroid/widget/ImageButton;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPrevious:Landroid/widget/ImageButton;

.field private mRepeat:Landroid/widget/ImageButton;

.field private mShowRemainingTime:Z

.field private mShuffle:Landroid/widget/ImageButton;

.field private mStop:Landroid/widget/ImageButton;

.field private mTime:Landroid/widget/TextView;

.field private mTimeline:Landroid/widget/SeekBar;

.field mTimelineListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShowRemainingTime:Z

    .line 250
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$2;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTimelineListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)Lorg/videolan/vlc/AudioServiceController;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShowRemainingTime:Z

    return v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->handleContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method private handleContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 391
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 379
    :pswitch_0
    new-instance v4, Lorg/videolan/vlc/gui/SpeedSelectorDialog;

    invoke-direct {v4, p0}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/SpeedSelectorDialog;->show()V

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 383
    .local v0, "c":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 384
    .local v1, "hour":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 385
    .local v2, "minute":I
    new-instance v4, Lorg/videolan/vlc/gui/TimeSleepDialog;

    invoke-direct {v4, p0, v1, v2}, Lorg/videolan/vlc/gui/TimeSleepDialog;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    .line 388
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    :pswitch_2
    new-instance v4, Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/vlc/AudioServiceController;->getTime()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, p0, v5, v6}, Lorg/videolan/vlc/gui/JumpToTimeDialog;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->show()V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600c3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 160
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dontParse"    # Ljava/lang/Boolean;

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    const-string v1, "VLC/AudioPlayerActivity"

    const-string v2, "No context when starting AudioPlayerActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "from_notification"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->finish()V

    .line 187
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->handleContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v1, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    const-string v2, "VLC/AudioPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x140

    if-ne v2, v3, :cond_0

    .line 94
    const v2, 0x7f030022

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->setContentView(I)V

    .line 98
    :goto_0
    const v2, 0x7f060054

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mCover:Landroid/widget/ImageView;

    .line 99
    const v2, 0x7f060055

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTitle:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f060056

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mArtist:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f06005f

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAlbum:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f06005c

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTime:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f06005d

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mLength:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f060061

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    .line 105
    const v2, 0x7f060062

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mStop:Landroid/widget/ImageButton;

    .line 106
    const v2, 0x7f060063

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mNext:Landroid/widget/ImageButton;

    .line 107
    const v2, 0x7f060060

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPrevious:Landroid/widget/ImageButton;

    .line 108
    const v2, 0x7f060059

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    .line 109
    const v2, 0x7f06005a

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    .line 110
    const v2, 0x7f06005b

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAdvFunc:Landroid/widget/ImageButton;

    .line 111
    const v2, 0x7f06005e

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTimeline:Landroid/widget/SeekBar;

    .line 113
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)V

    .line 122
    .local v0, "listener":Landroid/view/View$OnFocusChangeListener;
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAdvFunc:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 125
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTimeline:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mStop:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 129
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->setVolumeControlStream(I)V

    .line 133
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    .line 134
    const-string v2, ""

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->lastTitle:Ljava/lang/String;

    .line 135
    return-void

    .line 96
    .end local v0    # "listener":Landroid/view/View$OnFocusChangeListener;
    :cond_0
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 367
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 368
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 369
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 336
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->stop()V

    .line 339
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNextClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->next()V

    .line 306
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 147
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->removeAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V

    .line 148
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public onPlayPauseClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->pause()V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->play()V

    goto :goto_0
.end method

.method public onPreviousClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->previous()V

    .line 310
    return-void
.end method

.method public onRepeatClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    sget-object v0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$4;->$SwitchMap$org$videolan$vlc$RepeatType:[I

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/AudioServiceController;->getRepeatType()Lorg/videolan/vlc/RepeatType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/RepeatType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 322
    :pswitch_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    sget-object v1, Lorg/videolan/vlc/RepeatType;->None:Lorg/videolan/vlc/RepeatType;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/AudioServiceController;->setRepeatType(Lorg/videolan/vlc/RepeatType;)V

    .line 325
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->update()V

    .line 326
    return-void

    .line 315
    :pswitch_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    sget-object v1, Lorg/videolan/vlc/RepeatType;->All:Lorg/videolan/vlc/RepeatType;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/AudioServiceController;->setRepeatType(Lorg/videolan/vlc/RepeatType;)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    sget-object v1, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/AudioServiceController;->setRepeatType(Lorg/videolan/vlc/RepeatType;)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->addAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V

    .line 142
    return-void
.end method

.method public onShuffleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/AudioServiceController;->shuffle()V

    .line 330
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->update()V

    .line 331
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAdvFuncDialog:Lorg/videolan/vlc/gui/AdvFuncDialog;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/AdvFuncDialog;->destroyAdvFuncDialog()V

    .line 156
    :cond_0
    return-void
.end method

.method public onStopClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 297
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/AudioServiceController;->stop()V

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->finish()V

    .line 302
    return-void
.end method

.method public onTextClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 286
    return-void
.end method

.method public onTimeLabelClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShowRemainingTime:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShowRemainingTime:Z

    .line 276
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->update()V

    .line 277
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAdvanceFunction(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lorg/videolan/vlc/Util;->isHoneycombOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 346
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->openContextMenu(Landroid/view/View;)V

    .line 361
    :goto_0
    return-void

    .line 352
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 353
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0004

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    new-instance v1, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$3;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$3;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 360
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 192
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->hasMedia()Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->finish()V

    .line 248
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->lastTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->getCover()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, "cover":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 201
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    .end local v0    # "cover":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iput-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->lastTitle:Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->lastTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mArtist:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v5}, Lorg/videolan/vlc/AudioServiceController;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAlbum:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v5}, Lorg/videolan/vlc/AudioServiceController;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->getTime()I

    move-result v2

    .line 210
    .local v2, "time":I
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->getLength()I

    move-result v1

    .line 211
    .local v1, "length":I
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTime:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShowRemainingTime:Z

    if-eqz v4, :cond_3

    sub-int v4, v2, v1

    int-to-long v4, v4

    :goto_2
    invoke-static {v4, v5}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mLength:Landroid/widget/TextView;

    int-to-long v5, v1

    invoke-static {v5, v6}, Lorg/videolan/vlc/Util;->millisToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTimeline:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 214
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTimeline:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 215
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    const v5, 0x7f02009b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 217
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    const v5, 0x7f0b0027

    invoke-virtual {p0, v5}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    :goto_3
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->isShuffling()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 223
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    const v5, 0x7f0200a6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 227
    :goto_4
    sget-object v4, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity$4;->$SwitchMap$org$videolan$vlc$RepeatType:[I

    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v5}, Lorg/videolan/vlc/AudioServiceController;->getRepeatType()Lorg/videolan/vlc/RepeatType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/vlc/RepeatType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 236
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    const v5, 0x7f0200a2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 239
    :goto_5
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 240
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 243
    :goto_6
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v4}, Lorg/videolan/vlc/AudioServiceController;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 244
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 247
    :goto_7
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTimeline:Landroid/widget/SeekBar;

    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mTimelineListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_0

    .line 203
    .end local v1    # "length":I
    .end local v2    # "time":I
    .restart local v0    # "cover":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mCover:Landroid/widget/ImageView;

    const v5, 0x7f020079

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 211
    .end local v0    # "cover":Landroid/graphics/Bitmap;
    .restart local v1    # "length":I
    .restart local v2    # "time":I
    :cond_3
    int-to-long v4, v2

    goto/16 :goto_2

    .line 219
    :cond_4
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    const v5, 0x7f02009e

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 220
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    const v5, 0x7f0b0019

    invoke-virtual {p0, v5}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 225
    :cond_5
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    const v5, 0x7f0200a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 229
    :pswitch_0
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    const v5, 0x7f0200a1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 232
    :pswitch_1
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    const v5, 0x7f0200a3

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 242
    :cond_6
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_6

    .line 246
    :cond_7
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_7

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
