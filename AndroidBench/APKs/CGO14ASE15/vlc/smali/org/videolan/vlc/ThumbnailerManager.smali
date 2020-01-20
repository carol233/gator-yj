.class public Lorg/videolan/vlc/ThumbnailerManager;
.super Ljava/lang/Object;
.source "ThumbnailerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/ThumbnailerManager"


# instance fields
.field private isStopping:Z

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final mContext:Landroid/content/Context;

.field private final mDensity:F

.field private final mItems:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mLibVlc:Lorg/videolan/vlc/LibVLC;

.field private final mPrefix:Ljava/lang/String;

.field protected mThread:Ljava/lang/Thread;

.field private mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private totalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mItems:Ljava/util/Queue;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->isStopping:Z

    .line 50
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    .line 51
    iget-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 61
    iput-object p1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mDensity:F

    .line 65
    iget-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mPrefix:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public addJob(Lorg/videolan/vlc/Media;)V
    .locals 2
    .param p1, "item"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->mItems:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 110
    iget v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->totalCount:I

    .line 111
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 112
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    const-string v0, "VLC/ThumbnailerManager"

    const-string v1, "Job added!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public clearJobs()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->mItems:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->totalCount:I

    .line 100
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "count":I
    const/4 v7, 0x0

    .line 124
    .local v7, "total":I
    const-string v9, "VLC/ThumbnailerManager"

    const-string v10, "Thumbnailer started"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    iget-boolean v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->isStopping:Z

    if-nez v9, :cond_1

    .line 127
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->resetBarrier()V

    .line 128
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    const/4 v4, 0x0

    .line 131
    .local v4, "interrupted":Z
    :goto_1
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mItems:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 133
    :try_start_0
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar(Landroid/content/Context;)V

    .line 134
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo(Landroid/content/Context;)V

    .line 135
    const/4 v9, 0x0

    iput v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->totalCount:I

    .line 136
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 139
    const-string v9, "VLC/ThumbnailerManager"

    const-string v10, "interruption probably requested by stop()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz v4, :cond_2

    .line 144
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    .end local v4    # "interrupted":Z
    :cond_1
    :goto_2
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar(Landroid/content/Context;)V

    .line 192
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo(Landroid/content/Context;)V

    .line 193
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 194
    const-string v9, "VLC/ThumbnailerManager"

    const-string v10, "Thumbnailer stopped"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 147
    .restart local v4    # "interrupted":Z
    :cond_2
    iget v7, p0, Lorg/videolan/vlc/ThumbnailerManager;->totalCount:I

    .line 148
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mItems:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/Media;

    .line 149
    .local v5, "item":Lorg/videolan/vlc/Media;
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 151
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/videolan/vlc/gui/MainActivity;->showProgressBar(Landroid/content/Context;)V

    .line 153
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    const-string v10, "%s %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/videolan/vlc/ThumbnailerManager;->mPrefix:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1, v7}, Lorg/videolan/vlc/gui/MainActivity;->sendTextInfo(Landroid/content/Context;Ljava/lang/String;II)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 156
    const/high16 v9, 0x42f00000    # 120.0f

    iget v10, p0, Lorg/videolan/vlc/ThumbnailerManager;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 157
    .local v8, "width":I
    const/high16 v9, 0x42a00000    # 80.0f

    iget v10, p0, Lorg/videolan/vlc/ThumbnailerManager;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 160
    .local v3, "height":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 162
    .local v6, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mLibVlc:Lorg/videolan/vlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v3}, Lorg/videolan/vlc/LibVLC;->getThumbnail(Ljava/lang/String;II)[B

    move-result-object v0

    .line 164
    .local v0, "b":[B
    if-nez v0, :cond_3

    .line 165
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/videolan/vlc/Media;->setPicture(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 169
    :cond_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 170
    invoke-static {v6, v8, v3}, Lorg/videolan/vlc/Util;->cropBorders(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 172
    const-string v9, "VLC/ThumbnailerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thumbnail created for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lorg/videolan/vlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v6}, Lorg/videolan/vlc/Media;->setPicture(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-virtual {v9, v5}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->setItemToUpdate(Lorg/videolan/vlc/Media;)V

    .line 180
    :try_start_1
    iget-object v9, p0, Lorg/videolan/vlc/ThumbnailerManager;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 181
    :catch_1
    move-exception v2

    .line 182
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    const-string v9, "VLC/ThumbnailerManager"

    const-string v10, "interruption probably requested by stop()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 184
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 185
    .local v2, "e":Ljava/util/concurrent/BrokenBarrierException;
    const-string v9, "VLC/ThumbnailerManager"

    const-string v10, "Unexpected BrokenBarrierException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Ljava/util/concurrent/BrokenBarrierException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public start(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 3
    .param p1, "videoGridFragment"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    .line 69
    iget-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mLibVlc:Lorg/videolan/vlc/LibVLC;

    if-nez v1, :cond_0

    .line 71
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mLibVlc:Lorg/videolan/vlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->isStopping:Z

    .line 80
    iget-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_2

    .line 81
    :cond_1
    iput-object p1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 82
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mThread:Ljava/lang/Thread;

    .line 83
    iget-object v1, p0, Lorg/videolan/vlc/ThumbnailerManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 85
    :cond_2
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/videolan/vlc/LibVlcException;
    const-string v1, "VLC/ThumbnailerManager"

    const-string v2, "Can\'t obtain libvlc instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Lorg/videolan/vlc/LibVlcException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->isStopping:Z

    .line 89
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/videolan/vlc/ThumbnailerManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 91
    :cond_0
    return-void
.end method
