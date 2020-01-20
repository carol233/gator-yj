.class Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;
.super Ljava/lang/Object;
.source "PDFPagesProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcx/hell/android/pdfview/PDFPagesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RendererWorker"
.end annotation


# static fields
.field private static workerThreadId:I


# instance fields
.field private bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

.field private isFailed:Z

.field private pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

.field private tiles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    sput v0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->workerThreadId:I

    .line 272
    return-void
.end method

.method constructor <init>(Lcx/hell/android/pdfview/PDFPagesProvider;)V
    .locals 2
    .param p1, "pdfPagesProvider"    # Lcx/hell/android/pdfview/PDFPagesProvider;

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->isFailed:Z

    .line 293
    iput-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->workerThread:Ljava/lang/Thread;

    .line 300
    iput-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->tiles:Ljava/util/Collection;

    .line 301
    iput-object p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    .line 302
    return-void
.end method


# virtual methods
.method declared-synchronized popTiles()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->tiles:Ljava/util/Collection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->tiles:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->workerThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return-object v1

    .line 337
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->tiles:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx/hell/android/lib/pagesview/Tile;

    .line 338
    .local v0, "tile":Lcx/hell/android/lib/pagesview/Tile;
    iget-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->tiles:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 333
    .end local v0    # "tile":Lcx/hell/android/lib/pagesview/Tile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 349
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->isFailed:Z

    if-eqz v3, :cond_2

    .line 350
    const-string v3, "cx.hell.android.pdfview"

    const-string v4, "RendererWorker is failed, exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    return-void

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->popTiles()Ljava/util/Collection;

    move-result-object v2

    .line 354
    .local v2, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcx/hell/android/lib/pagesview/Tile;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :try_start_0
    iget-object v3, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    iget-object v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    invoke-static {v3, v2, v4}, Lcx/hell/android/pdfview/PDFPagesProvider;->access$0(Lcx/hell/android/pdfview/PDFPagesProvider;Ljava/util/Collection;Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;)Ljava/util/Map;

    move-result-object v1

    .line 357
    .local v1, "renderedTiles":Ljava/util/Map;, "Ljava/util/Map<Lcx/hell/android/lib/pagesview/Tile;Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 358
    iget-object v3, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    invoke-static {v3, v1}, Lcx/hell/android/pdfview/PDFPagesProvider;->access$1(Lcx/hell/android/pdfview/PDFPagesProvider;Ljava/util/Map;)V
    :try_end_0
    .catch Lcx/hell/android/lib/pagesview/RenderingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    .end local v1    # "renderedTiles":Ljava/util/Map;, "Ljava/util/Map<Lcx/hell/android/lib/pagesview/Tile;Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Lcx/hell/android/lib/pagesview/RenderingException;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->isFailed:Z

    .line 361
    iget-object v3, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    invoke-static {v3, v0}, Lcx/hell/android/pdfview/PDFPagesProvider;->access$2(Lcx/hell/android/pdfview/PDFPagesProvider;Lcx/hell/android/lib/pagesview/RenderingException;)V

    goto :goto_0
.end method

.method declared-synchronized setTiles(Ljava/util/Collection;Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;)V
    .locals 4
    .param p2, "bitmapCache"    # Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            ">;",
            "Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcx/hell/android/lib/pagesview/Tile;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->tiles:Ljava/util/Collection;

    .line 311
    iput-object p2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->bitmapCache:Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;

    .line 313
    iget-object v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->workerThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 315
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RendererWorkerThread#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->workerThreadId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->workerThreadId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 317
    iput-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider$RendererWorker;->workerThread:Ljava/lang/Thread;

    .line 318
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 319
    const-string v1, "cx.hell.android.pdfview"

    const-string v2, "started new worker thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
