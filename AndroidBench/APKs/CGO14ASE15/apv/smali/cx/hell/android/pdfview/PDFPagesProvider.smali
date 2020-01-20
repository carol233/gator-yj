.class public Lcx/hell/android/pdfview/PDFPagesProvider;
.super Lcx/hell/android/lib/pagesview/PagesProvider;
.source "PDFPagesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;,
        Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;
    }
.end annotation


# static fields
.field private static final MB:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "cx.hell.android.pdfview"


# instance fields
.field activity:Landroid/app/Activity;

.field private bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

.field private doRenderAhead:Z

.field private extraCache:I

.field private omitImages:Z

.field private onImageRendererListener:Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

.field private pdf:Lcx/hell/android/lib/pdf/PDF;

.field private renderAhead:F

.field private rendererWorker:Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcx/hell/android/lib/pdf/PDF;ZZ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pdf"    # Lcx/hell/android/lib/pdf/PDF;
    .param p3, "skipImages"    # Z
    .param p4, "doRenderAhead"    # Z

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-direct {p0}, Lcx/hell/android/lib/pagesview/PagesProvider;-><init>()V

    .line 31
    const v0, 0x40066666    # 2.1f

    iput v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->renderAhead:F

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->doRenderAhead:Z

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->extraCache:I

    .line 35
    iput-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->activity:Landroid/app/Activity;

    .line 367
    iput-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->pdf:Lcx/hell/android/lib/pdf/PDF;

    .line 368
    iput-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    .line 369
    iput-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->rendererWorker:Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;

    .line 370
    iput-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->onImageRendererListener:Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    .line 378
    iput-object p2, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->pdf:Lcx/hell/android/lib/pdf/PDF;

    .line 379
    iput-boolean p3, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->omitImages:Z

    .line 380
    new-instance v0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-direct {v0}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;-><init>()V

    iput-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    .line 381
    new-instance v0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;

    invoke-direct {v0, p0}, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;-><init>(Lcx/hell/android/pdfview/PDFPagesProvider;)V

    iput-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->rendererWorker:Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;

    .line 382
    iput-object p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->activity:Landroid/app/Activity;

    .line 383
    iput-boolean p4, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->doRenderAhead:Z

    .line 384
    invoke-direct {p0}, Lcx/hell/android/pdfview/PDFPagesProvider;->setMaxCacheSize()V

    .line 385
    return-void
.end method

