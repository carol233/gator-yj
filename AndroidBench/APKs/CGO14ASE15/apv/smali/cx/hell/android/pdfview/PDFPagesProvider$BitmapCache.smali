.class Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;
.super Ljava/lang/Object;
.source "PDFPagesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcx/hell/android/pdfview/PDFPagesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            "Lcx/hell/android/pdfview/BitmapCacheValue;",
            ">;"
        }
    .end annotation
.end field

.field private hits:J

.field private maxCacheSizeBytes:I

.field private misses:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcx/hell/android/pdfview/PDFPagesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/high16 v0, 0x400000

    iput v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->maxCacheSizeBytes:I

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    .line 142
    iput-wide v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    .line 143
    iput-wide v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->misses:J

    .line 144
    return-void
.end method

.method private static getBitmapSizeInCache(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    .line 202
    .local v0, "numPixels":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 203
    mul-int/lit8 v0, v0, 0x2

    .line 208
    .end local v0    # "numPixels":I
    :cond_0
    :goto_0
    return v0

    .line 205
    .restart local v0    # "numPixels":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    .line 208
    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method private declared-synchronized getCurrentCacheSize()I
    .locals 7

    .prologue
    .line 215
    monitor-enter p0

    const/4 v3, 0x0

    .line 216
    .local v3, "size":I
    :try_start_0
    iget-object v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 217
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcx/hell/android/pdfview/BitmapCacheValue;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    const-string v4, "cx.hell.android.pdfview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cache size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return v3

    .line 218
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx/hell/android/pdfview/BitmapCacheValue;

    .line 219
    .local v0, "bcv":Lcx/hell/android/pdfview/BitmapCacheValue;
    iget-object v1, v0, Lcx/hell/android/pdfview/BitmapCacheValue;->bitmap:Landroid/graphics/Bitmap;

    .line 220
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->getBitmapSizeInCache(Landroid/graphics/Bitmap;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 215
    .end local v0    # "bcv":Lcx/hell/android/pdfview/BitmapCacheValue;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcx/hell/android/pdfview/BitmapCacheValue;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeOldest()V
    .locals 8

    .prologue
    .line 238
    iget-object v6, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcx/hell/android/lib/pagesview/Tile;>;"
    const-wide/16 v2, 0x0

    .line 240
    .local v2, "minmillis":J
    const/4 v4, 0x0

    .line 241
    .local v4, "oldest":Lcx/hell/android/lib/pagesview/Tile;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 254
    if-nez v4, :cond_3

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "couldnt find oldest"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 242
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx/hell/android/lib/pagesview/Tile;

    .line 243
    .local v1, "k":Lcx/hell/android/lib/pagesview/Tile;
    iget-object v6, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx/hell/android/pdfview/BitmapCacheValue;

    .line 244
    .local v5, "v":Lcx/hell/android/pdfview/BitmapCacheValue;
    if-nez v4, :cond_2

    .line 245
    move-object v4, v1

    .line 246
    iget-wide v2, v5, Lcx/hell/android/pdfview/BitmapCacheValue;->millisAccessed:J

    goto :goto_0

    .line 248
    :cond_2
    iget-wide v6, v5, Lcx/hell/android/pdfview/BitmapCacheValue;->millisAccessed:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 249
    iget-wide v2, v5, Lcx/hell/android/pdfview/BitmapCacheValue;->millisAccessed:J

    .line 250
    move-object v4, v1

    goto :goto_0

    .line 255
    .end local v1    # "k":Lcx/hell/android/lib/pagesview/Tile;
    .end local v5    # "v":Lcx/hell/android/pdfview/BitmapCacheValue;
    :cond_3
    iget-object v6, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx/hell/android/pdfview/BitmapCacheValue;

    .line 256
    .restart local v5    # "v":Lcx/hell/android/pdfview/BitmapCacheValue;
    iget-object v6, v5, Lcx/hell/android/pdfview/BitmapCacheValue;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    iget-object v6, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method private declared-synchronized willExceedCacheSize(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->getCurrentCacheSize()I

    move-result v0

    .line 231
    invoke-static {p1}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->getBitmapSizeInCache(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 230
    add-int/2addr v0, v1

    .line 231
    iget v1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->maxCacheSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    .line 230
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 4

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcx/hell/android/lib/pagesview/Tile;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 269
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx/hell/android/lib/pagesview/Tile;

    .line 265
    .local v1, "k":Lcx/hell/android/lib/pagesview/Tile;
    const-string v2, "Deleting"

    invoke-virtual {v1}, Lcx/hell/android/lib/pagesview/Tile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcx/hell/android/pdfview/BitmapCacheValue;

    iget-object v2, v2, Lcx/hell/android/pdfview/BitmapCacheValue;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcx/hell/android/lib/pagesview/Tile;>;"
    .end local v1    # "k":Lcx/hell/android/lib/pagesview/Tile;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized contains(Lcx/hell/android/lib/pagesview/Tile;)Z
    .locals 1
    .param p1, "tile"    # Lcx/hell/android/lib/pagesview/Tile;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method get(Lcx/hell/android/lib/pagesview/Tile;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "k"    # Lcx/hell/android/lib/pagesview/Tile;

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    .line 156
    iget-object v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx/hell/android/pdfview/BitmapCacheValue;

    .line 157
    .local v1, "v":Lcx/hell/android/pdfview/BitmapCacheValue;
    const/4 v0, 0x0

    .line 158
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 160
    iget-object v0, v1, Lcx/hell/android/pdfview/BitmapCacheValue;->bitmap:Landroid/graphics/Bitmap;

    .line 161
    sget-boolean v2, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 162
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcx/hell/android/pdfview/BitmapCacheValue;->millisAccessed:J

    .line 163
    iget-wide v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    .line 168
    :goto_0
    iget-wide v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    iget-wide v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->misses:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->misses:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 169
    :cond_1
    const-string v2, "cx.hell.android.pdfview.pagecache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", misses: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->misses:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hit ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    long-to-float v4, v4

    iget-wide v5, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->hits:J

    iget-wide v7, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->misses:J

    add-long/2addr v5, v7

    long-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    return-object v0

    .line 166
    :cond_3
    iget-wide v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->misses:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->misses:J

    goto :goto_0
.end method

.method declared-synchronized put(Lcx/hell/android/lib/pagesview/Tile;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "tile"    # Lcx/hell/android/lib/pagesview/Tile;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 181
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0, p2}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->willExceedCacheSize(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    iget-object v6, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->bitmaps:Ljava/util/Map;

    new-instance v0, Lcx/hell/android/pdfview/BitmapCacheValue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcx/hell/android/pdfview/BitmapCacheValue;-><init>(Landroid/graphics/Bitmap;JJ)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    const-string v0, "cx.hell.android.pdfview"

    const-string v1, "Removing oldest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->removeOldest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 0
    .param p1, "maxCacheSizeBytes"    # I

    .prologue
    .line 147
    iput p1, p0, Lcx/hell/android/pdfview/PDFPagesProvider$BitmapCache;->maxCacheSizeBytes:I

    .line 148
    return-void
.end method
