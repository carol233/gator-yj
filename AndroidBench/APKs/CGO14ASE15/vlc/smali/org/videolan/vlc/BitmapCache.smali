.class public Lorg/videolan/vlc/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "VLC/BitmapCache"

.field private static mInstance:Lorg/videolan/vlc/BitmapCache;


# instance fields
.field private final mMemCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    .local v1, "context":Landroid/content/Context;
    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 54
    .local v2, "memClass":I
    const/high16 v3, 0x100000

    mul-int/2addr v3, v2

    div-int/lit8 v0, v3, 0x5

    .line 56
    .local v0, "cacheSize":I
    const-string v3, "VLC/BitmapCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LRUCache size sets to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v3, Lorg/videolan/vlc/BitmapCache$1;

    invoke-direct {v3, p0, v0}, Lorg/videolan/vlc/BitmapCache$1;-><init>(Lorg/videolan/vlc/BitmapCache;I)V

    iput-object v3, p0, Lorg/videolan/vlc/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    .line 66
    return-void
.end method

.method public static getInstance()Lorg/videolan/vlc/BitmapCache;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/videolan/vlc/BitmapCache;->mInstance:Lorg/videolan/vlc/BitmapCache;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lorg/videolan/vlc/BitmapCache;

    invoke-direct {v0}, Lorg/videolan/vlc/BitmapCache;-><init>()V

    sput-object v0, Lorg/videolan/vlc/BitmapCache;->mInstance:Lorg/videolan/vlc/BitmapCache;

    .line 40
    :cond_0
    sget-object v0, Lorg/videolan/vlc/BitmapCache;->mInstance:Lorg/videolan/vlc/BitmapCache;

    return-object v0
.end method


# virtual methods
.method public addBitmapToMemCache(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/videolan/vlc/BitmapCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method

.method public addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/videolan/vlc/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/videolan/vlc/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 95
    return-void
.end method

.method public getBitmapFromMemCache(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lorg/videolan/vlc/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 72
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lorg/videolan/vlc/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    .line 77
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method
