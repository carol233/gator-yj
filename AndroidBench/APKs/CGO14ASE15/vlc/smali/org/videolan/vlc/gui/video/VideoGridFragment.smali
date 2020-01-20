.class public Lorg/videolan/vlc/gui/video/VideoGridFragment;
.super Lorg/videolan/android/ui/SherlockGridFragment;
.source "VideoGridFragment.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/ISortable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;
    }
.end annotation


# static fields
.field protected static final ACTION_SCAN_START:Ljava/lang/String; = "org.videolan.vlc.gui.ScanStart"

.field protected static final ACTION_SCAN_STOP:Ljava/lang/String; = "org.videolan.vlc.gui.ScanStop"

.field private static final GRID_HORIZONTAL_SPACING_DP:I = 0x14

.field private static final GRID_ITEM_WIDTH_DP:I = 0x9c

.field private static final GRID_STRETCH_MODE:I = 0x2

.field private static final GRID_VERTICAL_SPACING_DP:I = 0x14

.field private static final LIST_HORIZONTAL_SPACING_DP:I = 0x0

.field private static final LIST_STRETCH_MODE:I = 0x2

.field private static final LIST_VERTICAL_SPACING_DP:I = 0xa

.field public static final TAG:Ljava/lang/String; = "VLC/VideoListFragment"

.field protected static final UPDATE_ITEM:I


# instance fields
.field private mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

.field protected final mBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private mHandler:Landroid/os/Handler;

.field protected mItemToUpdate:Lorg/videolan/vlc/Media;

.field protected mLayoutFlipperLoading:Landroid/widget/LinearLayout;

.field private mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

.field protected mTextViewNomedia:Landroid/widget/TextView;

.field private mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

.field private mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

.field private final messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/videolan/android/ui/SherlockGridFragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 340
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    .line 416
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/video/VideoGridFragment;Landroid/view/MenuItem;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;
    .param p1, "x1"    # Landroid/view/MenuItem;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateItem()V

    return-void
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateList()V

    return-void
.end method

