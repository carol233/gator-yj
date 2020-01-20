.class public Lorg/sipdroid/sipua/ui/VideoCamera;
.super Lorg/sipdroid/sipua/ui/CallScreen;
.source "VideoCamera.java"

# interfaces
.implements Lorg/sipdroid/sipua/ui/SipdroidListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "videocamera"

.field private static UPDATE_RECORD_TIME:I = 0x0

.field private static final VIDEO_ASPECT_RATIO:F = 1.2222222f

.field static tm:Landroid/telephony/TelephonyManager;


# instance fields
.field change:Z

.field fps:I

.field isAvailableSprintFFC:Z

.field justplay:Z

.field lss:Landroid/net/LocalServerSocket;

.field mCamera:Landroid/hardware/Camera;

.field mContext:Landroid/content/Context;

.field private mFPS:Landroid/widget/TextView;

.field mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mLocationManager:Landroid/location/LocationManager;

.field mMediaController:Landroid/widget/MediaController;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field mPostPictureAlert:Landroid/view/View;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mVideoFrame:Landroid/widget/VideoView;

.field mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

.field obuffering:I

.field opos:I

.field receiver:Landroid/net/LocalSocket;

.field sender:Landroid/net/LocalSocket;

.field speakermode:I

.field t:Ljava/lang/Thread;

.field useFront:Z

