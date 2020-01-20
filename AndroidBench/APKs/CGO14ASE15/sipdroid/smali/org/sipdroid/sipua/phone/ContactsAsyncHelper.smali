.class public Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$1;,
        Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerHandler;,
        Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;,
        Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;,
        Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;

    invoke-direct {v0}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->sInstance:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 221
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v1, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerHandler;-><init>(Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 224
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "person"    # Landroid/net/Uri;
    .param p3, "placeholderImageResource"    # I

    .prologue
    const/4 v0, 0x0

    .line 232
    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lorg/sipdroid/sipua/phone/CallerInfo;ILorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 234
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lorg/sipdroid/sipua/phone/CallerInfo;ILorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 4
    .param p0, "info"    # Lorg/sipdroid/sipua/phone/CallerInfo;
    .param p1, "token"    # I
    .param p2, "listener"    # Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "imageView"    # Landroid/widget/ImageView;
    .param p6, "person"    # Landroid/net/Uri;
    .param p7, "placeholderImageResource"    # I

    .prologue
    const/4 v3, 0x0

    .line 260
    if-nez p6, :cond_0

    .line 262
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;-><init>(Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$1;)V

    .line 272
    .local v0, "args":Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 273
    iput-object p4, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 274
    iput-object p5, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 275
    iput-object p6, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 276
    iput p7, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 277
    iput-object p2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 278
    iput-object p0, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->info:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 281
    sget-object v2, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 282
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 283
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    const/4 v2, -0x1

    if-eq p7, v2, :cond_1

    .line 291
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    :goto_1
    sget-object v2, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 294
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .param p0, "info"    # Lorg/sipdroid/sipua/phone/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "person"    # Landroid/net/Uri;
    .param p4, "placeholderImageResource"    # I

    .prologue
    const/4 v2, 0x0

    .line 243
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lorg/sipdroid/sipua/phone/CallerInfo;ILorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 306
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;

    .line 307
    .local v0, "args":Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 309
    :pswitch_0
    const/4 v1, 0x0

    .line 313
    .local v1, "imagePresent":Z
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 314
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->info:Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v2, :cond_1

    .line 318
    iget-object v3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->info:Lorg/sipdroid/sipua/phone/CallerInfo;

    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lorg/sipdroid/sipua/phone/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 320
    :cond_1
    const/4 v1, 0x1

    .line 327
    :cond_2
    :goto_1
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->info:Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->info:Lorg/sipdroid/sipua/phone/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/sipdroid/sipua/phone/CallerInfo;->isCachedPhotoCurrent:Z

    .line 332
    :cond_3
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 321
    :cond_4
    iget v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 322
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v2, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