.method public static actionScanStart(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    if-nez p0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ScanStart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static actionScanStop(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    if-nez p0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 442
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ScanStop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleContextItemSelected(Landroid/view/MenuItem;I)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/MenuItem;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 301
    :goto_0
    return v3

    .line 273
    :pswitch_0
    invoke-virtual {p0, p2, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->playVideo(IZ)V

    move v3, v4

    .line 274
    goto :goto_0

    .line 276
    :pswitch_1
    invoke-virtual {p0, p2, v4}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->playVideo(IZ)V

    move v3, v4

    .line 277
    goto :goto_0

    .line 279
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->playAudio(I)V

    move v3, v4

    .line 280
    goto :goto_0

    .line 282
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v5, Lorg/videolan/vlc/gui/video/MediaInfoActivity;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "itemLocation"

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3, p2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 286
    goto :goto_0

    .line 288
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    move v2, p2

    .line 289
    .local v2, "positionDelete":I
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3, v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/Media;

    invoke-virtual {v3}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;

    invoke-direct {v6, p0, v2}, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;I)V

    invoke-static {v5, v3, v6}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/VlcRunnable;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 298
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 299
    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600c7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private hasSpaceForGrid(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 191
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 192
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v6

    .line 195
    :cond_1
    const v7, 0x102000a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 197
    .local v1, "grid":Landroid/widget/GridView;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 198
    .local v4, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 200
    const/16 v7, 0x9c

    invoke-static {v7}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v3

    .line 201
    .local v3, "itemWidth":I
    const/16 v7, 0x14

    invoke-static {v7}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v2

    .line 202
    .local v2, "horizontalspacing":I
    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    mul-int/lit8 v8, v3, 0x2

    add-int v5, v7, v8

    .line 203
    .local v5, "width":I
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v5, v7, :cond_0

    .line 205
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private updateItem()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mItemToUpdate:Lorg/videolan/vlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->update(Lorg/videolan/vlc/Media;)V

    .line 370
    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateList()V
    .locals 5

    .prologue
    .line 377
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaLibrary;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 379
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/Media;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    invoke-virtual {v3}, Lorg/videolan/vlc/ThumbnailerManager;->clearJobs()V

    .line 384
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->clear()V

    .line 386
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 387
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    .line 388
    .local v1, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 389
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3, v1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->add(Ljava/lang/Object;)V

    .line 390
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getPicture()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->isPictureParsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    invoke-virtual {v3, v1}, Lorg/videolan/vlc/ThumbnailerManager;->addJob(Lorg/videolan/vlc/Media;)V

    goto :goto_1

    .line 382
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lorg/videolan/vlc/Media;
    :cond_1
    const-string v3, "VLC/VideoListFragment"

    const-string v4, "Can\'t generate thumbnails, the thumbnailer is missing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->sort()V

    .line 396
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private updateViewMode()V
    .locals 13

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 209
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    const-string v3, "VLC/VideoListFragment"

    const-string v4, "Unable to setup the view"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 217
    .local v0, "gv":Landroid/widget/GridView;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 218
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 219
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x64

    int-to-double v3, v3

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    double-to-int v2, v3

    .line 220
    .local v2, "sidePadding":I
    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 221
    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 224
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->hasSpaceForGrid(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    const-string v3, "VLC/VideoListFragment"

    const-string v4, "Switching to grid mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 227
    invoke-virtual {v0, v11}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 228
    invoke-static {v12}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 229
    invoke-static {v12}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 230
    const/16 v3, 0x9c

    invoke-static {v3}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 231
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3, v9}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->setListMode(Z)V

    goto :goto_0

    .line 233
    :cond_2
    const-string v3, "VLC/VideoListFragment"

    const-string v4, "Switching to list mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v0, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 235
    invoke-virtual {v0, v11}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 236
    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 237
    const/16 v3, 0xa

    invoke-static {v3}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 238
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3, v10}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->setListMode(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I

    .line 410
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 244
    invoke-super {p0, p1}, Lorg/videolan/android/ui/SherlockGridFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateViewMode()V

    .line 250
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/MenuItem;

    .prologue
    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 313
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, p1, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x1

    .line 315
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/videolan/android/ui/SherlockGridFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onContextPopupMenu(Landroid/view/View;I)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Lorg/videolan/vlc/Util;->isHoneycombOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 327
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0006

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 328
    new-instance v1, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;

    invoke-direct {v1, p0, p2}, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 334
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lorg/videolan/android/ui/SherlockGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance v1, Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;-><init>(Landroid/content/Context;Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    .line 107
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    .line 108
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 112
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Lorg/videolan/vlc/ThumbnailerManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/videolan/vlc/ThumbnailerManager;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    .line 114
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 307
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 308
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0600a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mLayoutFlipperLoading:Landroid/widget/LinearLayout;

    .line 123
    const v1, 0x7f0600a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mTextViewNomedia:Landroid/widget/TextView;

    .line 125
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onDestroy()V

    .line 184
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    invoke-virtual {v0}, Lorg/videolan/vlc/ThumbnailerManager;->clearJobs()V

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->reset()V

    .line 187
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->clear()V

    .line 188
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onDestroyView()V

    .line 179
    return-void
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/GridView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->playVideo(IZ)V

    .line 255
    invoke-super/range {p0 .. p5}, Lorg/videolan/android/ui/SherlockGridFragment;->onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V

    .line 256
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onPause()V

    .line 150
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->removeUpdateHandler(Landroid/os/Handler;)V

    .line 153
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    invoke-virtual {v0}, Lorg/videolan/vlc/ThumbnailerManager;->stop()V

    .line 155
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 159
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "VlcSharedPreferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "LastMedia"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "lastPath":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/DatabaseManager;->getVideoTimes(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 164
    .local v2, "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3, v0, v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->setLastMedia(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 165
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->notifyDataSetChanged()V

    .line 166
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/MediaLibrary;->addUpdateHandler(Landroid/os/Handler;)V

    .line 167
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateViewMode()V

    .line 168
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->animate()V

    .line 171
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailerManager:Lorg/videolan/vlc/ThumbnailerManager;

    invoke-virtual {v3, p0}, Lorg/videolan/vlc/ThumbnailerManager;->start(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lorg/videolan/android/ui/SherlockGridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.videolan.vlc.gui.ScanStart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "org.videolan.vlc.gui.ScanStop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const-string v1, "VLC/VideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaLibrary.isWorking() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStart(Landroid/content/Context;)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateList()V

    .line 144
    new-instance v1, Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;-><init>(Landroid/widget/GridView;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    .line 145
    return-void
.end method

.method protected playAudio(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/Media;

    .line 265
    .local v0, "item":Lorg/videolan/vlc/Media;
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v1

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v4, v3}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/lang/String;IZZ)V

    .line 266
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    .line 267
    return-void
.end method

.method protected playVideo(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "fromStart"    # Z

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/Media;

    .line 260
    .local v0, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 261
    return-void
.end method

.method public resetBarrier()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->reset()V

    .line 414
    return-void
.end method

.method public setItemToUpdate(Lorg/videolan/vlc/Media;)V
    .locals 2
    .param p1, "item"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 404
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mItemToUpdate:Lorg/videolan/vlc/Media;

    .line 405
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    return-void
.end method

.method public sortBy(I)V
    .locals 1
    .param p1, "sortby"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->sortBy(I)V

    .line 401
    return-void
.end method