.field videoQualityHigh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    sput v0, Lorg/sipdroid/sipua/ui/VideoCamera;->UPDATE_RECORD_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/CallScreen;-><init>()V

    .line 73
    iput-object p0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    .line 93
    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 95
    new-instance v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;-><init>(Lorg/sipdroid/sipua/ui/VideoCamera;Lorg/sipdroid/sipua/ui/VideoCamera$1;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->useFront:Z

    return-void
.end method

.method static synthetic access$100(Lorg/sipdroid/sipua/ui/VideoCamera;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/VideoCamera;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/sipdroid/sipua/ui/VideoCamera;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/VideoCamera;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mFPS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/sipdroid/sipua/ui/VideoCamera;)Z
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/VideoCamera;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/sipdroid/sipua/ui/VideoCamera;->UPDATE_RECORD_TIME:I

    return v0
.end method

.method static synthetic access$500(Lorg/sipdroid/sipua/ui/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/VideoCamera;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkForCamera()V
    .locals 2

    .prologue
    .line 329
    :try_start_0
    const-string v1, "android.hardware.HtcFrontFacingCamera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->isAvailableSprintFFC:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->isAvailableSprintFFC:Z

    goto :goto_0
.end method

.method private initializeVideo()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 344
    const-string v4, "videocamera"

    const-string v7, "initializeVideo"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v4, :cond_0

    .line 347
    const-string v4, "videocamera"

    const-string v6, "SurfaceHolder is null"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 408
    :goto_0
    return v4

    .line 351
    :cond_0
    iput-boolean v6, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    .line 353
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v4, :cond_4

    .line 354
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 357
    :goto_1
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_2

    .line 358
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x8

    if-lt v4, v7, :cond_1

    .line 359
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/VideoCameraNew2;->reconnect(Landroid/hardware/Camera;)V

    .line 360
    :cond_1
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 361
    iput-object v8, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    .line 364
    :cond_2
    iget-boolean v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->useFront:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x5

    if-lt v4, v7, :cond_3

    .line 365
    iget-boolean v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->isAvailableSprintFFC:Z

    if-eqz v4, :cond_5

    .line 369
    :try_start_0
    const-string v4, "android.hardware.HtcFrontFacingCamera"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v7, "getCamera"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 370
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera;

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_2
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/VideoCameraNew;->unlock(Landroid/hardware/Camera;)V

    .line 383
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 384
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    invoke-virtual {v4, p0}, Lorg/sipdroid/sipua/ui/VideoPreview;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :cond_3
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    invoke-virtual {v4, p0}, Lorg/sipdroid/sipua/ui/VideoPreview;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 387
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v6}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 388
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 389
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->sender:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 391
    iget-boolean v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->videoQualityHigh:Z

    if-eqz v4, :cond_6

    .line 392
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v7, 0x160

    const/16 v8, 0x120

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 396
    :goto_3
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 397
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 400
    :try_start_1
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V

    .line 401
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 402
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v6

    .line 408
    goto/16 :goto_0

    .line 356
    :cond_4
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->reset()V

    goto/16 :goto_1

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "videocamera"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 377
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    .line 378
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 379
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v4, "camera-id"

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 380
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 394
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_6
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v7, 0xb0

    const/16 v8, 0x90

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_3

    .line 403
    :catch_1
    move-exception v1

    .line 404
    .local v1, "exception":Ljava/io/IOException;
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->releaseMediaRecorder()V

    .line 405
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->finish()V

    move v4, v5

    .line 406
    goto/16 :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 415
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 416
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/VideoCameraNew2;->reconnect(Landroid/hardware/Camera;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 419
    iput-object v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mCamera:Landroid/hardware/Camera;

    .line 421
    :cond_1
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 422
    iput-object v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 424
    :cond_2
    return-void
.end method

.method private setScreenOnFlag()V
    .locals 3

    .prologue
    .line 603
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 604
    .local v1, "w":Landroid/view/Window;
    const/16 v0, 0x80

    .line 605
    .local v0, "keepScreenOnFlag":I
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 606
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 608
    :cond_0
    return-void
.end method

.method private startVideoRecording()V
    .locals 5

    .prologue
    .line 435
    const-string v1, "videocamera"

    const-string v2, "startVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->listener_video:Lorg/sipdroid/sipua/ui/SipdroidListener;

    if-nez v1, :cond_1

    .line 438
    sput-object p0, Lorg/sipdroid/sipua/ui/Receiver;->listener_video:Lorg/sipdroid/sipua/ui/SipdroidListener;

    .line 439
    const/4 v1, 0x1

    sput v1, Lorg/sipdroid/media/RtpStreamSender;->delay:I

    .line 442
    :try_start_0
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    if-nez v1, :cond_0

    .line 443
    new-instance v1, Lorg/sipdroid/net/RtpSocket;

    new-instance v2, Lorg/sipdroid/net/SipdroidSocket;

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->getLocalVideo()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/sipdroid/net/SipdroidSocket;-><init>(I)V

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteVideo()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/sipdroid/net/RtpSocket;-><init>(Lorg/sipdroid/net/SipdroidSocket;Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->rtp_socket:Lorg/sipdroid/net/RtpSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    new-instance v1, Lorg/sipdroid/sipua/ui/VideoCamera$1;

    invoke-direct {v1, p0}, Lorg/sipdroid/sipua/ui/VideoCamera$1;-><init>(Lorg/sipdroid/sipua/ui/VideoCamera;)V

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->t:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 581
    const-string v1, "videocamera"

    const-string v2, "stopVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_2

    .line 583
    :cond_0
    sput-object v3, Lorg/sipdroid/sipua/ui/Receiver;->listener_video:Lorg/sipdroid/sipua/ui/SipdroidListener;

    .line 584
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->t:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 585
    sput v4, Lorg/sipdroid/media/RtpStreamSender;->delay:I

    .line 587
    iget-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 589
    :try_start_0
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 590
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 591
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    iput-boolean v4, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    .line 598
    :cond_1
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->releaseMediaRecorder()V

    .line 600
    :cond_2
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static videoValid()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 635
    sget-boolean v0, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 640
    :goto_0
    return v0

    .line 637
    :cond_0
    sget-object v0, Lorg/sipdroid/sipua/ui/VideoCamera;->tm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lorg/sipdroid/sipua/ui/VideoCamera;->tm:Landroid/telephony/TelephonyManager;

    .line 638
    :cond_1
    sget-object v0, Lorg/sipdroid/sipua/ui/VideoCamera;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 639
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 640
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 650
    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->useFront:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->useFront:Z

    .line 651
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->initializeVideo()Z

    .line 652
    iput-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->change:Z

    .line 653
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lorg/sipdroid/sipua/ui/CallScreen;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 168
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera;->requestWindowFeature(I)Z

    .line 169
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->setScreenOnFlag()V

    .line 170
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera;->setContentView(I)V

    .line 172
    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/sipdroid/sipua/ui/VideoPreview;

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    .line 173
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    const v2, 0x3f9c71c7

    invoke-virtual {v1, v2}, Lorg/sipdroid/sipua/ui/VideoPreview;->setAspectRatio(F)V

    .line 178
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/VideoPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 179
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 180
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 182
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 183
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mFPS:Landroid/widget/TextView;

    .line 184
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    .line 185
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 427
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->finish()V

    .line 430
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public onHangup()V
    .locals 0

    .prologue
    .line 611
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->finish()V

    .line 612
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 269
    sparse-switch p1, :sswitch_data_0

    .line 288
    invoke-super {p0, p1, p2}, Lorg/sipdroid/sipua/ui/CallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 272
    :sswitch_1
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->togglehold()V

    .line 274
    :sswitch_2
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->finish()V

    goto :goto_0

    .line 284
    :sswitch_3
    invoke-static {p1, v0}, Lorg/sipdroid/media/RtpStreamReceiver;->adjust(IZ)V

    goto :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 629
    :goto_0
    return v0

    .line 619
    :sswitch_0
    invoke-static {p1, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->adjust(IZ)V

    goto :goto_0

    .line 622
    :sswitch_1
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v3, "IDLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lorg/sipdroid/sipua/ui/Receiver;->pstn_time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 624
    :cond_1
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->rejectcall()V

    goto :goto_0

    .line 616
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 657
    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->videoQualityHigh:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->videoQualityHigh:Z

    .line 658
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->initializeVideo()Z

    .line 659
    iput-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->change:Z

    .line 660
    return v1

    .line 657
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    invoke-super {p0, p1}, Lorg/sipdroid/sipua/ui/CallScreen;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 303
    :pswitch_0
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->intent:Landroid/content/Intent;

    const-string v1, "justplay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->onResume()V

    .line 305
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onPause()V

    .line 247
    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->stopVideoRecording()V

    .line 251
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->lss:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    .line 252
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->receiver:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 253
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->sender:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    iget v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->speakermode:I

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->speaker(I)I

    .line 260
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->finish()V

    .line 261
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 293
    invoke-super {p0, p1}, Lorg/sipdroid/sipua/ui/CallScreen;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 295
    .local v0, "result":Z
    iget-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 296
    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->intent:Landroid/content/Intent;

    const-string v2, "justplay"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->justplay:Z

    .line 205
    iget-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->justplay:Z

    if-nez v1, :cond_2

    .line 206
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->receiver:Landroid/net/LocalSocket;

    .line 208
    :try_start_0
    new-instance v1, Landroid/net/LocalServerSocket;

    const-string v2, "Sipdroid"

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->lss:Landroid/net/LocalServerSocket;

    .line 209
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->receiver:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "Sipdroid"

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 210
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->receiver:Landroid/net/LocalSocket;

    const v2, 0x7a120

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 211
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->receiver:Landroid/net/LocalSocket;

    const v2, 0x7a120

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 212
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->lss:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->sender:Landroid/net/LocalSocket;

    .line 213
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->sender:Landroid/net/LocalSocket;

    const v2, 0x7a120

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 214
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->sender:Landroid/net/LocalSocket;

    const v2, 0x7a120

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->checkForCamera()V

    .line 222
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    invoke-virtual {v1, v4}, Lorg/sipdroid/sipua/ui/VideoPreview;->setVisibility(I)V

    .line 223
    iget-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->initializeVideo()Z

    .line 224
    :cond_0
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->startVideoRecording()V

    .line 234
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mHandler:Landroid/os/Handler;

    sget v2, Lorg/sipdroid/sipua/ui/VideoCamera;->UPDATE_RECORD_TIME:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mHandler:Landroid/os/Handler;

    sget v2, Lorg/sipdroid/sipua/ui/VideoCamera;->UPDATE_RECORD_TIME:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onResume()V

    .line 239
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e1":Ljava/io/IOException;
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onResume()V

    .line 218
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->finish()V

    goto :goto_1

    .line 225
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteVideo()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "server"

    const-string v3, "pbxes.org"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pbxes.org"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteVideo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sipdroid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 228
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 229
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 230
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 231
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onStart()V

    .line 193
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->speaker(I)I

    move-result v2

    iput v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->speakermode:I

    .line 194
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vquality"

    const-string v4, "low"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "high"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->videoQualityHigh:Z

    .line 195
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, "extraVideoQuality":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->videoQualityHigh:Z

    .line 199
    .end local v0    # "extraVideoQuality":I
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 312
    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->justplay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/VideoCamera;->initializeVideo()Z

    .line 313
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 316
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 317
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 321
    return-void
.end method