.method static synthetic access$0(Lcx/hell/android/pdfview/PDFPagesProvider;Ljava/util/Collection;Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcx/hell/android/lib/pagesview/RenderingException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Lcx/hell/android/pdfview/PDFPagesProvider;->renderTiles(Ljava/util/Collection;Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcx/hell/android/pdfview/PDFPagesProvider;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/PDFPagesProvider;->publishBitmaps(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2(Lcx/hell/android/pdfview/PDFPagesProvider;Lcx/hell/android/lib/pagesview/RenderingException;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/PDFPagesProvider;->publishRenderingException(Lcx/hell/android/lib/pagesview/RenderingException;)V

    return-void
.end method

.method private publishBitmaps(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "renderedTiles":Ljava/util/Map;, "Ljava/util/Map<Lcx/hell/android/lib/pagesview/Tile;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->onImageRendererListener:Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->onImageRendererListener:Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    invoke-interface {v0, p1}, Lcx/hell/android/lib/pagesview/OnImageRenderedListener;->onImagesRendered(Ljava/util/Map;)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    const-string v0, "cx.hell.android.pdfview"

    const-string v1, "we\'ve got new bitmaps, but there\'s no one to notify about it!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private publishRenderingException(Lcx/hell/android/lib/pagesview/RenderingException;)V
    .locals 1
    .param p1, "e"    # Lcx/hell/android/lib/pagesview/RenderingException;

    .prologue
    .line 454
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->onImageRendererListener:Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->onImageRendererListener:Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    invoke-interface {v0, p1}, Lcx/hell/android/lib/pagesview/OnImageRenderedListener;->onRenderingException(Lcx/hell/android/lib/pagesview/RenderingException;)V

    .line 457
    :cond_0
    return-void
.end method

.method private renderBitmap(Lcx/hell/android/lib/pagesview/Tile;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "tile"    # Lcx/hell/android/lib/pagesview/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcx/hell/android/lib/pagesview/RenderingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 418
    monitor-enter p1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-virtual {v0, p1}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->contains(Lcx/hell/android/lib/pagesview/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    monitor-exit p1

    .line 435
    :goto_0
    return-object v8

    .line 423
    :cond_0
    new-instance v7, Lcx/hell/android/lib/pdf/PDF$Size;

    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getPrefXSize()I

    move-result v0

    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getPrefYSize()I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcx/hell/android/lib/pdf/PDF$Size;-><init>(II)V

    .line 424
    .local v7, "size":Lcx/hell/android/lib/pdf/PDF$Size;
    const/4 v9, 0x0

    check-cast v9, [I

    .line 426
    .local v9, "pagebytes":[I
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->pdf:Lcx/hell/android/lib/pdf/PDF;

    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getPage()I

    move-result v1

    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getZoom()I

    move-result v2

    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getY()I

    move-result v4

    .line 427
    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getRotation()I

    move-result v5

    iget-boolean v6, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->omitImages:Z

    .line 426
    invoke-virtual/range {v0 .. v7}, Lcx/hell/android/lib/pdf/PDF;->renderPage(IIIIIZLcx/hell/android/lib/pdf/PDF$Size;)[I

    move-result-object v9

    .line 429
    if-nez v9, :cond_1

    new-instance v0, Lcx/hell/android/lib/pagesview/RenderingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t render page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/Tile;->getPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcx/hell/android/lib/pagesview/RenderingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    .end local v7    # "size":Lcx/hell/android/lib/pdf/PDF$Size;
    .end local v9    # "pagebytes":[I
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 432
    .restart local v7    # "size":Lcx/hell/android/lib/pdf/PDF$Size;
    .restart local v9    # "pagebytes":[I
    :cond_1
    :try_start_1
    iget v0, v7, Lcx/hell/android/lib/pdf/PDF$Size;->width:I

    iget v1, v7, Lcx/hell/android/lib/pdf/PDF$Size;->height:I

    .line 433
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 432
    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 434
    .local v8, "b":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-virtual {v0, p1, v8}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->put(Lcx/hell/android/lib/pagesview/Tile;Landroid/graphics/Bitmap;)V

    .line 435
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private renderTiles(Ljava/util/Collection;Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;)Ljava/util/Map;
    .locals 5
    .param p2, "ignore"    # Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            ">;",
            "Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcx/hell/android/lib/pagesview/RenderingException;
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcx/hell/android/lib/pagesview/Tile;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 400
    .local v2, "renderedTiles":Ljava/util/Map;, "Ljava/util/Map<Lcx/hell/android/lib/pagesview/Tile;Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcx/hell/android/lib/pagesview/Tile;>;"
    const/4 v3, 0x0

    .line 403
    .local v3, "tile":Lcx/hell/android/lib/pagesview/Tile;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 410
    return-object v2

    .line 404
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tile":Lcx/hell/android/lib/pagesview/Tile;
    check-cast v3, Lcx/hell/android/lib/pagesview/Tile;

    .line 405
    .restart local v3    # "tile":Lcx/hell/android/lib/pagesview/Tile;
    invoke-direct {p0, v3}, Lcx/hell/android/pdfview/PDFPagesProvider;->renderBitmap(Lcx/hell/android/lib/pagesview/Tile;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 406
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setMaxCacheSize()V
    .locals 13

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    const-wide/32 v11, 0x400000

    sub-long v1, v9, v11

    .line 49
    .local v1, "availLong":J
    const-wide/32 v9, 0x10000000

    cmp-long v9, v1, v9

    if-lez v9, :cond_6

    .line 50
    const/high16 v0, 0x10000000

    .line 54
    .local v0, "avail":I
    :goto_0
    const/high16 v9, 0x700000

    iget v10, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->extraCache:I

    add-int v5, v9, v10

    .line 55
    .local v5, "maxMax":I
    if-ge v5, v0, :cond_0

    .line 56
    move v5, v0

    .line 57
    :cond_0
    const/high16 v6, 0x400000

    .line 58
    .local v6, "minMax":I
    if-ge v5, v6, :cond_1

    .line 59
    move v5, v6

    .line 61
    :cond_1
    iget-object v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 62
    .local v7, "screenHeight":I
    iget-object v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 63
    .local v8, "screenWidth":I
    mul-int v3, v8, v7

    .line 65
    .local v3, "displaySize":I
    const v9, 0x12c00

    if-gt v3, v9, :cond_2

    .line 66
    const v3, 0x12c00

    .line 68
    :cond_2
    int-to-float v9, v3

    const/high16 v10, 0x3fa00000    # 1.25f

    mul-float/2addr v9, v10

    const v10, 0x3f800347    # 1.0001f

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 70
    .local v4, "m":I
    iget-boolean v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->doRenderAhead:Z

    if-eqz v9, :cond_8

    .line 71
    int-to-float v9, v4

    const v10, 0x40066666    # 2.1f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    if-gt v9, v5, :cond_7

    .line 72
    const v9, 0x40066666    # 2.1f

    iput v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->renderAhead:F

    .line 73
    int-to-float v9, v4

    iget v10, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->renderAhead:F

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 84
    :goto_1
    if-ge v4, v6, :cond_3

    .line 85
    move v4, v6

    .line 87
    :cond_3
    const/high16 v9, 0x1400000

    add-int/2addr v9, v4

    if-gt v9, v5, :cond_4

    .line 88
    const/high16 v9, 0x1400000

    sub-int v4, v5, v9

    .line 90
    :cond_4
    if-ge v4, v5, :cond_5

    .line 91
    iget v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->extraCache:I

    add-int/2addr v4, v9

    .line 92
    if-ge v5, v4, :cond_5

    .line 93
    move v4, v5

    .line 96
    :cond_5
    const-string v9, "cx.hell.android.pdfview"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Setting cache size="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " renderAhead="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->renderAhead:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (avail="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-virtual {v9, v4}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->setMaxCacheSizeBytes(I)V

    .line 99
    return-void

    .line 52
    .end local v0    # "avail":I
    .end local v3    # "displaySize":I
    .end local v4    # "m":I
    .end local v5    # "maxMax":I
    .end local v6    # "minMax":I
    .end local v7    # "screenHeight":I
    .end local v8    # "screenWidth":I
    :cond_6
    long-to-int v0, v1

    .restart local v0    # "avail":I
    goto/16 :goto_0

    .line 76
    .restart local v3    # "displaySize":I
    .restart local v4    # "m":I
    .restart local v5    # "maxMax":I
    .restart local v6    # "minMax":I
    .restart local v7    # "screenHeight":I
    .restart local v8    # "screenWidth":I
    :cond_7
    const v9, 0x3f800347    # 1.0001f

    iput v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->renderAhead:F

    goto :goto_1

    .line 81
    :cond_8
    const v9, 0x3f800347    # 1.0001f

    iput v9, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->renderAhead:F

    goto :goto_1
.end method


# virtual methods
.method public getPageBitmap(Lcx/hell/android/lib/pagesview/Tile;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "tile"    # Lcx/hell/android/lib/pagesview/Tile;

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-virtual {v1, p1}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->get(Lcx/hell/android/lib/pagesview/Tile;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_0

    .line 475
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 4

    .prologue
    .line 484
    iget-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->pdf:Lcx/hell/android/lib/pdf/PDF;

    invoke-virtual {v1}, Lcx/hell/android/lib/pdf/PDF;->getPageCount()I

    move-result v0

    .line 485
    .local v0, "c":I
    if-gtz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to load pdf file: getPageCount returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_0
    return v0
.end method

.method public getPageSizes()[[I
    .locals 8

    .prologue
    .line 495
    invoke-virtual {p0}, Lcx/hell/android/pdfview/PDFPagesProvider;->getPageCount()I

    move-result v0

    .line 496
    .local v0, "cnt":I
    new-array v4, v0, [[I

    .line 497
    .local v4, "sizes":[[I
    new-instance v3, Lcx/hell/android/lib/pdf/PDF$Size;

    invoke-direct {v3}, Lcx/hell/android/lib/pdf/PDF$Size;-><init>()V

    .line 499
    .local v3, "size":Lcx/hell/android/lib/pdf/PDF$Size;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 508
    return-object v4

    .line 500
    :cond_0
    iget-object v5, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->pdf:Lcx/hell/android/lib/pdf/PDF;

    invoke-virtual {v5, v2, v3}, Lcx/hell/android/lib/pdf/PDF;->getPageSize(ILcx/hell/android/lib/pdf/PDF$Size;)I

    move-result v1

    .line 501
    .local v1, "err":I
    if-eqz v1, :cond_1

    .line 502
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to getPageSize("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",...), error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 504
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput-object v5, v4, v2

    .line 505
    aget-object v5, v4, v2

    const/4 v6, 0x0

    iget v7, v3, Lcx/hell/android/lib/pdf/PDF$Size;->width:I

    aput v7, v5, v6

    .line 506
    aget-object v5, v4, v2

    const/4 v6, 0x1

    iget v7, v3, Lcx/hell/android/lib/pdf/PDF$Size;->height:I

    aput v7, v5, v6

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getRenderAhead()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->renderAhead:F

    return v0
.end method

.method public setExtraCache(I)V
    .locals 0
    .param p1, "extraCache"    # I

    .prologue
    .line 39
    iput p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->extraCache:I

    .line 41
    invoke-direct {p0}, Lcx/hell/android/pdfview/PDFPagesProvider;->setMaxCacheSize()V

    .line 42
    return-void
.end method

.method public setOmitImages(Z)V
    .locals 1
    .param p1, "skipImages"    # Z

    .prologue
    .line 103
    iget-boolean v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->omitImages:Z

    if-ne v0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iput-boolean p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->omitImages:Z

    .line 107
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-virtual {v0}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->clearCache()V

    goto :goto_0
.end method

.method public setOnImageRenderedListener(Lcx/hell/android/lib/pagesview/OnImageRenderedListener;)V
    .locals 0
    .param p1, "l"    # Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    .prologue
    .line 461
    iput-object p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->onImageRendererListener:Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    .line 462
    return-void
.end method

.method public setRenderAhead(Z)V
    .locals 0
    .param p1, "doRenderAhead"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->doRenderAhead:Z

    .line 389
    invoke-direct {p0}, Lcx/hell/android/pdfview/PDFPagesProvider;->setMaxCacheSize()V

    .line 390
    return-void
.end method

.method public declared-synchronized setVisibleTiles(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcx/hell/android/lib/pagesview/Tile;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 518
    .local v0, "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v1, v0

    .end local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .local v1, "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 524
    if-eqz v1, :cond_1

    .line 525
    iget-object v3, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->rendererWorker:Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;

    iget-object v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-virtual {v3, v1, v4}, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->setTiles(Ljava/util/Collection;Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 527
    :cond_1
    monitor-exit p0

    return-void

    .line 518
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcx/hell/android/lib/pagesview/Tile;

    .line 519
    .local v2, "tile":Lcx/hell/android/lib/pagesview/Tile;
    iget-object v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-virtual {v4, v2}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->contains(Lcx/hell/android/lib/pagesview/Tile;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 520
    if-nez v1, :cond_3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 521
    .end local v1    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .restart local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    :goto_1
    :try_start_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    .end local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .restart local v1    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    goto :goto_0

    .line 517
    .end local v1    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .end local v2    # "tile":Lcx/hell/android/lib/pagesview/Tile;
    .restart local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .end local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .restart local v1    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .restart local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    goto :goto_2

    .end local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .restart local v1    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .restart local v2    # "tile":Lcx/hell/android/lib/pagesview/Tile;
    :cond_3
    move-object v0, v1

    .end local v1    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    .restart local v0    # "newtiles":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/Tile;>;"
    goto :goto_1
.end method
